SELECT a.subj_num, a.prof_num, a.group_num
FROM prof_group_match a
JOIN professors b USING (prof_num)
WHERE b.department = 'ЭВМ' AND b.specialty LIKE '%АСОИ%';

