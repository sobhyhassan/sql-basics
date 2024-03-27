create table EmployeeDemographics(em_id int,em_name varchar(50),em_lname varchar(50),em_age int,em_gender varchar(50))
insert into EmployeeDemographics values
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')
select*from EmployeeDemographics

create table EmployeeSalary (em_id int,job_tit varchar(50),salary int)
insert into EmployeeSalary values
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)
select*from EmployeeSalary
------------------------------------------------------------------------------
-- select statment
select em_name,em_gender from EmployeeDemographics
select distinct* from EmployeeDemographics
select distinct(em_gender) from EmployeeDemographics
select count(em_lname) from EmployeeDemographics -- number of not null values
select max(salary) from EmployeeSalary
select min(salary) from EmployeeSalary
select avg(salary) from EmployeeSalary
select * from Sql_sobhy.dbo.EmployeeDemographics -- another select
------------------------------------------------------------------------------
-- where statment
select* from Sql_sobhy.dbo.EmployeeDemographics where em_name = 'Kevin'
select* from Sql_sobhy.dbo.EmployeeDemographics where em_name <> 'Kevin' -- not equal
select* from Sql_sobhy.dbo.EmployeeDemographics where em_age >= 30
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_age >= 30 AND em_gender = 'Male'
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_age >= 30 or em_gender = 'Male'
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_name like 's%' -- start with 's'
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_lname like '%s%'-- contan 's' enywhere
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_lname like 's%f%' -- start with s and contan f in madel
select* from Sql_sobhy.dbo.EmployeeDemographics 
where em_lname like '%t' -- t in the end
select *from Sql_sobhy.dbo.EmployeeDemographics
where em_lname in ('Halpert','Scott')
-------------------------------------------------------------------------
-- group by
select em_gender from Sql_sobhy.dbo.EmployeeDemographics
group by(em_gender)
select em_gender,count(em_name) from Sql_sobhy.dbo.EmployeeDemographics
group by(em_gender)
select em_gender,count(em_name) from Sql_sobhy.dbo.EmployeeDemographics
where em_age > 30
group by(em_gender)
-------------------------------------------------------------------------
-- order by
select * from Sql_sobhy.dbo.EmployeeDemographics
order by em_age ASC
select * from Sql_sobhy.dbo.EmployeeDemographics
order by em_age DESC
select * from Sql_sobhy.dbo.EmployeeDemographics
order by em_age,em_gender ASC
select * from Sql_sobhy.dbo.EmployeeDemographics
order by 4 ASC -- number of col