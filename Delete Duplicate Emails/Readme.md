<h2><a href="https://leetcode.com/problems/delete-duplicate-emails">196. Delete Duplicate Emails</a></h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Logs</code></p>

<pre>Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.

</pre>

<p>&nbsp;</p>

<p>Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.</p>

<p>For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.</p>

<p>For Pandas users, please note that you are supposed to modify Person in place.</p>

<p>After running your script, the answer shown is the Person table. The driver will first compile and run your piece of code and then show the Person table. The final order of the Person table does not matter.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The&nbsp;result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+

<strong>Output:</strong> 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
<strong>Explanation:</strong> john@example.com is repeated two times. We keep the row with the smallest Id = 1.
</pre>
<h1>DESCRIPTION</h1>
<strong>1.Understand the Table:</strong>
<p>Table Name: Person
Columns:
id: unique identifier (primary key)
email: may have duplicate values.</p>
<strong>2.Identify the Problem:</strong>
<p>Some emails appear more than once (duplicates).</p>
<p>You must keep only one record for each email.</p>
<p>Keep the one with the smallest id.</p>
<p>Delete the others.</p>
<strong>3.Approach (Using SQL):</strong>
<p>Use GROUP BY email to group rows by email.</P>
<p>Use MIN(id) to find the smallest id for each group (email).</P>
<p>Delete all rows whose id is not the minimum for their email.</p>
<strong>4.SQL Concept Used:</strong>
<p>ELETE statement</P>
<p>NOT IN with a subquery that returns all minimum ids per email</P>
<p>GROUP BY with MIN(id)</p>
</div>