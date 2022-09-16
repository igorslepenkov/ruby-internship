SELECT a.sup_num, a.part_num, a.proj_num
FROM sup_proj_match a
JOIN suppliers b USING (sup_num)
JOIN projects c USING (proj_num)
JOIN parts d USING (part_num)
WHERE NOT b.city = c.city AND NOT c.city = d.city AND NOT b.city = d.city;

