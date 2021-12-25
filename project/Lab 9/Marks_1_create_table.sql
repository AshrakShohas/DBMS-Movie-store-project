drop table STUDENT;

CREATE TABLE STUDENT
(
roll_no number(4) PRIMARY KEY,
name varchar2(50) NOT NULL,
marks number(3),
grade char(1),
course_id number(4)
);
