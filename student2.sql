create table student(regno varchar2(20), name varchar(20), major varchar(20), bdate varchar(20), primary key(regno));
create table course(course_id varchar(20), cname varchar(20), dept varchar(20), primary key(course_id));
create table text(ISBN number(20), title varchar (20), publisher varchar(20), author varchar(20), primary key(ISBN));
create table book_adoption(course_id varchar(20), ISBN number(20), sem number(10), foreign key(course_id) references course(course_id) ON DELETE CASCADE, foreign key(ISBN) references text(ISBN) ON DELETE CASCADE);
create table enroll(regno varchar(20), course_id varchar(20), sem number(10), marks number(10), foreign key(regno) references student(regno) ON DELETE CASCADE, foreign key(course_id) references course(course_id) ON DELETE CASCADE);

drop table book_adoption;
drop table text;
drop table enroll;

insert into student values('1DB01IS01', 'KIRAN', 'ISE', '02-JAN-84');
insert into student values('1DB01CS02', 'DIVYA', 'CSE', '12-OCT-85');
insert into student values('1DBO1ME03', 'BABU', 'MECH', '23-SEP-82');
insert into student values('1DB01EC04', 'JOHN', 'E and C', '21-FEB-84');
insert into student values('1DB01CS05', 'ASHA', 'CSE', '07-OCT-79');

insert into course values('11', 'DCS', 'CSE');
insert into course values('22', 'ADA', 'CSE');
insert into course values('33', 'CN', 'E and C');
insert into course values('44', 'TD', 'MECH');
insert into course values('55', 'MUP', 'E and C');

insert into text values( 7722, 'VB', 'PHI', 'HOLZNER');
insert into text values( 1144, 'DS WITH C', 'SAPNA', 'NANDAGOPAL');
insert into text values( 4400, 'C PROG', 'PHI', 'BALAGURU');
insert into text values( 5566, 'CN', 'PHI', 'TENENBAUM');
insert into text values( 3388, 'MP', 'TATA', 'BREY');

insert into book_adoption values('11', 7722, 3);
insert into book_adoption values('22', 7722, 4);
insert into book_adoption values('11', 4400, 5);
insert into book_adoption values('11', 5566, 8);
insert into book_adoption values('55', 3388, 4);
insert into book_adoption values('44', 5566, 4);
insert into book_adoption values('44', 3388, 7);

select * from book_adoption;

insert into enroll values('1DB01IS01', '22', 5, 76);
insert into enroll values('1DB01IS01', '11', 3, 90);
insert into enroll values('1DB01CS02', '33', 6, 55);
insert into enroll values('1DBO1ME03', '22', 5, 75);
insert into enroll values('1DB01CS05', '44', 5, 75);

select * from enroll;

select C.course_id, T.ISBN, T.title from text T, course C, book_adoption B where C.dept = 'CSE' AND C.course_id = B.course_id AND B.ISBN = T.ISBN order by T.title;
