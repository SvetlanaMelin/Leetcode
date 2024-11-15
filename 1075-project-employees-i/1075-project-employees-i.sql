/* Write your T-SQL query statement below */

 
 SELECT 
    p.project_id,
    ROUND(SUM(e.experience_years)*1.0 / COUNT(e.employee_id), 2) AS average_years
FROM 
    Project p
JOIN 
    Employee e 
    ON p.employee_id = e.employee_id 
GROUP BY 
    p.project_id