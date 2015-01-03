

CREATE TABLE regions (
	region_id serial,
	region_name varchar(100),

	CONSTRAINT 	region_pk 	PRIMARY KEY(region_id) 
);

CREATE TABLE countries (
	country_id 			serial NOT NULL,
	country_name 		varchar(100),
	region_id			INTEGER NOT NULL,

	CONSTRAINT	country_pk			PRIMARY KEY(country_id),
	CONSTRAINT	country_region_fk	FOREIGN KEY(region_id) REFERENCES regions(region_id)
);

CREATE TABLE locations (
	location_id 		serial NOT NULL,
	street_address 		varchar(100),
	postal_code 		varchar(10),
	city 				varchar(50),
	state_province		VARCHAR(50),
	country_id			INTEGER NOT NULL,

	CONSTRAINT	location_pk 			PRIMARY KEY(location_id),
	CONSTRAINT	location_country_fk 	FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

CREATE TABLE jobs (
	job_id 		serial NOT NULL,
	job_title 	VARCHAR(100),
	min_salary 	NUMERIC(9,2),
	max_salary 	NUMERIC(9,2),

	CONSTRAINT job_pk PRIMARY KEY(job_id)
);

CREATE TABLE employees (
	employee_id 	serial NOT NULL,
	first_name 		varchar(100),
	last_name 		varchar(100),
	email 			varchar(100),
	phone_number 	varchar(100),
	hire_date		date,
	job_id			integer NOT NULL,
	salary 			NUMERIC(9,2),
	manager_id 		INTEGER,
	department_id 	INTEGER NOT NULL,

	CONSTRAINT		employee_id_pk			PRIMARY KEY(employee_id),
	CONSTRAINT		employee_job_fk			FOREIGN KEY(job_id) 		REFERENCES jobs(job_id),
	CONSTRAINT		employee_manager_fk 	FOREIGN KEY(manager_id) 	REFERENCES employees(employee_id)
);

CREATE TABLE departments (
	department_id 		serial NOT NULL,
	department_name 	varchar(50) NOT NULL,
	manager_id 			INTEGER,
	location_id 		INTEGER NOT NULL,
	CONSTRAINT	department_pk 			PRIMARY KEY(department_id),
	CONSTRAINT	department_manager_fk	FOREIGN KEY(manager_id)		REFERENCES 	employees(employee_id),
	CONSTRAINT	department_location_fk	FOREIGN KEY(location_id)	REFERENCES	locations(location_id)
);

CREATE TABLE job_history (
	employee_id 	INTEGER NOT NULL,
	start_date 		date,
	end_date 		date,
	job_id 			INTEGER NOT NULL,
	department_id 	INTEGER NOT NULL,

	CONSTRAINT		job_history_employee_fk		FOREIGN KEY(employee_id) 	REFERENCES 	employees(employee_id),
	CONSTRAINT		job_history_job_fk			FOREIGN KEY(job_id) 		REFERENCES 	jobs(job_id),
	CONSTRAINT		job_history_department_fk	FOREIGN KEY(department_id) 	REFERENCES 	departments(department_id)
);