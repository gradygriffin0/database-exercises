use employees;

SELECT count(title), title
from titles
group by title
order by count(title) desc
limit 3;

select emp_no, title
from titles
group by emp_no, title
order by emp_no desc
limit 1;

describe dept_emp;

SELECT * from employees
where emp_no = 10002;

SELECT * FROM dept_emp
where emp_no = 10002;

SELECT * FROM departments
where dept_no = 'd007';

SELECT concat(e.first_name, ' ', e.last_name), d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
        JOIN departments as d
                ON  d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
order by de.emp_no
