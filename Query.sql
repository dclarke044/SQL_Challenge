-------------------------- DATA ANALYSIS -----------------------------
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
SELECT e.emp_no, e.last_name, e.first_name, dm.dept_no, d.dept_name
from dept_manager as dm
Inner JOIN employees as e 
on dm.emp_no = e.emp_no
Inner JOIN departments as d
on d.dept_no = dm.dept_no;

--- List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no;

--- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules'
and e.last_name like 'B%';

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

--- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT e.last_name, COUNT(e.last_name) as "Surname Tally"
from employees as e
GROUP BY e.last_name
order by "Surname Tally" DESC;