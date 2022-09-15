SELECT group_num
FROM stud_group a
WHERE 2 <= (
 SELECT COUNT(*)
 FROM stud_group b
 WHERE b.specialty = a.specialty
)
