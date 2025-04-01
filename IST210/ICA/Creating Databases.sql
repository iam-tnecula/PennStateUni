drop table PARKING;
drop table STUDENT;

create table STUDENT (
	ID			CHAR(30),
    FirstName	CHAR(30),
    LastName	CHAR(30),
    Phone 		CHAR (12) unique,
    primary key(ID)
);
create table PARKING (
	TNo			INT,
    TimeIn		DATETIME,
    TimeOut		DATETIME,
    STUDENT_ID	CHAR(30),
    primary key(TNo),
    foreign key(STUDENT_ID) references STUDENT(ID)
);
insert into STUDENT values(1,'A','B',null);
insert into STUDENT values(2,'C','B',null);
select * from STUDENT;
insert into PARKING values(1,now(),now(),2);
select * from PARKING;