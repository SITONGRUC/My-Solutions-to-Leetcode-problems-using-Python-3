# Write your MySQL query statement below
SELECT
SUM(CASE WHEN rank1 = 2 THEN salary ELSE NULL END) AS SecondHighestSalary
FROM
(SELECT
salary,
DENSE_RANK() OVER(ORDER BY salary DESC )  AS rank1
FROM Employee) AS res

#Dense_rank() NO gap

