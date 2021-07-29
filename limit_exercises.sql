use employees;

SELECT distinct last_name
from employees
order by last_name desc
limit 10;

select emp_no
from (select * from salaries order by salary desc limit 5) as `s*`;

select emp_no
from (select * from salaries order by salary desc limit 5 offset 45) as `s*`;