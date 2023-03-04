CREATE DATABASE education5 COLLATE Cyrillic_General_CI_AS;
Go
USE education5;
Go

CREATE TABLE student
(
student_id INT NOT NULL identity(1,1) PRIMARY KEY,
family VARCHAR(15) NOT NULL,
name VARCHAR(10) NOT NULL,
last_name VARCHAR(15),
course INT,
stipendia float,
birthday DATE NOT NULL,
inst_id INT,
Spec_id INT,
room_camp INT null 
);

CREATE TABLE parents
(
student_id INT NOT NULL,
town_id INT NOT NULL,
street VARCHAR(18) NULL,
house INT NULL,
flat INT NULL,
eduinst_id INT NULL,
number_eduinst INT NOT NULL
);

CREATE TABLE eduinst
(
eduinst_id int not null identity (1,1) PRIMARY KEY,
name_eduinst varchar(10) NOT NULL
);

CREATE TABLE medalist
(
student_id int not null,
medal_id int not null
);

CREATE TABLE medali
(
medal_id INT NOT NULL identity (1,1) PRIMARY KEY,
name_medal varchar(15) NOT NULL
);

CREATE TABLE town
(
town_id INT NOT NULL identity (1,1) PRIMARY KEY,
town_name varchar(20)
);

CREATE TABLE uch_plan
(
Spec_id INT NOT NULL,
kvant_id INT NOT NULL
);

CREATE TABLE knowledge
(
kvant_id INT NOT NULL identity (1,1) PRIMARY KEY,
subj_id INT NOT NULL,
sem_r INT NOT NULL,
hour INT NOT NULL,
hour_lec INT NOT NULL,
hour_pr INT NOT NULL,
hour_lab INT NOT NULL,
attest_id INT NOT NULL
);

CREATE TABLE attest
(
attest_id INT NOT NULL identity(1,1) PRIMARY KEY,
vid_attest VARCHAR(25) NOT NULL
);

CREATE TABLE spec
(
Spec_id INT NOT NULL identity(1,1) PRIMARY KEY,
name_spec VARCHAR(40) NOT NULL
);

CREATE TABLE lecturer
(
lect_id INT NOT NULL identity(1,1) PRIMARY KEY,
family VARCHAR(15) NOT NULL,
name VARCHAR(10) NOT NULL,
last_name VARCHAR(15) NOT NULL,
inst_id INT
);

CREATE TABLE subject
(
subj_id INT NOT NULL identity(1,1) PRIMARY KEY,
subj_name VARCHAR(30) NOT NULL
);


CREATE TABLE institute
(
inst_id INT NOT NULL identity(1,1) PRIMARY KEY,
inst_name VARCHAR(20) NOT NULL
);

CREATE TABLE nagruzka
(
nagr_id INT NOT NULL identity(1,1) PRIMARY KEY,
lect_id INT NOT NULL,
kvant_id INT NOT NULL
);

CREATE TABLE exam
(
exam_id INT NOT NULL identity(1,1) PRIMARY KEY,
student_id INT NOT NULL,
mark INT NOT NULL,
exam_date DATE NOT NULL,
nagr_id INT NOT NULL
);

insert into student (family,name,last_name,course,stipendia,
birthday,inst_id,Spec_id,room_camp) 
values 
('����������','������','���������', 2, 0,'1988.05.03',1,1, 325),
('��������','����','������������', 3, 400,'1987.06.12',2,2, 203),
('��������','�������','�������������',2, 0,'1989.09.05',6,1,null),
('�������','��������','������������', 1, 0,'1990.12.08',5,2, 412),
('���������','�������','���������',5, 400,'1988.02.04',4,3,null),
('�������','�����','�����������',2,0,'1993.11.15',6,1,null),
('������','����','�������������',4,0,'1995.09.26',3,3,null),
('��������','��������','�����������', 1,0,'1994.12.31',2,2,null),
('������','�����','���������',3, 600,'1992.03.24',6,2, 212),
('����������','���������','���������',2, 400,'1994.12.01',6,1,null),
('��������','�������','����������',2,0,'1995.10.18',1,1,null),
	('������','���������','����������',5,0,'1989.07.15',1,3, 120),
	('�������','������','����������',3, 400,'1990.02.21',2,2, 212),
	('��������','����','��������',2,0,'1992.07.13',4,1,null),
	('��������','������','���������',2,0,'1994.09.28',1,1, 404),
	('���������','�������','�������',2, 400,'1994.11.23',1,1,null),
	('�����������','�����','����������',4, 400,'1993.12.24',5,3,null),
	('�������','��������','���������', 4,0,'1992.04.17',3,3,null),
	('������','�����','�����������',3, 400,'1993.08.31',1,1, 203),
	('���������','���������','����������',1,0,'1993.07.29',4,2,null),
	('������','���','�����������',3,0,'1992.12.22',6,1,null),
	('���������','������','����������',3, 400,'1991.12.23',1,1, 212),
	('���������','�����','�������', 1,0,'1994.11.30',3,1,null),
	('��������','������','�������������', 5,0,'1991.06.27',4,3, 505),
	('��������','����','������������', 2, 400,'1990.02.06',5,1,null),
	('������','������','������������', 3,0,'1989.02.04',2,1,null),
	('���������','�������','����������',4,0,'1988.08.03',4,3,null),
	('�����������','����','������������', 2, 400,'1990.01.28',6,1,null),
	('�������','�������','�������������', 4, 600,'1988.01.27',1,2,null),
	('������','�����','����������', 5,0,'1988.04.08',1,3, 216),
	('�������','����','������������',5,0,'1989.03.09',2,3, 216),
	('�������','�������','������������',5, 400,'1988.08.04',6,3, 216),
	('�������','���������','��������', 2,NULL,'1993.05.15',3,1,null),
	('����������','����','���������',1,0,'1992.08.07',6,1,null),
	('��������','�������','���������', 3, 400,'1990.06.02',4,2,null),
	('�������','�����','����������',4,0,'1992.07.26',1,2,null),
	('�������','�����','�������������',2,0,'1991.07.04',1,1, 400),
	('��������','�����','���������',3, 400,'1989.06.25',2,2, 203),
	('��������','������','���������',2,NULL,'1989.07.12',3,1,null),
	('�������','����','���������',4,0,'1988.06.04',3,2,null),
	('������','����������','�������������',1,400,'1994.02.05',3,1,null),
	('�������','�����','����������',3, 500,'1990.05.26',1,2,null),
	('��������','������','���������',5, 400,'1989.01.12',2,1,null),
	('�������','�����','����������',5,0,'1988.07.15',4,2,null);

insert into parents (student_id, town_id, eduinst_id, number_eduinst, street, house, flat)
values
(1, 1, 1, 24, '������������', 24, 12),
(2, 1, 2, 102, '�������', 22, 9),
(3, 2, 2, 12, '���������', 2, 11),
(4, 1, 2, 24, '�����', 24, 12), 
(5, 3, 2, 374, '������������', 17, 5),
(6, 1, 1, 24, '������', 5, 13),
(7, 1, 2, 102, '�������', 13, 12),
(8, 1, 2, 24, '�����', 36, 19),
(9, 4, 1, 14, '������������', 7, 11),
(10, 1, 2, 24, '����� � ��������', 24, 5),
(11, 5, 2, 13, '���������', 2, 11),
(12, 1, 2, 68, '���������', 10, 13),
(13, 2, 2, 5, '������', 4, 13),
(14, 1, 2, 107, '��������', 2, 5),
(15, 6, 2, 5, '������', 2, 12),
(16, 4, 1, 24, '�����������', 2, 3),
(17, 2, 2, 6, '������', 1, 37),
(18, 1, 2, 68, '������', 9, 1),
(19, 2, 2, 69, '������', 2, 17),
(20, 1, 2, 68, '���������', 8, 25),
(21, 5, 2, 12, '������', 2, 7),
(22, 4, 2, 7, '����������', 18, 16),
(23, 1, 2, 33, '����������������', 45, 11),
(24, 4, 1, 24, '������', 4, 7),
(25, 6, 2, 13, '���������', 3, 8),
(26, 1, 2, 66, '��������', 2, 1),
(27, 5, 2, 24, '��������', 4, 5),
(28, 1, 2, 37, '������', 17, 36),
(29, 4, 2, 24, '�������', 4, 7),
(30, 1, 3, 12, '�������', 36, 102),
(31, 5, 2, 12, '������������', 2, 32),
(32, 1, 2, 37, '������', 18, 44),
(33, 3, 2, 37, '����������', 5, 21),
(34, 1, 1, 25, '������', 63, 1),
(35, 4, 2, 29, '������', 16, 32),
(36, 1, 2, 9, '�������', 4, 13),
(37, 1, 2, 9, '�������', 4, 14),
(38, 6, 2, 17, '����������', 2, 21),
(39, 4, 1, 24, '������', 8, 19),
(40, 1, 1, 12, '������������', 4, 8),
(41, 4, 2, 6, '����������', 3, 17),
(42, 1, 2, 102, '�������', 2, 32),
(43, 5, 2, 12, '������������', 2, 44),
(44, 1, 2, 9, '�������', 2, 34);

INSERT INTO eduinst (name_eduinst)
VALUES
('�����'),
('�������'),
('��������'),
('�������');

INSERT INTO medalist (student_id, medal_id)
VALUES
(18, 1),
(20, 1),
(26, 1),
(36, 2),
(37, 1),
(42, 1),
(43, 1),
(44, 2);

insert into medali (name_medal)
values
('����������'),
('�������');

insert into town (town_name)
values
('������������'),
('�������'),
('���������'),
('�����������'),
('������� �����'),
('���������');

insert into uch_plan (Spec_id, kvant_id) 
values 
(1, 1),
(1, 1),
(1, 1),
(2, 5),
(2, 5),
(1, 6),
(3, 8),
(3, 5),
(1, 3),
(2, 1),
(2, 1),
(2, 1),
(3, 7),
(3, 2),
(1, 4);

insert into knowledge (subj_id, sem_r, hour, hour_lec, hour_pr, hour_lab, attest_id) 
values 
(1,1, 180,20,20,40,1),
(1,2,240,40,80,40,1),
(1,3,200,30,60,40,2),
(5,6,180,30,0,60,1),
(5,7,280,40,60,60,2),
(6,5, 188,32,20,64,1),
(8,2,240,40,40,60,2),
(5,3,200,32,40,56,2),
(3,1, 160,30,10,60,2),
(1,1, 240,56,0,112,2),
(1,2, 140,30,60,0,2),
(1,3,180,40,0,80,2),
(7,6, 170,36,0,72,1),
(2,2,240,60,60,0,2),
(4,4,137,28,24,28,2);

insert into attest (vid_attest) 
values 
('�������'),
('�����'),
('������������������ �����');

insert into spec (name_spec) 
values 
('������������ ����������'),
('���������� ����������� � ���������'),
('�������������� ������� � ����������');

insert into lecturer (family,name,last_name,inst_id) 
values ('������','������','��������',1),
	('����������','�������','������������',2),
	('��������','������','��������', 3),
	('����������','�����','���������',4),
	('������','��������','����������',5),
	('��������','�������','��������',6),
	('�������','�������','����������',1),
	('��������','�������','������������',2);


insert into subject (subj_name) 
values ('������ ����������'),
('������ �����������'),
('�������� ����'),
('������� ������'),
('���������'),
('���'),
('��������'),
('�����');

insert into institute (inst_name) 
values ('��'),
('����'),
('���'),
('���'),
('����'),
('���');

insert into nagruzka (lect_id, kvant_id) 
values
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(1, 2),
(5, 2),
(5, 4),
(6, 5),
(3, 4),
(7, 6),
(8, 2),
(8, 1),
(4, 7),
(5, 4);

insert into exam (student_id, mark,exam_date, nagr_id) 
values 
( 1,3,'2003.06.13',6),
( 2,4,'2002.12.10',7),
( 3,3,'2003.12.19',7),
( 4,5,'2002.12.10',8),
( 5,4,'2002.12.10',8),
( 6,3,'2002.12.10',8),
( 7,2,'2003.05.24',2),
( 8,3,'2002.12.10',7),
( 9,2,'2002.12.26',5),
(10,4,'2003.06.13',6),
(11,5,'2002.12.10',7),
(12,5,'2001.12.08',4),
(13,5,'2003.05.24',1),
(14,5,'2002.12.10',8),
(15,3,'2003.05.24',3),
(16,4,'2003.05.07',2),
(17,2,'2003.05.24',2),
(18,5,'2002.12.10',7),
(19,3,'2003.05.07',2),
(20,2,'2003.06.13',6),
(21,4,'2001.12.08',4),
(22,3,'2002.12.26',5),
(23,4,'2003.05.07',2),
(24,3,'2001.12.08',4),
(25,4,'2002.12.10',8),
(26,3,'2003.06.13',6),
(27,4,'2003.05.07',1),
(28,4,'2002.12.26',6),
(29,4,'2003.05.07',1),
(30,5,'2003.06.13',6),
(31,3,'2002.12.10',7),
(32,5,'2003.05.07',1),
(33,2,'2001.12.08',4),
(34,2,'2003.06.13',6),
(35,4,'2003.05.07',1),
(36,3,'2003.05.07',1),
(37,5,'2003.05.07',1),
(38,2,'2003.05.24',2),
(39,4,'2003.06.13',6),
(40,3,'2003.05.07',2),
(41,3,'2002.12.10',8),
(42,3,'2003.05.07',2),
(43,5,'2003.06.13',6),
(44,5,'2002.12.10',7),
( 4,3,'2002.06.18',6),
( 7,5,'2003.05.29',2),
(15,3,'2007.06.27',7),
( 7,5,'2002.05.12',8),
(14,5,'2003.09.11',7),
(14,5,'2002.10.12',4),
(34,4,'2003.10.12',6),
( 7,5,'2003.10.12',6),
( 8,3,'2003.10.12',6),
(20,5,'2003.10.12',6),
(41,3,'2003.10.12',6),
( 1,3,'2003.06.16',6),
( 1,4,'2004.06.16',8),
( 2,5,'2003.06.19',7),
( 3,5,'2004.12.18',6),
(14,2,'2002.12.10',8);

SELECT * FROM attest;
SELECT * FROM eduinst;
SELECT * FROM exam;
SELECT * FROM institute;
SELECT * FROM knowledge;
SELECT * FROM lecturer;
SELECT * FROM medali;
SELECT * FROM medalist;
SELECT * FROM nagruzka;
SELECT * FROM parents;
SELECT * FROM spec;
SELECT * FROM student;
SELECT * FROM subject;
SELECT * FROM town;
SELECT * FROM uch_plan;

--1
SELECT * FROM subject;

--2
SELECT * FROM institute;

--3
SELECT DISTINCT stipendia FROM student;

--4
SELECT DISTINCT course FROM student;

--5
SELECT family, name, last_name, birthday FROM student ORDER BY family, name, last_name, birthday ASC;

--6
SELECT family, course, birthday FROM student ORDER BY course ASC, birthday ASC;

--7
SELECT lect_id, family, name, last_name FROM lecturer;

--8
SELECT family, name, last_name FROM student WHERE stipendia != 0 ORDER BY stipendia DESC, family ASC;

--9
SELECT family, name, last_name, course FROM student WHERE course = 1 ORDER BY family ASC;

--10
SELECT family, name, last_name, course FROM student WHERE course = 2 or course = 3;

--11
SELECT family, name, last_name, course FROM student WHERE course = 2 or course = 4 or course = 5;
SELECT family, name, last_name, course FROM student WHERE not course = 1 or not course = 3;

--12
SELECT DISTINCT subject.subj_id, subj_name from subject, exam, knowledge, nagruzka
WHERE mark = 5 and exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id;

--13
SELECT DISTINCT subj_name, hour FROM subject, knowledge, exam, nagruzka
WHERE mark = 2 and exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id;

--14
SELECT DISTINCT family, name, last_name, subj_name FROM exam, student, town, parents, subject, knowledge, nagruzka
WHERE town.town_id = 4 and parents.town_id = town.town_id and exam.student_id = student.student_id and student.student_id = parents.student_id
and exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id and subj_name = '���������';

--15
SELECT family, name, last_name, mark, subj_name FROM student, exam, subject, nagruzka, knowledge
WHERE exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id 
and exam.student_id = student.student_id and mark != 2
ORDER BY subj_name ASC, mark DESC, family ASC;

--16
SELECT subj_name, mark, family, name, last_name FROM student, exam, subject, nagruzka, knowledge
WHERE mark = 2 and exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id 
and exam.student_id = student.student_id
and subject.subj_name = '������ ����������' ORDER BY subj_name ASC, mark DESC, family ASC;

--17
SELECT DISTINCT family, name, last_name, town_name FROM student, parents, eduinst, medali, medalist, town
WHERE medali.medal_id = medalist.medal_id and medalist.student_id = student.student_id
and parents.student_id = student.student_id and parents.town_id = town.town_id and medalist.medal_id = 2;

--18
SELECT DISTINCT subj_name, family, exam_date FROM student, exam, subject, nagruzka, knowledge
WHERE exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id and knowledge.subj_id = subject.subj_id 
and exam.student_id = student.student_id and mark = 2
ORDER BY subj_name ASC, family DESC;

--19
SELECT DISTINCT family, name, last_name FROM exam, student
WHERE exam.student_id = student.student_id and (exam_date = '2019-06-13' or exam_date = '2019-05-24') and exam.mark = 2;

--20
SELECT student.family, lecturer.family, exam_date, subj_name FROM student, subject, exam, lecturer, nagruzka, knowledge
WHERE exam.student_id = student.student_id and exam.nagr_id = nagruzka.nagr_id and nagruzka.kvant_id = knowledge.kvant_id 
and knowledge.subj_id = subject.subj_id
and exam.nagr_id = nagruzka.nagr_id and nagruzka.lect_id = lecturer.lect_id and mark = 5;

--21
SELECT DISTINCT inst_name, family FROM exam, institute, knowledge, lecturer, subject, nagruzka
WHERE mark = 2 and exam.nagr_id = nagruzka.nagr_id and nagruzka.lect_id = lecturer.lect_id and lecturer.inst_id = institute.inst_id
and nagruzka.kvant_id = knowledge.kvant_id and knowledge.hour >= 80;

--���������� �������

--2

SELECT SIN(123.321);
SELECT FLOOR(123.321);
SELECT CEILING(123.321);
SELECT EXP(123.321);
SELECT SQRT(123.321);
SELECT ROUND(123.321, 1);
SELECT LOG(123.321);
SELECT LOG10(123.321);

--3

SELECT ('��� ') + ('����� ������');
SELECT CHARINDEX('�����', '�����������');
SELECT CHARINDEX('i', '�����������');
SELECT LEFT('�����������', '3');
SELECT RIGHT('�����������', '3');
