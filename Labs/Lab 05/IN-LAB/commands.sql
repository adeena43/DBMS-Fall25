CREATE TABLE Department (
    Dep_ID INT PRIMARY KEY,
    Dep_Name VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    Std_ID INT PRIMARY KEY,
    Std_Name VARCHAR(100) NOT NULL,
    Dep_ID INT,
    GPA DECIMAL(3,2),
    Fee_Paid DECIMAL(12,2),
    FOREIGN KEY (Dep_ID) REFERENCES Department(Dep_ID)
);

create table faculty(
id int primary key,
name varchar(20)
);
alter table student add (f_id int ,CONSTRAINT fk_emp_dept foreign key(f_id) references faculty(id));

select s.Std_ID,s.Std_Name,s.gpa ,f.name as fac_name from student s inner join faculty f on s.f_id = f.id;--dono k common fetch
select s.Std_ID,s.Std_Name,s.gpa ,f.name as fac_name from student s left join faculty f on s.f_id = f.id;--left ka pura table (right common wala srf or uncommon m null)
select s.Std_ID,s.Std_Name,s.gpa ,f.name as fac_name from student s right join faculty f on s.f_id = f.id;-- right ka pura table (left common..........................)
alter table faculty add mentot_id int;
--self join
update FACULTY set mentot_id=1 where id in (2,3);
select f.id,f.name ,m.name as mentor_name from faculty f inner join faculty m on f.MENTOT_ID=m.ID;
--cross join returns all possible outcomes
select s.*,f.name as f_name from student s  cross join FACULTY f;
--full outer join all rows are feched for both left and right complete data of both tables
select s.*,f.name as f_name from student s  full outer join FACULTY f on s.F_ID=s.STD_ID;
--- in lab task
CREATE TABLE Employee  (
    ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Dep_ID INT,
    FOREIGN KEY (Dep_ID) REFERENCES Department(Dep_ID)
);

insert into DEPARTMENT (dep_id,dep_name) values (2,'CS') ;
insert into employee (id , Name , dep_id) values (5,'adina', 2) ;
select e.*,d.dep_name as dep_name from employee e  cross join DEPARTMENT d;
select e.*,d.dep_name as dep_name from employee e  left join DEPARTMENT d on e.id=d.DEP_ID;
