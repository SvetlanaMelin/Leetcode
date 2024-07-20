# Write your MySQL query statement below
SELECT
S.student_id,
S.student_name,
Sj.subject_name,
COUNT(E.subject_name) AS attended_exams
FROM
Students S
INNER JOIN Subjects Sj
LEFT JOIN Examinations  E ON s.student_id=E.student_id
and Sj.subject_name=E.subject_name 

GROUP BY
S.student_id,
S.student_name,
Sj.subject_name

Order By 
S.student_id,
S.student_name

 