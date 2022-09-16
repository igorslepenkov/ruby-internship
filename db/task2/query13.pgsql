SELECT DISTINCT sup_num
FROM sup_proj_match
WHERE part_num IN (
  SELECT part_num
  FROM sup_proj_match
  WHERE sup_num IN (
    SELECT sup_num
    FROM sup_proj_match a
    JOIN parts b USING (part_num)
    WHERE b.color = 'Красный'
  )
)