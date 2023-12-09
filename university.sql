/*
creat database
*/

create database university ;

/*
creat table 
*/
create table Student(
StudentID int  ,
FirstName varchar(55)  not null,
LastName varchar(55) not null,
Gender varchar(20) not null,
DateOfBirth date  not null,
Email varchar(20));

INSERT INTO Student (StudentID, FirstName, LastName, Gender, DateOfBirth, Email)
VALUES
(1, 'Youssef', 'Esam', 'Male', '2004-03-12', 'Yousse@gmail.com'),
(2, 'ahmed', 'Allah', 'Male', '2004-11-13', 'ahmed@gmail.com'),
(3, 'Yara', 'Amr', 'female', '2003-10-31', 'Yara@gmail.com'),
(4, 'shahd', 'sherif', 'female', '2003-10-01', 'shahd@gmail.com'),
(5, 'Nermen', 'Ahmed', 'female', '2002-06-24', 'Nermen@gmail.com'),
(6, 'Salma', 'Elsayed', 'female', '2004-02-21', 'Salma@gmail.com'),
(7, 'Kholoud', 'Amr', 'female', '2002-10-11', 'Kholoud@gmail.com');



create table ContactNumber_st(
ContactNumber int ,
StudentID int);

INSERT INTO ContactNumber_st (StudentID, ContactNumber)
values(1,"111111"),
(2,"222222"),
(3,"333333"),
(4,"444444"),
(5,"555555"),
(6,"666666"),
(7, "777777");

create table lecture(
lectureID  int ,
Schedule int  not null,
RoomNumbe int  not null,
InstructorID int);

INSERT INTO lecture (lectureID, Schedule,RoomNumbe,InstructorID)
values
(205 ,2,2,502),
(206,3,2,503),
(207,4,1,504),
(208,5,5,505),
(209,6,6,506),
(210,7,7,507);


create table course(
course_id int,
duration int,
course_name varchar(100),
Description  varchar(100),
credits varchar(20));

INSERT INTO course (course_id, Description, course_name, duration, credits)
VALUES
(301, 'Machine Learning', 'ML', 24, 3),
(302, 'Structured Query Language', 'SQL', 24, 3),
(303, 'Cascading Style Sheets', 'CSS', 24, 2),
(304, 'Programming with Python', 'Python', 24, 4),
(305, 'Java Programming', 'Java', 24, 4),
(306, 'JavaScript Programming', 'JavaScript', 24, 3),
(307, 'Hypertext Markup Language', 'HTML', 24, 2);



create table enrollment(
enrollment_id int  ,
enrollment_data date not null,
student_id int  ,
course_id int  );

INSERT INTO enrollment (enrollment_id, enrollment_data, student_id, course_id)
VALUES
(600, '2020-02-02', 1, 301),
(601, '2021-03-03', 2, 302),
(602, '2022-04-04', 3, 303),
(603, '2023-05-05', 4, 304),
(604, '2024-06-06', 5, 305),
(605, '2025-07-07', 3, 306),
(606, '2026-08-08', 7, 307);


create table instructor(
instructor_id int  ,
fs_name varchar(50),
ls_name varchar(50),
email varchar(100));

INSERT INTO instructor (instructor_id, fs_name, ls_name, email)
VALUES
(501, 'Ali', 'Mohamed',  'Ali@gmail.com'),
(502, 'Moamen ', 'Tarek', 'Moamen@gmail.com'),
(503, 'Bahaa', 'Gamal', 'Bahaa@gmail.com'),
(504, 'Omar', 'sherif',  'Omar@gmail.com'),
(505, 'Mai', 'Ahmed', 'Mai@gmail.com'),
(506, 'Mariam' , 'Maher' , 'Mariam@gmail.com'),
(507, 'Mazen' , 'Amr' , 'Mazen@gmail.com');


create table teach(
number_of_hours_subjects int ,
courses_id int ,
instructor_id int );



INSERT INTO teach(number_of_hours_subjects ,courses_id, instructor_id)
VALUES
(9, 301,501),
(8,302,502),
(7,303,503),
(11,304,504),
(10,305,505),
(12,306,506),
(15,307,507);


 create table speciallzation(
 speciallzation varchar(100),
 instructor_id int   );
 
INSERT INTO speciallzation (speciallzation , instructor_id)
VALUES
(' database administrator' , 501),
('database analyst' , 502),
('database developer', 503),
(' database manager', 504),
('database Specialist', 505),
('database engineer' , 506),
('database security' , 507);


create table contactnumber(
contactnumber varchar(11)  ,
insructor_id int   );



INSERT INTO contactnumber (contactnumber , insructor_id)
VALUES
('111111',501),
('222222',502),
('333333',503),
('444444',504),
('555555',505),
('666666',506),
('777777',507);



create table Assignmet ( 
AssignmentID int ,
Duedate date not null,
Description varchar (100) not null , 
LectureID int ) ; 

INSERT INTO Assignmet (AssignmentID, Duedate, Description, LectureID) 
VALUES 
(401, '2024-02-01', 'Machine Learning', 205),
(402, '2022-03-01', 'Structured Query Language', 206),
(403, '2023-04-01', 'Cascading Style Sheets', 207),
(404, '2024-05-01', 'Programming with Python', 208),
(405, '2025-06-01', 'Java Programming', 209),
(406, '2025-07-01', 'JavaScript Programming', 210);


 
create table record(
number_of_supject int ,
course_id int ,
student_id int );

insert into record (number_of_supject ,course_id, student_id) 
 values 
 (5, 301, 1),
 (6, 302,2),
 (10, 303,3),
 (9, 304,4),
 (7, 305,5),
 (8, 306,6),
 (4, 307,7);


/*
insert primary key 
*/

alter table Student 
add constraint Student_pk primary key(StudentID);


alter table  Enrollment
add constraint  enrollmentID_pk  primary key(enrollment_id);

alter table  Course
add constraint courseID_pk  primary key(course_id);

alter table  Instructor
add constraint Instructor_pk  primary key(instructor_id);

alter table  Assignmet
add constraint Assignment_pk  primary key(AssignmentID );

alter table  lecture
add constraint lecture_pk  primary key(lectureID );

alter table  speciallzation
add constraint speciallzation_pk primary key(speciallzation);

alter table  teach
add constraint number_of_subjects_pk primary key(number_of_hours_subjects);


alter table  ContactNumber
add constraint ContactNumber_pk primary key( ContactNumber);

alter table  ContactNumber_st
add constraint ContactNumber_pk primary key( ContactNumber);


alter table  record
add constraint number_of_hours_pk primary key(number_of_supject);


/*
insert  foreign key
*/ 


alter table record 
add constraint student_fk  foreign key(student_id)
references  student(StudentID);

alter table record 
add constraint course_fk  foreign key(course_id)
references  course(course_id);


alter table enrollment 
add constraint course_fkEn  foreign key(course_id)
references  course(course_id);

alter table enrollment 
add constraint student_fkEn  foreign key(student_id)
references  student(StudentID);
 
alter table assignmet 
add constraint Lecture_fkAs  foreign key(LectureID)
references  lecture(LectureID);

alter table lecture 
add constraint Instructor_fkle  foreign key(InstructorID)
references  instructor(instructor_id);


alter table teach 
add constraint course_fkre foreign key(courses_id)
references  course(course_id);

alter table teach 
add constraint instructor_fkre foreign key(instructor_id)
references  instructor(instructor_id);


alter table speciallzation 
add constraint instructor_fkSp foreign key(instructor_id)
references  instructor(instructor_id);

alter table contactnumber 
add constraint instructor_fkco foreign key(insructor_id)
references  instructor(instructor_id);


alter table contactnumber_st
add constraint student_fkst foreign key(StudentID)
references  Student(StudentID);



CREATE VIEW my_view_join AS
SELECT * FROM lecture l INNER JOIN instructor i ON l.InstructorID = i.instructor_id;


select*from speciallzation;
