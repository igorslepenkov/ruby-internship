SELECT a.city, c.city
FROM suppliers a
JOIN sup_proj_match b USING (sup_num)
JOIN projects c USING (proj_num)
WHERE a.city != c.city;