SELECT a.part_num
FROM sup_proj_match a
JOIN projects b USING (proj_num)
WHERE b.city = 'Лондон';