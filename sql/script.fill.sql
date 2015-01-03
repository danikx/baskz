insert into regions (region_id, region_name) values(1, 'Западная европа');
insert into regions (region_id, region_name) values(2, 'Юговосточная азия');	
insert into regions (region_id, region_name) values(3, 'Северная америка');	
insert into regions (region_id, region_name) values(4, 'Восточная европа');		


insert into countries (country_id, country_name, region_id) values(1, 'Германия', 1);
insert into countries (country_id, country_name, region_id) values(2, 'Франция', 1);
insert into countries (country_id, country_name, region_id) values(3, 'Китай', 2);
insert into countries (country_id, country_name, region_id) values(4, 'Япония', 2);
insert into countries (country_id, country_name, region_id) values(5, 'Южная корея', 2);
insert into countries (country_id, country_name, region_id) values(6, 'США', 3);
insert into countries (country_id, country_name, region_id) values(7, 'Канада', 3);
insert into countries (country_id, country_name, region_id) values(8, 'Россия', 4);

insert into jobs(job_id, job_title, min_salary, max_salary) values(1, 'Стажер', 500, 1000);
insert into jobs(job_id, job_title, min_salary, max_salary) values(2, 'Разработчик ПО', 1000, 3000);
insert into jobs(job_id, job_title, min_salary, max_salary) values(3, 'Менеджер проекта', 1000, 4000);
insert into jobs(job_id, job_title, min_salary, max_salary) values(4, 'Руководитель группы разработки', 2000, 4000);
insert into jobs(job_id, job_title, min_salary, max_salary) values(5, 'Президент', 3000, 7000);

insert into locations(location_id, street_address, postal_code, city, state_province, country_id) values(1, 'улица в берлине', '010000', 'Берлин', null, 1);
insert into locations(location_id, street_address, postal_code, city, state_province, country_id) values(2, 'улица в пекине', '020000', 'Пекин', null, 3);
insert into locations(location_id, street_address, postal_code, city, state_province, country_id) values(3, 'улица в калифорнии', '030000', 'Сан-Франциско', null, 6);
insert into locations(location_id, street_address, postal_code, city, state_province, country_id) values(4, 'улица в москве', '040000', 'Москва', null, 4);
insert into locations(location_id, street_address, postal_code, city, state_province, country_id) values(5, 'улица в питере', '050000', 'Санкт-Петербург', null, 4);


insert into departments(department_id, department_name, manager_id, location_id) values (1, 'Департамент по управлению', null, 3);
insert into departments(department_id, department_name, manager_id, location_id) values (2, 'Центр разработки ПО', null, 3);
insert into departments(department_id, department_name, manager_id, location_id) values (3, 'Центр разработки ПО', null, 4);
insert into departments(department_id, department_name, manager_id, location_id) values (4, 'Исследовательский центр', null, 2);
insert into departments(department_id, department_name, manager_id, location_id) values (5, 'Исследовательский центр', null, 4);


insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (1, 'Иван', 'Иванов', 'ivan.ivanov@gmail.com', '111-256-65-65', cast('2010/01/01' as date), 5, 5000 , null, 1);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (2, 'Петр', 'Петров', 'petr.petrov@gmail.com', '525-563-56-89', cast('2010/02/10' as date), 4, 2500, 1, 4);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (3, 'Сергей', 'Сергеев', 'sergey.sergeev@gmail.com', '456-52-36', cast('2010/03/15' as date), 3, 1400, 2, 4);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (4, 'Дмитрий', 'Дмитриев', 'dima.dmitriev@gmail.com', '563-56-89', cast('2010/03/20' as date), 2, 1500, 2, 4);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (5, 'Сидор', 'Барабанов', 'sergey.baranov@gmail.com', '125-56-78', cast('2010/05/11' as date), 4, 2600, 1, 5);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (6, 'Анатолий', 'Ветров', 'anatoly.vetrov@gmail.com', '658-96-34', cast('2010/07/19' as date), 2, 2500, 5, 5);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (7, 'Александр', 'Соколов', 'alexandr.sokolo@gmail.com', '245-63-63', cast('2010/09/17' as date), 2, 1700, 5, 5);

insert into employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
	values (8, 'Светлана', 'Шаманская', 'svetlana.shamanskaya@gmail.com', '256-56-56', cast('2010/12/20' as date), 1, 500, 5, 5);

update departments set manager_id=1 where department_id=1;
update departments set manager_id=2 where department_id=4;
update departments set manager_id=5 where department_id=5;

insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (3, cast('2010/03/15' as date), cast('2011/03/15' as date), 1, 4);
insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (3, cast('2011/03/15' as date), null, 2, 4);

insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (2, cast('2010/02/10' as date), cast('2011/02/10' as date), 1, 4);
insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (2, cast('2011/02/10' as date), cast('2011/08/10' as date), 2, 4);
insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (2, cast('2011/08/10' as date), null, 4, 4);

insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (5, cast('2010/05/11' as date), cast('2010/07/11' as date), 1, 5);
insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (5, cast('2010/07/11' as date), cast('2010/12/11' as date), 2, 5);
insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (5, cast('2010/12/11' as date), null, 4, 5);

insert into job_history(employee_id,start_date ,end_date,job_id, department_id ) values (6, cast('2010/07/19' as date), cast('2010/10/19' as date), 1, 5);