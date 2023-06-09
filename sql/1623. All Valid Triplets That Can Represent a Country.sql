# Write your MySQL query statement below
SELECT
DISTINCT
a.student_name AS member_A,
b.student_name AS member_B,
c.student_name AS member_C
FROM
SchoolA AS a
CROSS JOIN 
SchoolB AS b
CROSS JOIN 
SchoolC AS c
WHERE 
(a.student_id != b.student_id AND c.student_id != b.student_id AND a.student_id != c.student_id )
AND
(a.student_name != b.student_name AND c.student_name != b.student_name AND c.student_name != a.student_name)
