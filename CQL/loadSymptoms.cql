//query for loading Symptoms
LOAD CSV WITH HEADERS
FROM "FILE:///Symptoms.csv"
AS row
MERGE (s:Symptom {id:row.id})
ON CREATE SET
s.name=row.name,
s.aspect=row.aspect,
s.activeState=row.ActiveState,
s.description=row.description
;