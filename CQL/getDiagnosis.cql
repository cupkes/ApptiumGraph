// Cypher Query to return Diagnosis graph
MATCH (r:Recommendation {id:"REC_27e4e1d8-e5b9-400f-9806-3f58c46441f9"})<-[:LEADS_TO]-(d:Diagnosis),
(d)-[:LEADS_TO]->(n)
RETURN *
// or Cypher query to get diagnoses and recommendations based on a symptom
MATCH (s:Symptom {id:"SYM_95d4be15-062d-47c0-8193-58e1dcf75d15"})<-[:LEADS_TO]-(d:Diagnosis)
OPTIONAL MATCH (d:Diagnosis)-[:LEADS_TO]->(r:Recommendation)
return *