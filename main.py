import argparse
from pathlib import Path

from AtlasToCQL.mapping import atlasFileToPythonObject, atlasJsonToPythonObject, pythonObjectToCQLString
from AtlasToCQL.request import retrieveCohortDefinitionFromWebApi

OUTPUT_DIRECTORY = "./output"
def main(args):
    atlas_json = None
    if args.inputFile:
        concepts, codesystems, primary_criteria, additional_criteria = atlasFileToPythonObject(args.inputFile)
        outputFilePath = Path(args.inputFile).with_suffix(".cql")
    elif args.url:
        atlas_json, cohortDefinitionName = retrieveCohortDefinitionFromWebApi(args.url, True)
        
    elif args.id:
        atlas_json, cohortDefinitionName = retrieveCohortDefinitionFromWebApi(args.id, False)
    else:
        print("One of 'inputFile', 'url', or 'id' parameter required")
        return

    if atlas_json:
        concepts, codesystems, primary_criteria, additional_criteria = atlasJsonToPythonObject(atlas_json)
        outputFilePath = Path(OUTPUT_DIRECTORY + f"/{cohortDefinitionName}.cql")

    print("Concepts: {}".format(concepts))
    print("Codesystems: {}".format(codesystems))
    print("Primary criteria: {}".format(primary_criteria))
    print("Additional criteria: {}".format(additional_criteria))
    output_string = pythonObjectToCQLString(concepts, codesystems,primary_criteria, additional_criteria)
    print("Output String: {}".format(output_string))
    print("OutputFilePath: {}".format(outputFilePath))
    with open(outputFilePath, 'w') as f:
        f.write(output_string)

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--inputFile", type=str, help="file location for an Atlas File Cohort Definition(json) stored locally.")
    parser.add_argument("--url", type=str, help="Full url for an Atlas File Cohort Definition hosted on WebAPI. Use over 'id' when hosted in non-standard WebAPI definition")
    parser.add_argument("--id", type=str, help="External cohort definition id for Atlas-hosted. Use when cohort definition is defined on public Atlas")
    parser.add_argument("--outputFile", type=str, help="Name Of file to be saved. Optional, cohort definition name will be used if not provided")
    args = parser.parse_args()
    main(args)