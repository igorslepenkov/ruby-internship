SELECT a.group_num
FROM prof_group_match a
JOIN stud_group b USING (group_num)
EXCEPT
SELECT group_num
FROM prof_group_match
WHERE subj_num IN (
  SELECT a.subj_num
  FROM subjects a
  JOIN prof_group_match b USING (subj_num)
  JOIN stud_group c USING (group_num)
  WHERE c.name = 'АС-8'
)
