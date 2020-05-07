--- Data Analysis
--- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;

--- List first name, last name, and hire date for employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
from employees as e
where extract(year from e.hire_date) =1986;

--- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT de.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
from employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no
INNER JOIN titles as tl
on e.title_id = tl.title_id
WHERE tl.title = 'Manager';


--- List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no;

--- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

--- List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no
where d.dept_name in('Sales', 'Development'); 