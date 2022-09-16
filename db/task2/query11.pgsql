SELECT name
FROM projects
JOIN sup_proj_match USING (proj_num)
WHERE sup_num = 'П1';