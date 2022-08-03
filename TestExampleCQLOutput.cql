codesystem "CVX": 'http://hl7.org/fhir/sid/cvx'
codesystem "OPCS4": 'https://fhir.nhs.uk/Id/opcs-4'
codesystem "SNOMED": 'http://snomed.info/sct'
codesystem "ICD10CM": 'http://hl7.org/fhir/ValueSet/icd-10'
codesystem "NDC": 'http://hl7.org/fhir/sid/ndc'
codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'
codesystem "ICD10PCS": 'http://www.cms.gov/Medicare/Coding/ICD10'
codesystem "ICD10CN": 'http://hl7.org/fhir/ValueSet/icd-10'
codesystem "ICD10": 'http://hl7.org/fhir/ValueSet/icd-10'
codesystem "LOINC": 'http://loinc.org'
codesystem "CPT4": ' http://www.ama-assn.org/go/cpt'
codesystem "KCD7": 'http://hl7.org/fhir/ValueSet/icd-10'
define "Covid Vaccine Drug Exposure": Concept {
 Code '59676058015' from "NDC" display 'ad26.cov2.s 50000000000[PFU]/.5mL INTRAMUSCULAR SUSPENSION',
 Code '00310122210' from "NDC" display 'AZD1222 Astrazeneca COVID-19 vaccine, DNA, spike protein, chimpanzee adenovirus Oxford 1 (ChAdOx1) vector, preservative free, 5x1010 viral particles/0.5mL dosage, for intramuscular use',
 Code '59676058005' from "NDC" display 'Janssen COVID-19 vaccine, DNA, spike protein, adenovirus type 26 (Ad26) vector, preservative free, 5x1010 viral particles/0.5mL dosage, for intramuscular use',
 Code '80777027399' from "NDC" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-1273 0.2 MG/ML Injectable Suspension',
 Code '2470234' from "RxNorm" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-1273 0.2 MG/ML Injectable Suspension',
 Code '80777027310' from "NDC" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-1273 0.2 MG/ML Injectable Suspension',
 Code '59267100003' from "NDC" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-BNT162b2 0.1 MG/ML Injectable Suspension',
 Code '2468235' from "RxNorm" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-BNT162b2 0.1 MG/ML Injectable Suspension',
 Code '59267100001' from "NDC" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-BNT162b2 0.1 MG/ML Injectable Suspension',
 Code '59267100002' from "NDC" display 'SARS-CoV-2 (COVID-19) vaccine, mRNA-BNT162b2 0.1 MG/ML Injectable Suspension',
 Code '207' from "CVX" display 'SARS-COV-2 (COVID-19) vaccine, mRNA, spike protein, LNP, preservative free, 100 mcg/0.5mL dose',
 Code '208' from "CVX" display 'SARS-COV-2 (COVID-19) vaccine, mRNA, spike protein, LNP, preservative free, 30 mcg/0.3mL dose',
 Code '213' from "CVX" display 'SARS-COV-2 (COVID-19) vaccine, UNSPECIFIED',
 Code '212' from "CVX" display 'SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL',
 Code '210' from "CVX" display 'SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-ChAdOx1, preservative free, 0.5 mL'
}
define "Covid Vaccine Procedures": Concept {
 Code '91302' from "CPT4" display 'AstraZeneca Covid-19 Vaccine',
 Code '0021A' from "CPT4" display 'AstraZeneca Covid-19 Vaccine Administration - First Dose',
 Code '0022A' from "CPT4" display 'AstraZeneca Covid-19 Vaccine Administration - Second Dose',
 Code '91303' from "CPT4" display 'Janssen Covid-19 Vaccine',
 Code '0031A' from "CPT4" display 'Janssen Covid-19 Vaccine Administration',
 Code '91301' from "CPT4" display 'Moderna Covid-19 Vaccine',
 Code '0011A' from "CPT4" display 'Moderna Covid-19 Vaccine Administration - First Dose',
 Code '0012A' from "CPT4" display 'Moderna Covid-19 Vaccine Administration - Second Dose',
 Code '91300' from "CPT4" display 'Pfizer-Biontech Covid-19 Vaccine',
 Code '0001A' from "CPT4" display 'Pfizer-Biontech Covid-19 Vaccine Administration - First Dose',
 Code '0002A' from "CPT4" display 'Pfizer-Biontech Covid-19 Vaccine Administration - Second Dose'
}
define "Covid Dx": Concept {
 Code 'U07.1' from "OPCS4" display 'Computed tomography of chest',
 Code '840539006' from "SNOMED" display 'COVID-19',
 Code 'U07.1' from "ICD10CM" display 'Emergency use of U07.1 | COVID-19',
 Code 'U07.1' from "ICD10CN" display 'Emergency use of U07.1 | COVID-19, virus identified',
 Code 'U07.1' from "ICD10" display 'Emergency use of U07.1 | COVID-19, virus identified',
 Code 'U07.1' from "KCD7" display 'Emergency use of U07.1 | Disease caused by severe acute respiratory syndrome coronavirus 2',
 Code 'B97.29' from "ICD10CM" display 'Other coronavirus as the cause of diseases classified elsewhere'
}
define "Covid Labs": Concept {
 Code '95423-0' from "LOINC" display 'Influenza virus A and B and SARS-CoV-2 (COVID-19) identified in Respiratory specimen by NAA with probe detection',
 Code '41458-1' from "LOINC" display 'SARS coronavirus RNA [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94760-6' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Nasopharynx by NAA with probe detection',
 Code '95409-9' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Nose by NAA with probe detection',
 Code '94533-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '95425-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Saliva (oral fluid) by NAA with probe detection',
 Code '94316-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94559-2' from "LOINC" display 'SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94534-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94745-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Respiratory specimen by NAA with probe detection',
 Code '94746-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Unspecified specimen by NAA with probe detection',
 Code '94819-0' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Log #/volume] (viral load) in Unspecified specimen by NAA with probe detection',
 Code '94565-9' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with non-probe detection',
 Code '94759-8' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection',
 Code '95406-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nose by NAA with probe detection',
 Code '94500-6' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94845-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Saliva (oral fluid) by NAA with probe detection',
 Code '94660-8' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Serum or Plasma by NAA with probe detection',
 Code '94309-2' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94640-0' from "LOINC" display 'SARS-CoV-2 (COVID-19) S gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94758-0' from "LOINC" display 'SARS-related coronavirus E gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94502-2' from "LOINC" display 'SARS-related coronavirus RNA [Presence] in Respiratory specimen by NAA with probe detection',
 Code '95423-0' from "LOINC" display 'Influenza virus A and B and SARS-CoV-2 (COVID-19) identified in Respiratory specimen by NAA with probe detection',
 Code '41458-1' from "LOINC" display 'SARS coronavirus RNA [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94558-4' from "LOINC" display 'SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay',
 Code '94760-6' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Nasopharynx by NAA with probe detection',
 Code '95409-9' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Nose by NAA with probe detection',
 Code '94533-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '95425-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Saliva (oral fluid) by NAA with probe detection',
 Code '94316-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94559-2' from "LOINC" display 'SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94745-7' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Respiratory specimen by NAA with probe detection',
 Code '94746-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Unspecified specimen by NAA with probe detection',
 Code '94819-0' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Log #/volume] (viral load) in Unspecified specimen by NAA with probe detection',
 Code '94565-9' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with non-probe detection',
 Code '94759-8' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection',
 Code '95406-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Nose by NAA with probe detection',
 Code '94500-6' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94845-5' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Saliva (oral fluid) by NAA with probe detection',
 Code '94660-8' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Serum or Plasma by NAA with probe detection',
 Code '94309-2' from "LOINC" display 'SARS-CoV-2 (COVID-19) RNA [Presence] in Unspecified specimen by NAA with probe detection',
 Code '94640-0' from "LOINC" display 'SARS-CoV-2 (COVID-19) S gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '95209-3' from "LOINC" display 'SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay',
 Code '94758-0' from "LOINC" display 'SARS-related coronavirus E gene [Presence] in Respiratory specimen by NAA with probe detection',
 Code '94502-2' from "LOINC" display 'SARS-related coronavirus RNA [Presence] in Respiratory specimen by NAA with probe detection'
}
define "Covid Detected": Concept {
 Code '1240581000000104' from "SNOMED" display 'Severe acute respiratory syndrome coronavirus 2 detected'
}
define "Covid Procedures per List": Concept {
 Code '00528' from "CPT4" display 'Anesthesia for closed chest procedures; mediastinoscopy and diagnostic thoracoscopy not utilizing 1 lung ventilation',
 Code '00529' from "CPT4" display 'Anesthesia for closed chest procedures; mediastinoscopy and diagnostic thoracoscopy utilizing 1 lung ventilation',
 Code '00625' from "CPT4" display 'Anesthesia for procedures on the thoracic spine and cord, via an anterior transthoracic approach; not utilizing 1 lung ventilation',
 Code '00626' from "CPT4" display 'Anesthesia for procedures on the thoracic spine and cord, via an anterior transthoracic approach; utilizing 1 lung ventilation',
 Code '00541' from "CPT4" display 'Anesthesia for thoracotomy procedures involving lungs, pleura, diaphragm, and mediastinum (including surgical thoracoscopy); utilizing 1 lung ventilation',
 Code '5A0945Z' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours',
 Code '5A09459' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours, Continuous Negative Airway Pressure',
 Code '5A09457' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours, Continuous Positive Airway Pressure',
 Code '5A0945A' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours, High Nasal Flow/Velocity',
 Code '5A0945B' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours, Intermittent Negative Airway Pressure',
 Code '5A09458' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, 24-96 Consecutive Hours, Intermittent Positive Airway Pressure',
 Code '5A0955Z' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours',
 Code '5A09559' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours, Continuous Negative Airway Pressure',
 Code '5A09557' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours, Continuous Positive Airway Pressure',
 Code '5A0955A' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours, High Nasal Flow/Velocity',
 Code '5A0955B' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours, Intermittent Negative Airway Pressure',
 Code '5A09558' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Greater than 96 Consecutive Hours, Intermittent Positive Airway Pressure',
 Code '5A0935Z' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours',
 Code '5A09359' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours, Continuous Negative Airway Pressure',
 Code '5A09357' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours, Continuous Positive Airway Pressure',
 Code '5A0935A' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours, High Nasal Flow/Velocity',
 Code '5A0935B' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours, Intermittent Negative Airway Pressure',
 Code '5A09358' from "ICD10PCS" display 'Assistance with Respiratory Ventilation, Less than 24 Consecutive Hours, Intermittent Positive Airway Pressure',
 Code '94621' from "CPT4" display 'Cardiopulmonary exercise testing, including measurements of minute ventilation, CO2 production, O2 uptake, and electrocardiographic recordings',
 Code '94662' from "CPT4" display 'Continuous negative pressure ventilation (CNP), initiation and management',
 Code '94660' from "CPT4" display 'Continuous positive airway pressure ventilation (CPAP), initiation and management',
 Code '99465' from "CPT4" display 'Delivery/birthing room resuscitation, provision of positive pressure ventilation and/or chest compressions in the presence of acute inadequate ventilation and/or cardiac output',
 Code '89105' from "CPT4" display 'Duodenal intubation and aspiration; collection of multiple fractional specimens with pancreatic or gallbladder stimulation, single or double lumen tube (Deprecated)',
 Code '1020564' from "CPT4" display 'Duodenal intubation and aspiration, diagnostic, includes image guidance',
 Code '43757' from "CPT4" display 'Duodenal intubation and aspiration, diagnostic, includes image guidance; collection of multiple fractional specimens with pancreatic or gallbladder stimulation, single or double lumen tube, includes drug administration',
 Code '43756' from "CPT4" display 'Duodenal intubation and aspiration, diagnostic, includes image guidance; single specimen (eg, bile study for crystals or afferent loop culture)',
 Code '89100' from "CPT4" display 'Duodenal intubation and aspiration; single specimen (eg, simple bile study or afferent loop culture) plus appropriate test procedure (Deprecated)',
 Code '91000' from "CPT4" display 'Esophageal intubation and collection of washings for cytology, including preparation of specimens (separate procedure) (Deprecated)',
 Code '5A0945' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Assistance @ Respiratory @ 24-96 Consecutive Hours @ Ventilation',
 Code '5A0955' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Assistance @ Respiratory @ Greater than 96 Consecutive Hours @ Ventilation',
 Code '5A0935' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Assistance @ Respiratory @ Less than 24 Consecutive Hours @ Ventilation',
 Code '5A1945' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Performance @ Respiratory @ 24-96 Consecutive Hours @ Ventilation',
 Code '5A1955' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Performance @ Respiratory @ Greater than 96 Consecutive Hours @ Ventilation',
 Code '5A1935' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Performance @ Respiratory @ Less than 24 Consecutive Hours @ Ventilation',
 Code '5A1905' from "ICD10PCS" display 'Extracorporeal or Systemic Assistance and Performance @ Physiological Systems @ Performance @ Respiratory @ Single @ Ventilation',
 Code '94727' from "CPT4" display 'Gas dilution or washout for determination of lung volumes and, when performed, distribution of ventilation and closing volumes',
 Code '1020538' from "CPT4" display 'Gastric intubation and aspiration, diagnostic',
 Code '43755' from "CPT4" display 'Gastric intubation and aspiration, diagnostic; collection of multiple fractional specimens with gastric stimulation, single or double lumen tube (gastric secretory study) (eg, histamine, insulin, pentagastrin, calcium, secretin), includes drug administ...',
 Code '89132' from "CPT4" display 'Gastric intubation and aspiration, diagnostic, each specimen, for chemical analyses or cytopathology; after stimulation (Deprecated)',
 Code '89130' from "CPT4" display 'Gastric intubation and aspiration, diagnostic, each specimen, for chemical analyses or cytopathology (Deprecated)',
 Code '43754' from "CPT4" display 'Gastric intubation and aspiration, diagnostic; single specimen (eg, acid analysis)',
 Code '91105' from "CPT4" display 'Gastric intubation, and aspiration or lavage for treatment (eg, for ingested poisons) (Deprecated)',
 Code '43753' from "CPT4" display 'Gastric intubation and aspiration(s) therapeutic, necessitating physicians skill (eg, for gastrointestinal hemorrhage), including lavage if performed',
 Code '89135' from "CPT4" display 'Gastric intubation, aspiration, and fractional collections (eg, gastric secretory study); one hour (Deprecated)',
 Code '89141' from "CPT4" display 'Gastric intubation, aspiration, and fractional collections (eg, gastric secretory study); three hours, including gastric stimulation (Deprecated)',
 Code '89136' from "CPT4" display 'Gastric intubation, aspiration, and fractional collections (eg, gastric secretory study); two hours (Deprecated)',
 Code '89140' from "CPT4" display 'Gastric intubation, aspiration, and fractional collections (eg, gastric secretory study); two hours including gastric stimulation (eg, histalog, pentagastrin) (Deprecated)',
 Code '91055' from "CPT4" display 'Gastric intubation, washings, and preparing slides for cytology (separate procedure) (Deprecated)',
 Code '99504' from "CPT4" display 'Home visit for mechanical ventilation care',
 Code '31500' from "CPT4" display 'Intubation, endotracheal, emergency procedure',
 Code '94200' from "CPT4" display 'Maximum breathing capacity, maximal voluntary ventilation',
 Code '99440' from "CPT4" display 'Newborn resuscitation: provision of positive pressure ventilation and/or chest compressions in the presence of acute inadequate ventilation and/or cardiac output (Deprecated)',
 Code 'F024G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Head and Neck @ Ventilation, Respiration and Circulation',
 Code 'F024GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Head and Neck @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F024GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Head and Neck @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F024GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Head and Neck @ Ventilation, Respiration and Circulation @ None',
 Code 'F024GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Head and Neck @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F026G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation',
 Code 'F026GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F026GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F026GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ None',
 Code 'F026GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F025G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation',
 Code 'F025GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F025GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F025GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ None',
 Code 'F025GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F027G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Whole Body @ Ventilation, Respiration and Circulation',
 Code 'F027GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Whole Body @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F027GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Whole Body @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F027GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Whole Body @ Ventilation, Respiration and Circulation @ None',
 Code 'F027GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Circulatory System - Whole Body @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F028G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Head and Neck @ Ventilation, Respiration and Circulation',
 Code 'F028GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Head and Neck @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F028GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Head and Neck @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F028GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Head and Neck @ Ventilation, Respiration and Circulation @ None',
 Code 'F028GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Head and Neck @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F02BG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation',
 Code 'F02BGG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F02BGC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F02BGZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ None',
 Code 'F02BGY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Lower Back / Lower Extremity @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F029G' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation',
 Code 'F029GG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F029GC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F029GZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ None',
 Code 'F029GY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Upper Back / Upper Extremity @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code 'F02CG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Whole Body @ Ventilation, Respiration and Circulation',
 Code 'F02CGG' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Whole Body @ Ventilation, Respiration and Circulation @ Aerobic Endurance and Conditioning',
 Code 'F02CGC' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Whole Body @ Ventilation, Respiration and Circulation @ Mechanical',
 Code 'F02CGZ' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Whole Body @ Ventilation, Respiration and Circulation @ None',
 Code 'F02CGY' from "ICD10PCS" display 'Physical Rehabilitation and Diagnostic Audiology @ Rehabilitation @ Activities of Daily Living Assessment @ Respiratory System - Whole Body @ Ventilation, Respiration and Circulation @ Other Equipment',
 Code '95811' from "CPT4" display 'Polysomnography; age 6 years or older, sleep staging with 4 or more additional parameters of sleep, with initiation of continuous positive airway pressure therapy or bilevel ventilation, attended by a technologist',
 Code '95783' from "CPT4" display 'Polysomnography; younger than 6 years, sleep staging with 4 or more additional parameters of sleep, with initiation of continuous positive airway pressure therapy or bi-level ventilation, attended by a technologist',
 Code '78588' from "CPT4" display 'Pulmonary perfusion imaging, particulate, with ventilation imaging, aerosol, one or multiple projections (Deprecated)',
 Code '78585' from "CPT4" display 'Pulmonary perfusion imaging, particulate, with ventilation; rebreathing and washout, with or without single breath (Deprecated)',
 Code '78584' from "CPT4" display 'Pulmonary perfusion imaging, particulate, with ventilation; single breath (Deprecated)',
 Code '78596' from "CPT4" display 'Pulmonary quantitative differential function (ventilation/perfusion) study (Deprecated)',
 Code '78582' from "CPT4" display 'Pulmonary ventilation (eg, aerosol or gas) and perfusion imaging',
 Code '78587' from "CPT4" display 'Pulmonary ventilation imaging, aerosol; multiple projections (eg, anterior, posterior, lateral views) (Deprecated)',
 Code '78586' from "CPT4" display 'Pulmonary ventilation imaging, aerosol; single projection (Deprecated)',
 Code '78579' from "CPT4" display 'Pulmonary ventilation imaging (eg, aerosol or gas)',
 Code '78591' from "CPT4" display 'Pulmonary ventilation imaging, gaseous, single breath, single projection (Deprecated)',
 Code '78594' from "CPT4" display 'Pulmonary ventilation imaging, gaseous, with rebreathing and washout with or without single breath; multiple projections (eg, anterior, posterior, lateral views) (Deprecated)',
 Code '78593' from "CPT4" display 'Pulmonary ventilation imaging, gaseous, with rebreathing and washout with or without single breath; single projection (Deprecated)',
 Code '78598' from "CPT4" display 'Quantitative differential pulmonary perfusion and ventilation (eg, aerosol or gas), including imaging when performed',
 Code '5A1945Z' from "ICD10PCS" display 'Respiratory Ventilation, 24-96 Consecutive Hours',
 Code '5A1955Z' from "ICD10PCS" display 'Respiratory Ventilation, Greater than 96 Consecutive Hours',
 Code '5A1935Z' from "ICD10PCS" display 'Respiratory Ventilation, Less than 24 Consecutive Hours',
 Code '5A19054' from "ICD10PCS" display 'Respiratory Ventilation, Single, Nonmechanical',
 Code '95807' from "CPT4" display 'Sleep study, simultaneous recording of ventilation, respiratory effort, ECG or heart rate, and oxygen saturation, attended by a technologist',
 Code '94010' from "CPT4" display 'Spirometry, including graphic record, total and timed vital capacity, expiratory flow rate measurement(s), with or without maximal voluntary ventilation',
 Code '1014859' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing',
 Code '94656' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; first day (Deprecated)',
 Code '94003' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; hospital inpatient/observation, each subsequent day',
 Code '94002' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; hospital inpatient/observation, initial day',
 Code '94004' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; nursing facility, per day',
 Code '94657' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; subsequent days (Deprecated)',
 Code 'F024GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Head and Neck',
 Code 'F024GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Head and Neck using Aerobic Endurance and Conditioning Equipment',
 Code 'F024GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Head and Neck using Mechanical Equipment',
 Code 'F024GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Head and Neck using Other Equipment',
 Code 'F026GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Lower Back / Lower Extremity',
 Code 'F026GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Lower Back / Lower Extremity using Aerobic Endurance and Conditioning Equipment',
 Code 'F026GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Lower Back / Lower Extremity using Mechanical Equipment',
 Code 'F026GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Lower Back / Lower Extremity using Other Equipment',
 Code 'F025GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Upper Back / Upper Extremity',
 Code 'F025GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Upper Back / Upper Extremity using Aerobic Endurance and Conditioning Equipment',
 Code 'F025GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Upper Back / Upper Extremity using Mechanical Equipment',
 Code 'F025GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Upper Back / Upper Extremity using Other Equipment',
 Code 'F027GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Whole Body',
 Code 'F027GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Whole Body using Aerobic Endurance and Conditioning Equipment',
 Code 'F027GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Whole Body using Mechanical Equipment',
 Code 'F027GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Circulatory System - Whole Body using Other Equipment',
 Code 'F028GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Head and Neck',
 Code 'F028GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Head and Neck using Aerobic Endurance and Conditioning Equipment',
 Code 'F028GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Head and Neck using Mechanical Equipment',
 Code 'F028GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Head and Neck using Other Equipment',
 Code 'F02BGZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Lower Back / Lower Extremity',
 Code 'F02BGGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Lower Back / Lower Extremity using Aerobic Endurance and Conditioning Equipment',
 Code 'F02BGCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Lower Back / Lower Extremity using Mechanical Equipment',
 Code 'F02BGYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Lower Back / Lower Extremity using Other Equipment',
 Code 'F029GZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Upper Back / Upper Extremity',
 Code 'F029GGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Upper Back / Upper Extremity using Aerobic Endurance and Conditioning Equipment',
 Code 'F029GCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Upper Back / Upper Extremity using Mechanical Equipment',
 Code 'F029GYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Upper Back / Upper Extremity using Other Equipment',
 Code 'F02CGZZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Whole Body',
 Code 'F02CGGZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Whole Body using Aerobic Endurance and Conditioning Equipment',
 Code 'F02CGCZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Whole Body using Mechanical Equipment',
 Code 'F02CGYZ' from "ICD10PCS" display 'Ventilation, Respiration and Circulation Assessment of Respiratory System - Whole Body using Other Equipment',
 Code '20507-0' from "LOINC" display 'Reagin Ab [Presence] in Serum by RPR',
 Code '47360-3' from "LOINC" display 'Reagin Ab [Presence] in Serum from Donor by RPR',
 Code '87925-4' from "LOINC" display 'Reagin Ab [Titer] in Cerebral spinal fluid by RPR',
 Code '31147-2' from "LOINC" display 'Reagin Ab [Titer] in Serum by RPR',
 Code '20508-8' from "LOINC" display 'Reagin Ab [Units/volume] in Serum by RPR'
}
define "Covid Medications": Concept {
 Code '2284718' from "RxNorm" display 'remdesivir',
 Code '2284960' from "RxNorm" display 'remdesivir 100 MG Injection',
 Code '61958290201' from "NDC" display '20 ML remdesivir 5 MG/ML Injection [Veklury]',
 Code '61958290101' from "NDC" display 'remdesivir 100 MG Injection [Veklury]',
 Code '61958290102' from "NDC" display 'remdesivir 100 MG Injection [Veklury]'
}
define "Mechanical ventilation": Concept {
 Code '40617009' from "SNOMED" display 'Artificial respiration',
 Code '129896002' from "SNOMED" display 'Artificial ventilation finding',
 Code '444932008' from "SNOMED" display 'Dependence on ventilator',
 Code '243145001' from "SNOMED" display 'Diaphragmatic augmentation',
 Code '182686001' from "SNOMED" display 'Endotracheal respiratory assistance',
 Code '419991009' from "SNOMED" display 'Endotracheal tube present',
 Code '243180002' from "SNOMED" display 'Expired air ventilation',
 Code '225627007' from "SNOMED" display 'Fear of disconnection from ventilator',
 Code '41145' from "CPT4" display 'Glossectomy; complete or total, with or without tracheostomy, with unilateral radical neck dissection',
 Code '41140' from "CPT4" display 'Glossectomy; complete or total, with or without tracheostomy, without radical neck dissection',
 Code '439887005' from "SNOMED" display 'Home visit for mechanical ventilation care',
 Code '438603002' from "SNOMED" display 'Hyperventilation therapy for traumatic brain injury',
 Code '30050007' from "SNOMED" display 'Inhalation anesthesia, machine system, semi-closed, no rebreathing of primary agent',
 Code '733496000' from "SNOMED" display 'Insertion of endotracheal ventilation catheter',
 Code '447996002' from "SNOMED" display 'Intubation of respiratory tract',
 Code '430191008' from "SNOMED" display 'Management of noninvasive mechanical ventilation',
 Code '787180006' from "SNOMED" display 'Mechanical insufflation exsufflation',
 Code '404997003' from "SNOMED" display 'Mechanical ventilation response',
 Code '450601000124103' from "SNOMED" display 'Orotracheal intubation using bougie device',
 Code 'E85.8' from "OPCS4" display 'Other specified ventilation support',
 Code '4168F' from "CPT4" display 'Patient receiving care in the intensive care unit (ICU) and receiving mechanical ventilation, 24 hours or less (CRIT)',
 Code '397846002' from "SNOMED" display 'Problem with patient ventilator',
 Code '859311000000101' from "SNOMED" display 'Provision of mechanical ventilator',
 Code '5A1945Z' from "ICD10PCS" display 'Respiratory Ventilation, 24-96 Consecutive Hours',
 Code '5A1955Z' from "ICD10PCS" display 'Respiratory Ventilation, Greater than 96 Consecutive Hours',
 Code '5A1935Z' from "ICD10PCS" display 'Respiratory Ventilation, Less than 24 Consecutive Hours',
 Code '11140008' from "SNOMED" display 'Respiratory assist, manual',
 Code '74596007' from "SNOMED" display 'Resuscitation with artificial respiration',
 Code '1014859' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing',
 Code '94656' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; first day (Deprecated)',
 Code '94657' from "CPT4" display 'Ventilation assist and management, initiation of pressure or volume preset ventilators for assisted or controlled breathing; subsequent days (Deprecated)',
 Code '409025002' from "SNOMED" display 'Ventilator care',
 Code '410208007' from "SNOMED" display 'Ventilator care assessment',
 Code '410209004' from "SNOMED" display 'Ventilator care education',
 Code '410210009' from "SNOMED" display 'Ventilator care management',
 Code '250870006' from "SNOMED" display 'Ventilator finding',
 Code '231821000000109' from "SNOMED" display 'Ventilatory support',
 Code '243174005' from "SNOMED" display 'Weaning from mechanically assisted ventilation'
}

context Patient
define "PrimaryCriteria": [MedicationStatement: "Covid Vaccine Drug Exposure"]

define "MostRecentPrimaryCriteria": MostRecentMedicationStatementDT("PrimaryCriteria")
define "AdditionalCriteria0": [Condition: "Covid Dx"]
define "AdditionalCriteria0Interval" ["MostRecentPrimaryCriteria" + 14 days, "MostRecentPrimaryCriteria" + 90 days]
define "AdditionalCriteria0InPeriod": "AdditionalCriteria0" additionalCriteria
  where (additionalCriteria.onset as FHIR.dateTime).value in "AdditionalCriteria0Interval"
  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in "AdditionalCriteria0Interval"
define "AdditionalCriteria1": [Condition: "Covid Dx"]
define "AdditionalCriteria1Interval" ["MostRecentPrimaryCriteria" - 14 days, "MostRecentPrimaryCriteria" + 0 days]
define "AdditionalCriteria1InPeriod": "AdditionalCriteria1" additionalCriteria
  where (additionalCriteria.onset as FHIR.dateTime).value in "AdditionalCriteria1Interval"
  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in "AdditionalCriteria1Interval"
define "AdditionalCriteria2": [Observation: "Covid Labs"]
define "AdditionalCriteria2Interval" ["MostRecentPrimaryCriteria" + 14 days, "MostRecentPrimaryCriteria" + 90 days]
define "AdditionalCriteria2InPeriod": "AdditionalCriteria2" additionalCriteria
  where (additionalCriteria.onset as FHIR.dateTime).value in "AdditionalCriteria2Interval"
  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in "AdditionalCriteria2Interval"
define "AdditionalCriteria3": [Procedure: "Covid Procedures per List"]
define "AdditionalCriteria3Interval" ["MostRecentPrimaryCriteria" + 14 days, "MostRecentPrimaryCriteria" + 90 days]
define "AdditionalCriteria3InPeriod": "AdditionalCriteria3" additionalCriteria
  where (additionalCriteria.onset as FHIR.dateTime).value in "AdditionalCriteria3Interval"
  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in "AdditionalCriteria3Interval"
define "AdditionalCriteria4": [MedicationStatement: "Covid Medications"]
define "AdditionalCriteria4Interval" ["MostRecentPrimaryCriteria" + 0 days, "MostRecentPrimaryCriteria" + 90 days]
define "AdditionalCriteria4InPeriod": "AdditionalCriteria4" additionalCriteria
  where (additionalCriteria.onset as FHIR.dateTime).value in "AdditionalCriteria4Interval"
  or PeriodToInterval(additionalCriteria.onset as FHIR.Period) in "AdditionalCriteria4Interval"
define "InPopulation":
 (exists("MostRecentPrimaryCriteria")) and
 (exists("AdditionalCriteria0InPeriod") and not exists(("AdditionalCriteria1InPeriod")) and
 (exists("AdditionalCriteria2InPeriod") or exists("AdditionalCriteria3InPeriod") or exists("AdditionalCriteria4InPeriod"))
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
  sort asc)