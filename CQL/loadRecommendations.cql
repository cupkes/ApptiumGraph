//loading query for Recommendations
LOAD CSV WITH HEADERS
FROM "FILE:///Recommendations.csv"
AS row
MERGE (r:Recommendation {id:row.recommendationsId})
ON CREATE SET
r.name=row.recommendationsName,
r.type=row.type,
r.status=row.status,
r.recVersion=row.recommendationsVersion
;