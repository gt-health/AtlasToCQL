# AtlasToCQL
A "Very Simple" Python script for converting Atlas cohort definitions into CQL files.
This project is a simple main.py file that
* Reads the ```ExampleAtlasDefinition.json``` [atlas-cohort definition](https://atlas-demo.ohdsi.org/#/cohortdefinitions) as defined in a json exported format.
* Reads the Initial population, the primary criteria, and additional critieria
* Converts the criteria to individual cql statements.
* Uses simple set logic to create a final In_Population definition
* Outputs the result to ```ExampleCQLOutput.cql```

It's based on a common set of CQL functions used by the [ARHQ CDS Authoring tool](https://cds.ahrq.gov/cdsconnect/authoring), although this project uses the Atlas cohort format
as input; rather than an arbitary form definition.
