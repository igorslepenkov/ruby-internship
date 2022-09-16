SELECT DISTINCT sup_num, part.part_num
FROM sup_proj_match a
JOIN (
  SELECT part_num
  FROM sup_proj_match b
) AS "part" ON a.part_num != part.part_num
EXCEPT
SELECT sup_num, part_num
FROM sup_proj_match;