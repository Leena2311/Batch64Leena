use cs;


create table department(
deptid int primary key auto_increment,
deptname varchar(20)
);

insert into department values (101,'IT'),(102,'Sales'),(103,'QA');

select * from department;

desc department;

create table employee(
eid int primary key,
ename varchar(20),
deptinfo int,
foreign key (deptinfo) references department (deptid)
);

select * from employee;

desc employee;

insert into employee values(1,'Pooja',101);

 insert into employee values(2,'Neha',105);

insert into employee(eid,ename) values (2,'Swati');

-- null values inserted
insert into employee values(3,'Uddesh',null);


-- duplicate values inserted
insert into employee values(5,'Swapnil',102);