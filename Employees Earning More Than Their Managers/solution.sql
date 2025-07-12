# Write your MySQL query statement below
--------------USING LEFT JOIN-------------------
select e1.name as Employee
FROM Employee e1
LEFT JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary

--------------USING INNER JOIN-------------------
select e1.name as Employee
FROM Employee e1
INNER JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
