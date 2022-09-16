SELECT part_num, proj_num, SUM(amount)
FROM sup_proj_match
GROUP BY part_num, proj_num;