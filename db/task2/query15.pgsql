SELECT sup_num, sum.sum, average.round
FROM sup_proj_match a
JOIN(
  SELECT SUM(amount), sup_num, proj_num
  FROM sup_proj_match 
  WHERE part_num = 'Д1'
  GROUP BY sup_num, proj_num
) AS "sum" USING(sup_num, proj_num)
JOIN(
  SELECT ROUND(AVG(amount)), proj_num
  FROM sup_proj_match 
  WHERE part_num = 'Д1'
  GROUP BY proj_num
) AS "average" ON a.proj_num = average.proj_num
WHERE part_num = 'Д1'
GROUP BY sup_num, sum.sum, average.round
HAVING (sum > average.round)
