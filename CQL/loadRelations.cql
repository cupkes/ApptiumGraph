//query for loading relations
LOAD CSV WITH HEADERS
FROM "FILE:///DSRrelations.csv"
AS row
MATCH (r:Recommendation {id:row.recommendationsId})
MATCH (d:Diagnosis {id:row.diagnosisId})
MATCH (s:Symptom {id:row.symptomId})
MERGE (d)-[:LEADS_TO]->(r)
MERGE (d)-[:LEADS_TO]->(s)
;