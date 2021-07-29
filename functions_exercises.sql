use employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like '%E'
order by emp_no;

SELECT *
FROM employees
where month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
where (month(birth_date) = 12 AND day(birth_date) = 25)
  AND (year(hire_date) between 1990 and 2000);

SELECT *
FROM employees
where (month(birth_date) = 12 AND day(birth_date) = 25)
  AND (year(hire_date) between 1990 and 2000)
order by birth_date, hire_date desc;


SELECT *, (datediff(NOW(), hire_date))
FROM employees
where (month(birth_date) = 12 AND day(birth_date) = 25)
  AND (year(hire_date) between 1990 and 2000)



