SELECT sup_num
FROM sup_proj_match a
JOIN(
  SELECT COUNT(DISTINCT part_num), sup_num
  FROM sup_proj_match b
  GROUP BY sup_num
) AS "count" USING(sup_num)
GROUP BY sup_num, count
HAVING(count = 1)