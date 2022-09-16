SELECT *
FROM subjects
WHERE subj_num IN (
  SELECT subj_num
  FROM prof_group_match
  WHERE subj_num NOT IN (
   SELECT subj_num
   FROM prof_group_match
   WHERE group_num = (
    SELECT group_num
    FROM stud_group
    WHERE name = 'М-6'
   )
  ) 
)

