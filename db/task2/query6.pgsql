SELECT DISTINCT a.part_num
FROM parts a
JOIN sup_proj_match b USING (part_num)
JOIN suppliers c USING (sup_num)
WHERE c.city = 'Лондон';