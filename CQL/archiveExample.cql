// cypher archival example
MATCH (d:Diag {name:"Diag66"})-[r:DIAG_LEADS_TREATMENT]->(p:ProcessMetaData {name:"GridTest1"})
MERGE (d2:Archive_Diag {name:d.name})-[:DIAG_LEADS_TREATMENT]->(p2:Archive_ProcessMetaData {name:p.name})
on create set d.version=2, p.version=2, d2.version=1, p2.version=1
on match set d.version=d.version+1, p.version=p.version+1,
d2.version=d2.version +1, p2.version=p2.version+1
return *