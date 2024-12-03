-- Write a SQL query to retrieve all columns from a table named employees.
select * from employees

-- Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the employees table, where the location is 'Cairo'.

-- Write a SQL query that displays distinct dept_id values from the employees table
select distinct department_id from employees

-- Write a SQL query to create a table students with the following columns: ID
-- (Primary Key), First_Name (not null), Last_Name (default 'Unknown'),
-- Address (default 'N/A'), City (default 'N/A'), and Birth_Date.
create table students(
	ID int identity(1,1) primary key,
	First_Name varchar(50) not null,
	Last_Name varchar(50) default 'Unknown',
	student_address varchar(100) default 'N/A',
	City varchar(50) default 'N/A',
	Birth_Date Date
)

-- Drop the table
-- drop table students


--  Write a SQL query to insert the following values into the students table:
-- ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01')
insert into students (First_Name, Last_Name, student_address, City, Birth_Date)
values ('Ahmed', 'Ali', 'Downtown', 'Cairo', convert(date, '1995-01-01', 23));

-- Write a SQL query to update the Address of the student with Last_Name =
-- 'Ali' to 'Garden City'.
update students
set student_address = 'Garden City'
where Last_Name = 'Ali';

-- Write a SQL query to delete the rows from the students table where City is
-- 'Cairo', and then rollback the transaction.
begin transaction;

delete from students
where City = 'Cairo';

rollback transaction;

select * from students;