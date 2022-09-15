CREATE TABLE IF NOT EXISTS professors (
  prof_num TEXT PRIMARY KEY, 
  last_name TEXT,
  position_dep TEXT,
  department TEXT,
  specialty TEXT,
  phone INTEGER
);
INSERT INTO professors (
  prof_num,
  last_name,
  position_dep,
  department,
  specialty,
  phone
)
VALUES 
  ('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ, ЭВМ', 487),
  ('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', 543),
  ('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ, ЭВМ', 112),
  ('430Л', 'Глазов', 'Ассистент', 'ТФ', 'СД', 421),
  ('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', 324);
;

CREATE TABLE IF NOT EXISTS subjects (
  subj_num TEXT PRIMARY KEY,
  name TEXT,
  hours_amt INTEGER,
  specialty TEXT,
  semester INT
);

INSERT INTO subjects (
  subj_num,
  name,
  hours_amt,
  specialty,
  semester
)
VALUES
  ('12П', 'Мини ЭВМ', 36, 'ЭВМ', 1),
  ('14П', 'ПЭВМ', 72, 'ЭВМ', 2),
  ('17П', 'СУБД ПК', 48, 'АСОИ', 4),
  ('18П', 'ВКСС', 52, 'АСОИ', 6),
  ('34П', 'Физика', 30, 'СД', 6),
  ('22П', 'Аудит', 24, 'Бухучета', 3);

CREATE TABLE IF NOT EXISTS stud_group (
  group_num TEXT PRIMARY KEY,
  name TEXT,
  stud_amt INT,
  specialty TEXT,
  representative_lastname TEXT
);

INSERT INTO stud_group (
  group_num,
  name,
  stud_amt,
  specialty,
  representative_lastname
)
VALUES
  ('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова'),
  ('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин'),
  ('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов'),
  ('3Г', 'АС-8', 20, 'АСОИ', 'Чижов'),
  ('17Г', 'С-14', 29, 'СД', 'Амросов'),
  ('12Г', 'М-6', 16, 'Международная экономика', 'Трубин'),
  ('10Г', 'Б-4', 21, 'Бухучет', 'Зязюткин');

CREATE TABLE IF NOT EXISTS prof_group_match (
  group_num TEXT,
  subj_num TEXT,
  prof_num TEXT,
  audience INT
);
INSERT INTO prof_group_match (
  group_num,
  subj_num,
  prof_num,
  audience
)
VALUES
  ('8Г', '12П', '222Л', 112),
  ('8Г', '14П', '221Л', 220),
  ('8Г', '17П', '222Л', 112),
  ('8Г', '14П', '221Л', 220),
  ('8Г', '17П', '222Л', 241),
  ('8Г', '18П', '225Л', 210),
  ('4Г', '12П', '222Л', 112),
  ('4Г', '18П', '225Л', 210),
  ('3Г', '12П', '222Л', 112),
  ('3Г', '17П', '221Л', 241),
  ('3Г', '18П', '225Л', 210),
  ('17Г', '12П', '222Л', 112),
  ('17Г', '22П', '110Л', 220),
  ('17Г', '34П', '430Л', 118),
  ('12Г', '12П', '222Л', 112),
  ('12Г', '22П', '110Л', 210),
  ('10Г', '12П', '222Л', 210),
  ('10Г', '22П', '110Л', 210);
  