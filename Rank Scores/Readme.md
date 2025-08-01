<h2><a href="https://leetcode.com/problems/rank-scores/">178. Rank Scores</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Scores</code></p>

<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| score       | decimal |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the score of a game. Score is a floating point value with two decimal places.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules:

<p>The scores should be ranked from the highest to the lowest.</p>
<p>If there is a tie between two scores, both should have the same ranking.</p>
<p>After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.</p>
<p>Return the result table ordered by score in descending order.</p>
<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input 1:</strong> 
Scores table:
+----+-------+
| id | score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+

<strong>Output:</strong> 
+-------+------+
| score | rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+

</pre>
</div>
