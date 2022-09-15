SELECT last_name
FROM professors
WHERE prof_num IN (
  SELECT prof_num
  FROM prof_group_match
  WHERE audience = 210
);
