//query for loading relations
LOAD CSV WITH HEADERS
FROM "FILE:///relations_Diagnosis_TreatmentPlan.csv"
AS row
MATCH (d:Diagnosis {id:row.diagnosisId})
MATCH (t:TreatmentPlan {id:row.processMetaDataId})
MERGE (d)-[:LEADS_TO]->(t)
;