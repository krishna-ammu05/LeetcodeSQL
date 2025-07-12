----------------solution--------------
select max(salary) as SecondHighestSalary
where salary not in (select max(salary) from Employee);