create table employees(
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
	values 	('Ivanov'),
		('Petrov'),
		('Popov'),
		('Sinicun'),
		('Kovalov'),
		('Kryglov'),
		('Puliyta'),
		('Talalaev'),
		('Sokolov'),
		('Bandurko'),
		('Cooper'),
		('Bondarenk'),
		('Bondarchuk'),
		('Boroda'),
		('Bubenko'),
		('Butenko'),
		('Butko'),
		('Kavun'),
		('Kalinichenko'),
		('Klymenko'),
		('Koval'),
		('Kovalenko'),
		('Kovalchuk'),
		('Kozlovsky'),
		('Kolesnichenko'),
		('Kolomiets'),
		('Kondratyuk'),
		('Kornienko'),
		('Kravets'),
		('Kravchenko'),
		('Kravchuk'),
		('Krasko'),
		('Kushnir'),
		('Kushnirenko'),
		('Kushnirchuk'),
		('Matvievko'),
		('Marchenko'),
		('Melnichenko'),
		('Melnichuk'),
		('Merezko'),
		('Mirgorodsky'),
		('Mikhalenko'),
		('Palamarchuk'),
		('Pilipenko'),
		('Poleschuk'),
		('Ponomarenko'),
		('Ponomarchuk'),
		('Pridius'),
		('Pushkar'),
		('Serbin'),
		('Serdyuk'),
		('Silchenko'),
		('Sklyar'),
		('Sobko'),
		('Sopilnyak'),
		('Spivak'),
		('Stelmakh'),
		('Steblitsky'),
		('Garmash'),
		('Gerasimenko'),
		('Grabar'),
		('Goncharenko'),
		('Goncharuk'),
		('Lavrenko'),
		('Lazarenko'),
		('Linnik'),
		('Lysenko'),
		('Lisovets'),
		('Lyubchenko'),
		('Prokopenko');
	
 create table salary(
id serial primary key,
monthly_salary int not null
);
 
select * from salary;

insert into salary(monthly_salary)
	values 	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
	values 	(1, 5),
		(3, 7),
		(7, 1),
		(2, 12),
		(4, 6),
		(6, 1),
		(40, 11),
		(12, 3),
		(25, 15),
		(20, 4),
		(15, 9),
		(10, 1),
		(35, 10),
		(18, 8),
		(14, 2),
		(55, 13),
		(48, 1),
		(33, 14),
		(69, 5),
		(17, 9),
		(61, 10),
		(52, 11),
		(37, 7),
		(29, 4),
		(50, 9),
		(59, 12),
		(22, 15),
		(45, 8),
		(65, 1),
		(51, 5),
		(90, 3),
		(102, 6),
		(84, 12),
		(71, 2),
		(93, 15),
		(77, 4),
		(86, 8),
		(101, 5),
		(91, 10),
		(75, 1);

create table roles(
id serial primary key,
role_name int not null unique
);
select * from roles;

alter table roles 
alter column role_name type varchar(30);

 insert into roles(role_name)
	values  ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'),
		('Junior_Java_developer'),
		('Middle_Java_developer'),
		('Senior_Java_developer'),
		('Juniorr_JavaScript_developer'),
		('Middle_JavaScript_developer'),
		('Senior_JavaScript_developer'),
		('Junior_Manual_QA_engineer'),
		('Middle_Manual_QA_engineer'),
		('Senior_Manual_QA_engineer'),
		('Project_Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales_Manager'),
		('Junior_Automation_Q_engineer'),
		('Middle_Automation_QA_engineer'),
		('Senior_Automation_QA_engineer');
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
	references employees(id),
	foreign key (role_id)
	references roles(id)
	);
select * from roles_employee;

insert into roles_employee(employee_id, role_id)
	values 	(8, 5),
		(1, 12),
		(45, 7),
		(22, 4),
		(10, 2),
		(48, 3),
		(64, 10),
		(15, 6),
		(35, 1),
		(5, 20),
		(55, 15),
		(44, 8),
		(25, 2),
		(50, 9),
		(61, 5),
		(37, 19),
		(29, 2),
		(59, 17),
		(40, 6),
		(24, 12),
		(52, 4),
		(68, 14),
		(31, 11),
		(21, 13),
		(4, 20),
		(65, 16),
		(13, 18),
		(69, 4),
		(20, 11),
		(36, 15),
		(62, 9),
		(42, 1),
		(23, 10),
		(26, 4),
		(51, 6),
		(67, 15),
		(57, 20),
		(46, 2),
		(30, 18),
		(47, 11);
