# Write your MySQL query statement below
SELECT E.name 
FROM
Employee E
INNER JOIN
(SELECT managerId 
 FROM Employee
GROUP BY managerId
HAVING COUNT(*) >= 5)subquery
ON E.id=subquery.managerId
