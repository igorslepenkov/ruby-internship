SELECT subj_num, name
FROM subjects
WHERE specialty = (
  SELECT specialty
  FROM professors
  WHERE last_name = 'Костин'
);