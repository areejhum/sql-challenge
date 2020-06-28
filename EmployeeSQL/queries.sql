--1
Select 
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	e.gender as "Sex",
	s.salary as "Salary"
From employees as e
Inner join salaries as s
ON e.emp_no=s.emp_no
Order by e.emp_no;

--2
Select  first_name, last_name, hire_date
From employees 
Where
	hire_date between '1986-01-01' and '1986-12-31';

--3
Select 
	dm.dept_no as "depaerment number",
	d.dept_name as "department name",
	dm.emp_no as "the managers employee number",
	e.first_name as "First Name",
	e.last_name as "Last Name"
From dept_manager as dm
Inner Join departments as d
On dm.dept_no = d.dept_no
Inner Join employees as e
On dm.emp_no=e.emp_no;

--4
Select
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
From employees as e
Inner Join dept_emp as de
On de.emp_no=e.emp_no
Inner Join departments as d
On d.dept_no=de.dept_no
Order by e.emp_no;

--5
Select first_name, last_name, gender
From Employees
Where first_name='Hercules' 
And last_name Like 'B%'
Order by last_name;

--6
Select 
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
From employees as e
Inner Join dept_emp as de
On e.emp_no=de.emp_no
Inner Join departments as d
On d.dept_no=de.dept_no
Where d.dept_name='Sales'
Order by e.emp_no;

--7
Select 
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
From employees as e
Inner Join dept_emp as de
On e.emp_no=de.emp_no
Inner Join departments as d
On d.dept_no=de.dept_no
Where d.dept_name in ('Sales','Development')
Order by e.emp_no;
--8
Select last_name, Count(last_name) as "Frequency Counts"
From employees
Group by last_name
Order by "Frequency Counts" ASC;
