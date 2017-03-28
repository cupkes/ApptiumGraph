//query for loading Diagnoses
LOAD CSV WITH HEADERS
FROM "FILE:///Diagnosis.csv"
AS row
MERGE (d:Diagnosis {id:row.id})
ON CREATE SET
d.name=row.name,
d.active=row.active,
d.overrideAllowed=row.overrideAllowed
;