SELECT DISTINCT prof_num
FROM prof_group_match
WHERE subj_num IN (
  SELECT subj_num
  FROM prof_group_match
  WHERE prof_num IN (
    SELECT prof_num
    FROM prof_group_match
    WHERE subj_num = '14П'
  )
)
