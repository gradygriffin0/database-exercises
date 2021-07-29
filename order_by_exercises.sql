use employees;

select *
from employees
where first_name in ('irene', 'vidya', 'maya')
order by first_name, last_name;

select *
from employees
where last_name like 'E%';

select *
from employees
where last_name like '%q%';


SELECT *
from employees
where gender = 'm' AND
    (first_name = 'irene'
        or first_name = 'vidya'
        or first_name = 'maya')
order by first_name, last_name;

SELECT * FROM employees
WHERE last_name like '%E'
order by emp_no;

SELECT * FROM employees
WHERE last_name like 'E%E';

SELECT * FROM employees
WHERE last_name like '%q%'
  AND last_name NOT like ('%qu%');