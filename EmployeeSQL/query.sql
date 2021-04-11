
/* 1 */
SELECT e.emp_no,
  e.last_name,
  e.first_name,
  e.sex,
  s.salary
FROM employees as e, salaries as s
where e.emp_no = s.emp_no;

/* 2 */
SELECT e.last_name, e.first_name, e.hire_date
from employees as e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/* 3 */
select dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name, e.emp_no
from dept_manager as dm, departments as d, employees as e
where dm.emp_no = e.emp_no
and dm.dept_no = d.dept_no;

/* 4 */
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no;

/* 5 */
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name like 'Hercules'
and e.last_name like 'B%';

/* 6 */
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no
and d.dept_name like 'Sales';

/* 7 */
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no
and d.dept_name like 'Development'
order by d.dept_name;

/* 8 */
Select e.last_name, count(*)
 From employees as e
 Group By e.last_name