<h2><a href="https://leetcode.com/problems/customers-who-never-order">183. Customers Who Never Order</a></h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Logs</code></p>

<pre>Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID and name of a customer.

Table: Orders

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
customerId is a foreign key (reference columns) of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find all customers who never order anything.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The&nbsp;result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
<strong>Output:</strong> 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
<strong>Explanation:</strong> a@b.com is repeated two times.
</pre>
<h1>DESCRIPTION</h1>
<strong>1.Understand the requirement:</strong>
<p>Find email addresses that appear more than once in the given table.</p>

<strong>2.Focus on the email column:</strong>
<p>Since only email is needed in output, concentrate on analyzing that column.</p>

<strong>3.Use grouping logic:</strong>
<p>Use GROUP BY on the email column to group identical emails together.</p>

<strong>4.Count each group:</strong>
<p>Use COUNT() function to count how many times each email appears.</p>

<strong>Filter duplicates:</strong>
<p>Use HAVING COUNT(email) > 1 to get only emails that are repeated.</p>
<strong>Use HAVING instead of WHERE:</strong>
<p>HAVING is used to filter groups after aggregation, not raw rows.</p>

<strong>Select only email:</strong>
<p>In the SELECT clause, return only the email column.</p>

</div>