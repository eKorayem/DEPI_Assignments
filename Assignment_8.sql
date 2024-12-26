-- Write a SQL query to retrieve all employees who were hired within the last 30 days from the
-- current date

select * from employees
where hire_date >= DATEADD(DAY, -30, GETDATE()); 

-- Create a stored procedure named sp_get_employee_hours that retrieves the first name, last
-- name, and total hours worked on projects for a given employee ID
create procedure sp_get_employee_hours
    @employee_id INT
AS
BEGIN
    SELECT 
        first_name,
        last_name,
        
    from employees
END;

-- Create a stored procedure named sp_department_employee_count that retrieves thedepartment ID, department name, and the number of employees in each department, but only for
-- departments with more than 5 employees.

create procedure sp_department_employee_count
as
begin
    select 
        d.department_id,
        d.department_name,
        count(e.employee_id) AS EmployeeCount
    from departments d
    JOIN employees e on d.department_id = e.department_id
    group by d.department_id, d.department_name
    having count(e.employee_id) > 5;
END;


