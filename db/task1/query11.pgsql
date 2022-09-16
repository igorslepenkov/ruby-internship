SELECT DISTINCT a.prof_num
FROM professors a
JOIN prof_group_match b USING (prof_num)
JOIN subjects c USING(subj_num)
JOIN stud_group d USING(group_num)
WHERE c.specialty = d.specialty AND a.department = 'ЭВМ';

