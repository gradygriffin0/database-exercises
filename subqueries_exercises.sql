use employees;

SELECT first_name, hire_date
FROM employees
WHERE hire_date = (SELECT hire_date from employees where emp_no = 101010)

SELECT COUNT(t.title), t.title, e.first_name
FROM titles t
         JOIN employees e on t.emp_no = e.emp_no
WHERE first_name IN (SELECT first_name from employees where first_name = 'aamod')
group by t.title, e.first_name;


SELECT CONCAT(e.first_name, ' ', e.last_name) as Manager, e.gender
from employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
    AND dm.to_date = '9999-01-01'
WHERE e.gender = 'f';

SELECT e.first_name, e.last_name, d.dept_name
from employees e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN dept_manager AS dm ON dm.emp_no = de.emp_no
         JOIN departments as d ON de.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender IN (Select gender from employees where gender = 'f');



SELECT e.first_name, e.last_name, (SELECT MAX(salary) from salaries) as salary
from employees e
WHERE e.emp_no = (SELECT emp_no from salaries where salary = (SELECT MAX(salary) from salaries))
group by e.first_name, e.last_name, salary;

