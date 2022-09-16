SELECT DISTINCT a.proj_num
FROM sup_proj_match a
JOIN suppliers b USING (sup_num)
JOIN projects c USING (proj_num)
WHERE b.city != c.city;