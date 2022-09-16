SELECT prof_num
FROM prof_group_match a
JOIN stud_group b USING (group_num)
WHERE b.name = 'Э-15'
EXCEPT
SELECT prof_num
FROM prof_group_match
WHERE subj_num = '12П';