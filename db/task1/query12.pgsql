SELECT a.subj_num
FROM prof_group_match a
JOIN stud_group b USING (group_num)
WHERE b.name = 'АС-8';