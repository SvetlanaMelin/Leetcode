# Write your MySQL query statement below
SELECT
W1.id
FROM 
Weather W1
INNER JOIN Weather W2 ON W1.recordDate= DATE_ADD(W2.recordDate , interval 1 day)
WHERE W2.Temperature<W1.Temperature