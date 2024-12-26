-- Create a simple view named vw_employee_details that displays the first name, last name, and
-- department name of employees.

create view vw_employee_details as
select first_name, last_name, department_name
from employees
join departments on departments.department_id=employees.department_id

select * from vw_employee_details


-- Modify the existing view vw_work_hrs to only include employees working in department
-- number 55

alter view vw_employee_details as
select first_name, last_name, department_name, phone_number
from employees
join departments on departments.department_id=employees.department_id
where departments.department_id=50

select * from vw_employee_details



