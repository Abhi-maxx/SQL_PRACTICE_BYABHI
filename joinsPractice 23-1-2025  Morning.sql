
---SELECT * FROM information_schema.tables WHERE table_name = 'StudentBatch';


create table Student(
studentId int  primary key,
studentName varchar(30) ,
studentAge int ,
);

create table StudentBatch(

studentBatchId int primary key  ,
studentId int,
studentaddhar varchar(17),
studentDegree varchar(20),
foreign key (studentId) references Student (studentId)

on delete cascade
on update cascade
)
----Third Table 
create table PersonalInfo (
Pinfo int primary key ,
studentBatchId int ,
pgf varchar (30),
boodGroupInfo varchar(10)

foreign key (studentBatchId) references  StudentBatch(studentBatchId)
);






INSERT INTO Student VALUES (1, 'Rahul Divekar', 23);
INSERT INTO Student VALUES (2, 'Sneha Patil', 22);
INSERT INTO Student VALUES (3, 'Amit Kulkarni', 24);
INSERT INTO Student VALUES (4, 'Priya Deshmukh', 21);
INSERT INTO Student VALUES (5, 'Rohit Shinde', 23);
INSERT INTO Student VALUES (6, 'Pooja Joshi', 22);
INSERT INTO Student VALUES (7, 'Aniket Pawar', 25);
INSERT INTO Student VALUES (8, 'Meera Khare', 20);
INSERT INTO Student VALUES (9, 'Siddharth More', 23);
INSERT INTO Student VALUES (10, 'Komal Jadhav', 22);


-------- Now i am going to insert  anather tables 
INSERT INTO StudentBatch VALUES (1, 1, 556677889999, 'BSC CS');
INSERT INTO StudentBatch VALUES (2, 2, 556677889998, 'BSC IT');
INSERT INTO StudentBatch VALUES (3, 3, 556677889997, 'BCA');
INSERT INTO StudentBatch VALUES (4, 4, 556677889996, 'MCA');
INSERT INTO StudentBatch VALUES (5, 5, 556677889995, 'BSC Physics');
INSERT INTO StudentBatch VALUES (6, 6, 556677889994, 'BSC Mathematics');
INSERT INTO StudentBatch VALUES (7, 7, 556677889993, 'BSC Chemistry');
INSERT INTO StudentBatch VALUES (8, 8, 556677889992, 'MSC IT');
INSERT INTO StudentBatch VALUES (9, 9, 556677889991, 'MBA');
INSERT INTO StudentBatch VALUES (10, 10, 556677889990, 'BBA');

-----------------------------------  3RD DATA INSERTION ---------------------------------

INSERT INTO PersonalInfo (Pinfo, studentBatchId, pgf, boodGroupInfo) 
VALUES (1, 1, 'Rina', 'O+');

INSERT INTO PersonalInfo (Pinfo, studentBatchId, pgf, boodGroupInfo) 
VALUES (2, 2, 'Sneha', 'A+');

INSERT INTO PersonalInfo (Pinfo, studentBatchId, pgf, boodGroupInfo) 
VALUES (3, 3, 'Gyatri', 'B+');

INSERT INTO PersonalInfo (Pinfo, studentBatchId, pgf, boodGroupInfo) 
VALUES (4, 4, 'Priya', 'O-');

INSERT INTO PersonalInfo (Pinfo, studentBatchId, pgf, boodGroupInfo) 
VALUES (5, 5, 'Rohini', 'AB+');













  -----INNER JOIN START HERE--------------------------------------

select Student.studentId ,Student.studentName,studentAge
, StudentBatch.studentaddhar,StudentBatch.studentDegree
from Student
inner join StudentBatch 
on 
Student.studentAge = StudentBatch.studentId 


SELECT Student.studentId, Student.studentName, Student.studentAge,
       StudentBatch.studentaddhar, StudentBatch.studentDegree, PersonalInfo.pgf,PersonalInfo.boodGroupInfo
FROM Student
INNER JOIN StudentBatch
ON Student.studentId = StudentBatch.studentId  -- Join on studentId
inner join PersonalInfo
ON StudentBatch.studentBatchId = PersonalInfo.studentBatchId;



