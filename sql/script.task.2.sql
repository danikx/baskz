/*script.task.2

Выберите для каждого подразделения, где работают 
	не менее 3 сотрудников количество сотрудников, 
	минимальную и максимальную зарплату 
	и колонку, где на просуммированы зарплаты сотрудников, работающих более 3 лет. 

	Выборка также должна содержать название региона, страны и подразделения.
*/

select d.department_name, d.emp_count, d.min_salary, d.max_salary, d1.emp_sum, l.city, c.country_name, r.region_name from 
	(select d.department_id, 
			d.location_id, 
			d.department_name, 
			min(e.salary) min_salary, 
			max(e.salary) max_salary, 
			count(e.employee_id) emp_count 
		from departments d 
			join employees e on d.department_id = e.department_id
			group by d.department_id having count(e.employee_id) >= 3 ) d

	join (select d.department_id, sum(e.salary) emp_sum from departments d 
			join employees e on d.department_id = e.department_id
			where (date_part('year', now()) - date_part('year', e.hire_date)) >= 3
			group by d.department_id) d1 on d.department_id = d1.department_id

	join locations l on l.location_id = d.location_id
	join countries c on c.country_id = l.country_id
	join regions r on r.region_id = c. region_id;		