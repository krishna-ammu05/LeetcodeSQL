<h2><a href="https://leetcode.com/problems/employees-earning-more-than-their-managers">181. Employees Earning More Than Their Managers</a></h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Logs</code></p>

<pre>-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find the employees who earn more than their managers.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The&nbsp;result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
<strong>Output:</strong> 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
<strong>Explanation:</strong> Joe is the only employee who earns more than his manager.
</pre>
<h1>DESCRIPTION</h1>
<p>We want to compare:</p>
<p>employee.salary</p>
<p>with</p>
<p>manager.salary</p>
<p>For that, we need to:</p>
<p>Join the Employee table with itself.</p>
<p>Use aliases to distinguish between employees and their managers.</p>
<p>Compare salaries.</p>
<p>Select employees whose salary is greater than their manager's salary.</p>
</div>