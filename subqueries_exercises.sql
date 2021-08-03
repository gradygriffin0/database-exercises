use employees;

SELECT first_name, hire_date
FROM employees
WHERE hire_date = (SELECT hire_date from employees where emp_no = 101010)

