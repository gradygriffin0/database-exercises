use employees;


#concat
select first_name, emp_no, concat(first_name, ' is an employee whose employee number is ', emp_no)
from employees
limit 5;


#not like
select distinct first_name from employees where first_name not like '%G%' limit 5;


#date
select DAY('2002-06-09'); #returns 9
SELECT DAYOFMONTH('2002-06-09');#returns 9

SELECT NOW(); #current time to second
SELECT CURTIME(); #returns hour-min-second
SELECT CURDATE(); #returns yyyy-mm-dd






