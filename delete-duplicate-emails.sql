DELETE p1
FROM Person p1
INNER JOIN person p2
WHERE p1.Id > p2.Id 
AND p1.Email = p2.Email