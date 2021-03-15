use pucsdStudents;

create table studentDetails ( Name varchar(30) not null, Rollno int, Address varchar(50), Mobile_No numeric(10) not null, PAN_No varchar(8), primary key (Rollno) );

insert into studentDetails values('Josna Titus', '19112041', 'Kerala', '9767022312', 'ABC2041');
insert into studentDetails values('Mansi More', '19111201', 'Mumbai', '9727292911', 'ABC1201');
insert into studentDetails values('Seema Kamble', '19112014', 'Ahmednagar', '9876456790', 'ABC2014');
insert into studentDetails values('Anjali Philip', '19111015', 'Pune', '9823560192', 'ABC1015');
insert into studentDetails values('Jisha Titus', '19112012', 'Dubai', '9827860192', 'ABC12012');


