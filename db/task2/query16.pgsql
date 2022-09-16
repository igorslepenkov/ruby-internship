SELECT proj_num
FROM sup_proj_match
WHERE sup_num = 'П1'
EXCEPT
SELECT proj_num
FROM sup_proj_match
WHERE sup_num != 'П1';