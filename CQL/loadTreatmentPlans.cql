//query for loading TreatmentPlans
LOAD CSV WITH HEADERS
FROM "FILE:///TreatmentPlans.csv"
AS row
MERGE (t:treatmentPlan {id:row.uniqueProcessMetaDataId})
ON CREATE SET
t.name=row.name,
t.version=row.version
;