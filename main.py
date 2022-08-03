import json

system_map = {
    "NDC": "http://hl7.org/fhir/sid/ndc",
    "SNOMED": "http://snomed.info/sct",
    "CVX": "http://hl7.org/fhir/sid/cvx",
    "CPT4": " http://www.ama-assn.org/go/cpt",
    "RxNorm": "http://www.nlm.nih.gov/research/umls/rxnorm",
    "OPCS4": "https://fhir.nhs.uk/Id/opcs-4",
    "ICD10CM": "http://hl7.org/fhir/ValueSet/icd-10",
    "ICD10CN": "http://hl7.org/fhir/ValueSet/icd-10",
    "ICD10": "http://hl7.org/fhir/ValueSet/icd-10",
    "ICD10PCS": "http://www.cms.gov/Medicare/Coding/ICD10", #See https://terminology.hl7.org/1.0.0//CodeSystem-icd10PCS.html
    "KCD7": "http://hl7.org/fhir/ValueSet/icd-10", #Korean ICD-10. Leaving as icd-10 for now
    "LOINC":  "http://loinc.org"
}

atlas_domain_id_to_fhir_resource = {
    "Condition": "Condition",
    "Drug": "MedicationStatement",
    "Measurement": "Observation",
    "Procedure": "Procedure"
}

atlas_criteria_reference_to_fhir_resource = {
    "ConditionOccurrence": "Condition",
    "DrugExposure": "MedicationStatement",
    "Measurement": "Observation",
    "ProcedureOccurrence": "Procedure"
}

codesystem_template = "codesystem \"{}\": '{}'"
codesystem_template_between = "\n"
concept_template_begin = "define \"{}\": Concept {{\n"
code_template = " Code '{}' from \"{}\" display '{}'"
code_template_between = ",\n"
concept_template_end = "\n}\n"

primary_criteria_definition_template = "\ncontext Patient\ndefine \"PrimaryCriteria\": [{}: \"{}\"]\n"
most_recent_primary_criteria_template = "\ndefine \"MostRecentPrimaryCriteria\": MostRecent{}DT(\"PrimaryCriteria\")"
additional_criteria_definition_template = "\ndefine \"AdditionalCriteria{}\": [{}: \"{}\"]"
additional_criteria_interval_template = "\ndefine \"AdditionalCriteria{}Interval\" [\"MostRecentPrimaryCriteria\" {} {} days, \"MostRecentPrimaryCriteria\" {} {} days]"
additional_criteria_in_period_template = "\ndefine \"AdditionalCriteria{}InPeriod\": \"AdditionalCriteria{}\" additionalCriteria\n  where (additionalCriteria.onset as FHIR.dateTime).value in \"AdditionalCriteria{}Interval\"\n  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in \"AdditionalCriteria{}Interval\""
in_population_header_template = "\ndefine \"InPopulation\":\n"
primary_criteria_inpop_clause = "  ({})"
additional_criteria_inpop_clause = "  ({})"

exists_clause = "exists(\"{}\")"
not_exists_clause = "not exists((\"{}\")"

footer_template = """
define function MostRecentMedicationStatementDT(MedicationStatementList List<FHIR.MedicationStatement>):
  Last(MedicationStatementList MS
  return (MS.effective as FHIR.dateTime).value
  sort asc)
  
define function MostRecentImmunizationDT(ImmunizationList List<FHIR.Immunization>):
  Last(ImmunizationList I
  return (I.occurrence as FHIR.dateTime).value
  sort asc)

define function MostRecentProcedureDT(ProcedureList List<FHIR.Procedure>):
  Last(ProcedureList P
  return (P.performed as FHIR.dateTime).value
  sort asc)"""

def atlasToPythonObject(json_file_location):
    with open(json_file_location, 'r') as f:
        atlas_json = json.load(f)
    concepts, codesystems = atlasToConceptDefinitions(atlas_json)
    primary_criteria = atlasToPrimaryCriteriaDefinition(atlas_json, concepts)
    additional_criteria = atlasToAdditionalCriteriaDefinition(atlas_json, concepts)
    return concepts, codesystems, primary_criteria, additional_criteria

def atlasToConceptDefinitions(atlas_json):
    concepts = {}
    codesystems = set()
    for concept_set in atlas_json['ConceptSets']:
        python_concepts = []
        domain_count = {}
        for concept_def in concept_set['expression']['items']:
            if concept_def['concept'] is not None:
                concept = concept_def['concept']
                domain = concept['DOMAIN_ID']
                python_concept = {}
                python_concept['code'] = concept['CONCEPT_CODE']
                python_concept['system'] = concept['VOCABULARY_ID']
                python_concept['display'] = concept['CONCEPT_NAME']
                codesystems.add(concept['VOCABULARY_ID'])
                try:
                    domain_count[domain] += 1
                except KeyError:
                    domain_count[domain] = 1
                python_concepts.append(python_concept)
        most_frequent_domain_id = max(domain_count, key=domain_count.get)
        fhir_resource_to_retrieve = atlas_domain_id_to_fhir_resource[most_frequent_domain_id]
        concepts[concept_set['name']] = {"id": concept_set['id'], "concept_set": python_concepts, "fhir_resource": fhir_resource_to_retrieve}
    return concepts, codesystems

def atlasToPrimaryCriteriaDefinition(atlas_json, concepts):
    primary_criteria = {}
    pc_json = atlas_json['PrimaryCriteria']
    first_criteria = pc_json['CriteriaList'][0] #Will work with multiples in the future
    for criteria_reference in first_criteria.keys():
        fhir_resource = atlas_criteria_reference_to_fhir_resource[criteria_reference]
        concept_id = first_criteria[criteria_reference]["CodesetId"]
        concept_name = helperGetConceptNameFromId(concept_id, concepts)
        primary_criteria['concept_name'] = concept_name
        primary_criteria['fhir_resource'] = fhir_resource
    return primary_criteria

def atlasToAdditionalCriteriaDefinition(atlas_json, concepts):
    additional_criteria_group_list_object = []
    ac_json = atlas_json['AdditionalCriteria']

    while ac_json is not None:
        if isinstance(ac_json, dict):
            additional_criteria_group_object = createAdditionalCriteriaGroupObject(ac_json, concepts)
            additional_criteria_group_list_object.append(additional_criteria_group_object)
        else:
            for inner_ac_json in ac_json: #Bad hack around for the list handling
                additional_criteria_group_object = createAdditionalCriteriaGroupObject(inner_ac_json, concepts)
                additional_criteria_group_list_object.append(additional_criteria_group_object)
        if isinstance(ac_json, list) or len(ac_json['Groups']) == 0: #Recursive definition of groups overtime not really handling well
            ac_json = None
        else:
            ac_json = ac_json['Groups']
    return additional_criteria_group_list_object

def createAdditionalCriteriaGroupObject(ac_json, concepts):
    additional_criteria_group_object = {}
    additional_criteria_group_object['group_type'] = ac_json['Type']
    additional_criteria_list = []
    for criteria_context_json in ac_json['CriteriaList']:
        additional_criteria_object = {}
        for criteria_key in criteria_context_json['Criteria'].keys():
            fhir_resource = atlas_criteria_reference_to_fhir_resource[criteria_key]
            concept_id = criteria_context_json['Criteria'][criteria_key]['CodesetId']
        concept_name = helperGetConceptNameFromId(concept_id, concepts)
        additional_criteria_object['concept_name'] = concept_name
        additional_criteria_object['fhir_resource'] = fhir_resource
        try:
            start_days = criteria_context_json['StartWindow']['Start']["Days"] * \
                         criteria_context_json['StartWindow']['Start']["Coeff"]
        except KeyError:
            start_days = 0
        try:
            end_days = criteria_context_json['StartWindow']['End']["Days"] * \
                   criteria_context_json['StartWindow']['End']["Coeff"]
        except KeyError:
            end_days = 0
        additional_criteria_object['start_days'] = start_days
        additional_criteria_object['end_days'] = end_days
        exist_or_absence = criteria_context_json["Occurrence"]["Count"] > 0  # True means exist, false means not exists
        additional_criteria_object['exist_or_absence'] = exist_or_absence
        additional_criteria_list.append(additional_criteria_object)
    additional_criteria_group_object['entries'] = additional_criteria_list
    return additional_criteria_group_object

def helperGetConceptNameFromId(concept_id, concepts):
    for concept_possible_name in concepts.keys():
        concept_context = concepts[concept_possible_name]
        if concept_context['id'] == concept_id:
            codeset_name = concept_possible_name
            return codeset_name
    return None

def pythonObjectToCQLString(conceptset_dict,codesystem_set,primary_criteria, additional_criteria):
    string_output = ""
    codesystem_lines = []
    #Codesystem and conceptset
    for codesystem in codesystem_set:
        codesystem_line = codesystem_template.format(codesystem, system_map[codesystem])
        codesystem_lines.append(codesystem_line)
    string_output += codesystem_template_between.join(codesystem_lines)
    string_output += '\n'
    for name in conceptset_dict.keys():
        conceptset_string = ""
        definition_string = concept_template_begin.format(name)
        conceptset_string += definition_string
        code_lines = []
        concept_context = conceptset_dict[name]
        concept_set = concept_context['concept_set']
        for concept in concept_set:
            code_string = code_template.format(concept['code'], concept['system'], cleanDisplayName(concept['display']))
            code_lines.append(code_string)
        codeset_string = code_template_between.join(code_lines)
        conceptset_string += codeset_string
        conceptset_string += concept_template_end
        string_output += conceptset_string
    #Primary Criteria
    primary_criteria_string = primary_criteria_definition_template.format(primary_criteria['fhir_resource'], primary_criteria['concept_name'])
    string_output += primary_criteria_string
    most_recent_primary_criteria_string = most_recent_primary_criteria_template.format(primary_criteria['fhir_resource'])
    string_output += most_recent_primary_criteria_string
    #Additional Criteria
    ac_num = 0
    for ac_group in additional_criteria:
        for ac in ac_group['entries']:
            ac_name = "AdditionalCriteria{}InPeriod".format(ac_num)
            ac['name'] = ac_name
            ac_definition_string = additional_criteria_definition_template.format(ac_num, ac['fhir_resource'], ac['concept_name'])
            string_output += ac_definition_string
            left_hand_plus_minus = '+' if ac['start_days'] >= 0 else '-'
            right_hand_plus_minus = '+' if ac['end_days'] >= 0 else '-'
            ac_interval_string = additional_criteria_interval_template.format(
                ac_num, left_hand_plus_minus,abs(ac['start_days']), right_hand_plus_minus, abs(ac['end_days']))
            string_output += ac_interval_string
            ac_in_period_string = additional_criteria_in_period_template.format(
                ac_num,ac_num,ac_num,ac_num
            )
            string_output += ac_in_period_string
            ac_num += 1
    #In Population definition based on ac_groups
    string_output += in_population_header_template
    final_groups_criteria_list = []
    primary_criteria_singleton_inpop = exists_clause.format("MostRecentPrimaryCriteria")
    final_groups_criteria_list.append(" (" + primary_criteria_singleton_inpop + ")")
    for ac_group in additional_criteria:
        ac_inner_group_criteria_list = []
        for ac in ac_group['entries']:
            if ac['exist_or_absence']:
                ac_clause = exists_clause.format(ac['name'])
            else:
                ac_clause = not_exists_clause.format(ac['name'])
            ac_inner_group_criteria_list.append(ac_clause)
        if ac_group['group_type'] == 'ALL':
            ac_group_string = "(" + " and ".join(ac_inner_group_criteria_list) + ")"
        elif ac_group['group_type'] == 'ANY':
            ac_group_string = "(" + " or ".join(ac_inner_group_criteria_list)  + ")"
        final_groups_criteria_list.append(ac_group_string)
    final_inpop_definition = " and\n ".join(final_groups_criteria_list)
    string_output += final_inpop_definition


    #Final Footer Functions
    string_output += footer_template
    return string_output

def cleanDisplayName(input_string):
    return input_string.replace("'","")

def main():
    concepts, codesystems, primary_criteria, additional_criteria = atlasToPythonObject("./ExampleAtlasDefinition.json")
    print("Concepts: {}".format(concepts))
    print("Codesystems: {}".format(codesystems))
    print("Primary criteria: {}".format(primary_criteria))
    print("Additional criteria: {}".format(additional_criteria))
    output_string = pythonObjectToCQLString(concepts, codesystems,primary_criteria, additional_criteria)
    print("Output String: {}".format(output_string))
    with open("./TestExampleCQLOutput.cql", 'w') as f:
        f.write(output_string)

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
