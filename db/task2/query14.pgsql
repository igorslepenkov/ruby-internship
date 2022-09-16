SELECT proj_num
FROM projects
WHERE city = (
  SELECT city
  FROM projects
  ORDER BY city ASC
  LIMIT 1
)
