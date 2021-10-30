-- Создать таблицу employees
--id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(30) not null
)

-- Наполнить таблицу employee 70 строками:
insert into employees (employee_name)
values ('John Doe70')


--Создать таблицу salary:
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
)

--Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values (2500);

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
)

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (101, 11);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
 id serial  primary key,
 role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Senior Automation QA engineer');

--Создать таблицу roles_employee
-- id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial  primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id)
)

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,role_id)
values (57,1)

select * from roles_employee;