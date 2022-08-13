
create database QLHV;
use QLHV;
create table Address(
id int primary key auto_increment,
address varchar(255)
);
create table Classes(
id int auto_increment primary key,
name varchar(255) not null,
language varchar(255) not null,
description varchar(255) not null
);
create table Students(
id int auto_increment primary key,
fullname varchar(255) not null,
address_id int not null,
age int not null,
phone int not null unique,
class_id int not null,
foreign key(address_id) references Address(id),
foreign key(class_id) references Classes(id)
);
create table Course(
id int auto_increment primary key,
name varchar(255) not null,
description varchar(255) not null
);
create table Point(
id int primary key auto_increment,
course_id int not null,
student_id int not null,
point int not null,
foreign key(course_id) references Course(id),
foreign key(student_id) references Students(id)
);
insert into Address(address) values('bac ninh');
insert into Address(address) values('bac giang');
insert into Address(address) values('bac ha');
insert into Address(address) values('bac bi');
insert into Address(address) values('bac ni');

insert into Classes(name,language,description) values('1A','viet','Van hoc');
insert into Classes(name,language,description) values('3B','anh','ngu phap');
insert into Classes(name,language,description) values('4C','phap','sung truong');
insert into Classes(name,language,description) values('6A','nga','cuoi gau ');
insert into Classes(name,language,description) values('7B','trung','cuoi ngua');

insert into Students(fullname,address_id,age,phone,class_id) values('duc anh',1,18,013744,5);
insert into Students(fullname,address_id,age,phone,class_id) values('hieu',2,21,033744,4);
insert into Students(fullname,address_id,age,phone,class_id) values('phuong anh',3,19,199373744,3);
insert into Students(fullname,address_id,age,phone,class_id) values('nguyen trong',4,18,0936373744,2);
insert into Students(fullname,address_id,age,phone,class_id) values('quang anh',5,18,0937343744,1);
insert into Students(fullname,address_id,age,phone,class_id) values('hiep',1,18,0393753744,5);
insert into Students(fullname,address_id,age,phone,class_id) values('batran',2,20,0293373744,4);
insert into Students(fullname,address_id,age,phone,class_id) values('nguyen hoang',3,17,0923723744,3);
insert into Students(fullname,address_id,age,phone,class_id) values('yen',4,18,0923737544,2);
insert into Students(fullname,address_id,age,phone,class_id) values('nguyen huu quyet',5,18,029373744,1);

insert into Course(name,description) values ('Ky nang mem','ky nang giao tiep');
insert into Course(name,description) values ('java','code');
insert into Course(name,description) values ('maketing','quang cao');
insert into Course(name,description) values ('thuong mai','buon ban');
insert into Course(name,description) values ('tester','test');
insert into Course(name,description) values ('nau an','nau nuong');
insert into Course(name,description) values ('khoc thue','khoc');
insert into Course(name,description) values ('y hoc','chua benh');
insert into Course(name,description) values ('phi cong','lai may bay');
insert into Course(name,description) values ('xxx','xxx');

insert into Point(course_id,student_id,point) values(1,10,15000);
insert into Point(course_id,student_id,point) values(2,9,20000);
insert into Point(course_id,student_id,point) values(3,8,30000);
insert into Point(course_id,student_id,point) values(4,7,40000);
insert into Point(course_id,student_id,point) values(5,6,50000);
insert into Point(course_id,student_id,point) values(6,5,60000);
insert into Point(course_id,student_id,point) values(7,4,70000);
insert into Point(course_id,student_id,point) values(8,3,80000);
insert into Point(course_id,student_id,point) values(9,2,90000);
insert into Point(course_id,student_id,point) values(10,1,10000);
insert into Point(course_id,student_id,point) values(8,5,5000);
insert into Point(course_id,student_id,point) values(7,6,110000);
insert into Point(course_id,student_id,point) values(6,7,155000);
insert into Point(course_id,student_id,point) values(5,8,1500);
insert into Point(course_id,student_id,point) values(4,9,14000);
insert into Point(course_id,student_id,point) values(4,10,15000);
select * from Address;
select * from Classes;
select * from Students;
select * from Course;
select * from Point;

use qlhv;
select * from students where fullname like '%nguyen%';
select * from students where fullname like '%anh%';
select * from students where age<19 and age>15;
select * from students where id =8 or id=9;

select Classes.id,Classes.name, count('số lượng') 
from Students,Classes 
where Students.class_id= classes.id
group by name;
select Address.id, address.address,count('số lượng')
from Students, Address
where Students.address_id= Address.id
group by id;
select avg(point) from point;

-- Đưa ra khóa học có điểm trung bình cao nhất (max)
select * from course ;
select * from Point;
select * from course join point on course.id= point.course_id ;
