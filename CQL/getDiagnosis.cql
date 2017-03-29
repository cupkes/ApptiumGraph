// Cypher Query to return Diagnosis graph
MATCH (r:Recommendation {id:"REC_27e4e1d8-e5b9-400f-9806-3f58c46441f9"})<-[:LEADS_TO]-(d:Diagnosis),
(d)-[:LEADS_TO]->(n)
RETURN *
