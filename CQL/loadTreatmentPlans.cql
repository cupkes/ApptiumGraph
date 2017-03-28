//query for loading TreatmentPlans
LOAD CSV WITH HEADERS
FROM "FILE:///TreatmentPlans.csv"
AS row
MERGE (t:treatmentPlans {id:row.uniqueProcessMetaDataId})
ON CREATE SET
t.name=row.name,
t.version=row.version
;