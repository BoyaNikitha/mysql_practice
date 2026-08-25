create table fruits(name varchar(255));

insert into fruits values('apple'),('apple'),('orange'),
 ('grapes'),('grapes'),('watermelon');
 select name, ROW_NUMBER() OVER(ORDER BY name) from fruits;
select name, RANK() OVER(ORDER BY name) from fruits;
select name, DENSE_RANK() OVER(ORDER BY name) from fruits;
CREATE TABLE ExamResult
(StudentName VARCHAR(70),
Subject 	VARCHAR(20),
Marks   	INT
);
INSERT INTO ExamResult
VALUES
('Lily',
'Maths',
65
);
INSERT INTO ExamResult
VALUES
('Lily',
'Science',
80
);
INSERT INTO ExamResult
VALUES
('Lily',
'english',
70
);
INSERT INTO ExamResult
VALUES
('Isabella',
'Maths',
50
);
INSERT INTO ExamResult
VALUES
('Isabella',
'Science',
70
);
INSERT INTO ExamResult
VALUES
('Isabella',
'english',
90
);
INSERT INTO ExamResult
VALUES
('Olivia',
'Maths',
55
);
INSERT INTO ExamResult
VALUES
('Olivia',
'Science',
60
);
INSERT INTO ExamResult
VALUES
('Olivia',
'english',
89
);
SELECT Studentname,
   	Subject,
   	Marks,
   	ROW_NUMBER() OVER(ORDER BY Marks) RowNumber
FROM ExamResult;
SELECT Studentname,
   	Subject,
   	Marks,
   	ROW_NUMBER() OVER(ORDER BY Marks) RowNumber
FROM ExamResult;
SELECT Studentname,
   	Subject,
   	Marks,
   	RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Studentname,
     	Rank;
SELECT Studentname,
   	Subject,
   	Marks,
   	DENSE_RANK() OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;
Update Examresult set Marks=70 where Studentname='Isabella' and Subject='Maths';
SELECT Studentname,
   	Subject,
   	Marks,
   	DENSE_RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname,
     	Rank;
SELECT Studentname,
   	Subject,
   	Marks,
   	RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname,
     	Rank;
with t1 as (
  SELECT Studentname,
   	Subject,
   	Marks,
   	RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname,
     	Rank
) 
select * from t1 where Rank=1
with t1 as (
SELECT Studentname,
   	Subject,
   	Marks,
   	RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname,
     	Rank
)
, t2 as (select Studentname, Rank from t1)

select * from t2 where Rank=1




