create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
);


create table roles_salary (
	id serial primary key,
	role_id int not null,
	salary_id int not null,
	foreign key (role_id)
		references roles(id),
	foreign key (salary_id)
		references salary(id)
);


insert into roles_salary(role_id, salary_id)
values  (1,1),
		(2,2),
		(3,6),
		(4,2),
		(5,4);
		
		
select * from roles_salary;
select * from roles;
select * from salary;

insert into salary(monthly_salary)
values  (300),
		(800),
		(1200),
		(1500),
		(1800),
		(2000),
		(2300),
		(2500),
		(2700),
		(3000),
		(3200);
	
	
update salary
set monthly_salary = 5000
where id = 11;


delete from salary
where id = 18;


alter table roles
add column parking int;


alter table roles 
rename column parking to taxi;


alter table roles
drop column taxi;


	
insert into roles(role_title)
values  ('QA_Manual_junior'),
		('QA_Manual_middle'),
		('QA_Manual_senior'),
		('Java_developer_junior'),
		('Java_developer_middle'),
		('Java_developer_senior'),
		('Manager');

	
delete from roles_salary 
where id >= 0;

delete from salary 
where id >= 0;

drop table roles_salary;
drop table salary;


select * from roles_salary;
select * from roles;
select * from salary;


--HW_SQL_DDL------------------------------

/* Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
*/
create table employees(
	id serial primary key,
	employee_name varchar(50) unique not null
);


/*Наполнить таблицу employee 70 строками. */
insert into employees(employee_name)
values  ('Александр'),
('Алексей'),
('Анатолий'),
('Андрей'),
('Анна'),
('Артем'),
('Борис'),
('Вадим'),
('Валентина'),
('Валерий'),
('Василий'),
('Вера'),
('Вероника'),
('Виктор'),
('Виталий'),
('Владимир'),
('Владислав'),
('Галина'),
('Геннадий'),
('Георгий'),
('Даниил'),
('Дарья'),
('Денис'),
('Дмитрий'),
('Евгений'),
('Екатерина'),
('Елена'),
('Иван'),
('Игорь'),
('Илья'),
('Ирина'),
('Кирилл'),
('Константин'),
('Лариса'),
('Лев'),
('Лидия'),
('Любовь'),
('Максим'),
('Маргарита'),
('Марина'),
('Мария'),
('Михаил'),
('Надежда'),
('Наталья'),
('Никита'),
('Николай'),
('Оксана'),
('Олег'),
('Ольга'),
('Павел'),
('Петр'),
('Роман'),
('Руслан'),
('Светлана'),
('Сергей'),
('София'),
('Станислав'),
('Тамара'),
('Татьяна'),
('Ульяна'),
('Федор'),
('Юлия'),
('Юрий'),
('Яна'),
('Ярослав'),
('Алина'),
('Алиса'),
('Амина'),
('Анастасия'),
('Анжела');
/*
 Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
*/
create table salary(
	id serial primary key,
	monthly_salary int not null
	);
	
/*
 Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 */

insert into salary(monthly_salary)
values  (1000),
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
		(2400),
		(2500);
		
	
/*
Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/
	
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
	
select * from employee_salary;

/*Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/


insert into employee_salary(employee_id, salary_id)
values  (1, 1),
		(2, 10),
		(3, 1),
		(4, 2),
		(5, 1),
		(6, 1),
		(7, 6),
		(8, 1),
		(9, 7),
		(10, 1),
		(11, 8),
		(12, 9),
		(13, 1),
		(14, 3),
		(15, 3),
		(16, 5),
		(17, 1),
		(18, 13),
		(19, 1),
		(20, 4),
		(21, 1),
		(22, 14),
		(23, 1),
		(24, 1),
		(25, 5),
		(26, 1),
		(27, 1),
		(28, 4),
		(29, 1),
		(30, 5), 
/*ниже несуществующие employee id*/
		(131, 2),
		(132, 6),
		(133, 6),
		(134, 10),
		(135, 12),
		(136, 5),
		(137, 7),
		(138, 4),
		(139, 9),
		(140, 10);
		
select * from employee_salary

/*Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
 */

create table roles(
	id serial primary key,
	role_name int not null unique
	);

/*Поменять тип столба role_name с int на varchar(30) */
alter table roles alter column role_name type varchar(30);

/*Наполнить таблицу roles 20 строками*/
insert into roles (role_name)
values  ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

/* Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
	);
	
/*Наполнить таблицу roles_employee 40 строками */

insert into roles_employee(employee_id, role_id)
values  (61, 1),
		(62, 10),
		(63, 1),
		(4, 2),
		(55, 17),
		(46, 18),
		(7, 6),
		(8, 1),
		(9, 7),
		(10, 19),
		(11, 8),
		(12, 9),
		(13, 1),
		(14, 3),
		(15, 3),
		(16, 5),
		(17, 1),
		(18, 13),
		(19, 1),
		(20, 4),
		(21, 1),
		(22, 14),
		(23, 1),
		(24, 1),
		(25, 5),
		(26, 19),
		(27, 1),
		(28, 4),
		(29, 1),
		(30, 5), 
		(31, 2),
		(32, 6),
		(33, 6),
		(34, 10),
		(35, 12),
		(36, 5),
		(37, 7),
		(38, 4),
		(39, 9),
		(40, 20);
	
select * from roles_employee