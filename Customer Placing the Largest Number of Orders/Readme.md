<h2><a href="https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/">586. Customer Placing the Largest Number of Orders</a></h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Employee</code></p>

<pre>+-----------------+----------+
| Column Name     | Type     |
+-----------------+----------+
| order_number    | int      |
| customer_number | int      |
+-----------------+----------+
order_number is the primary key (column with unique values) for this table.
This table contains information about the order ID and the customer ID.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find the customer_number for the customer who has placed the largest number of orders.</p>

<p>The test cases are generated so that exactly one customer will have placed more orders than any other customer.</p>

<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Orders table:
+--------------+-----------------+
| order_number | customer_number |
+--------------+-----------------+
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |
+--------------+-----------------+
<strong>Output:</strong> 
+-----------------+
| customer_number |
+-----------------+
| 3               |
+-----------------+
</pre>

<p><strong>Explaination</strong>
The customer with number 3 has two orders, which is greater than either customer 1 or 2 because each of them only has one order. 
So the result is customer_number 3.</p>
</pre>
</div>
