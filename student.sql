create table department
(
    Deptid varchar2(10),
    Deptname varchar2(100),
    primary key (Deptid)
);

create table student
(
    Usn varchar2(10),
    Name varchar2(100),
    Age number(2),
    CGPA number(4,2),
    Deptid varchar2(10),
    primary key (usn),
    foreign key (Deptid) references department (Deptid)
);

insert into DEPARTMENT values ('CSE', 'COMPUTER SCIENCE ENGINEERING');
insert into DEPARTMENT values ('ISE', 'INFORMATION SCIENCE ENGINEERING');
insert into DEPARTMENT values ('CV', 'CIVIL ENGINEERING');
insert into DEPARTMENT values ('ME', 'MECHANICAL ENGINEERING');
insert into DEPARTMENT values ('BIO', 'BIOTECH ENGINEERING');

SELECT * FROM DEPARTMENT;

COMMIT;

DROP TABLE STUDENT;

insert into STUDENT values ('063', 'NITESH', 20, 10.5, 'CSE');
insert into STUDENT values ('062', 'NIMIT', 19, 9.5, 'ISE');
insert into STUDENT values ('064', 'RUTAZEET ROUT', 19, 8.5, 'CV');
insert into STUDENT values ('065', 'PARAG GATTANI', 20, 8.5, 'ME');
insert into STUDENT values ('066', 'NIDHISH LAKHINANA', 18, 7.5, 'BIO');

SELECT *FROM STUDENT;

COMMIT;

SELECT * FROM STUDENT;

SELECT * FROM STUDENT WHERE CGPA>8.0;
