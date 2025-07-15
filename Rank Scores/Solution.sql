SELECT score,DENSE_RANK() over(ORDER BY Score DESC) AS 'rank'
FROM Scores
ORDER BY Score DESC