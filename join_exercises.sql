CREATE database if not exists join_test_db;

use join_test_db;


CREATE TABLE if not exists roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

# Create two tables one roles, and one referencing roles by implementing
# a foreign key

CREATE TABLE if not exists USERS
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('grady', 'gradygriff@gmail.com', 2),
       ('casey', 'casey@example.com', null),
       ('prachi', 'prachi@gmail.com', 2),
       ('corey', 'corey@codeup.com', 2);

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
         JOIN roles as r
              ON r.id = u.role_id;

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
         LEFT JOIN roles as r
                   ON r.id = u.role_id;

SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM USERS as u
         RIGHT JOIN roles as r
                    ON r.id = u.role_id;


SELECT CONCAT(u.name, ' - ', u.email) as User, r.name
FROM roles as r
         LEFT JOIN users as u
                   ON r.id = u.role_id;

SELECT COUNT(r.name) as Number_of_role, r.name
FROM roles as r
         LEFT JOIN users as u
                   ON r.id = u.role_id
group by r.name;


#department name and manager
USE employees; # switch db
SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as Manager
FROM employees as e
         JOIN dept_emp as de
              ON e.emp_no = de.emp_no
                  AND de.to_date = '9999-01-01'
         JOIN dept_manager as dm
              ON de.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
group by d.dept_name, concat(e.first_name, ' ', e.last_name)
ORDER BY d.dept_name;

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as Manager
from employees as e
         JOIN dept_emp as de
              ON e.emp_no = de.emp_no
                  AND de.to_date = '9999-01-01'
         JOIN dept_manager as dm
              on e.emp_no = dm.emp_no
                  AND dm.to_date = '9999-01-01'
         JOIN departments as d ON dm.dept_no = d.dept_no
ORDER BY dept_name;


SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as Manager
from employees as e
         JOIN dept_emp as de
              ON e.emp_no = de.emp_no
                  AND de.to_date = '9999-01-01'
                  AND e.gender = 'f'
         JOIN dept_manager as dm
              on e.emp_no = dm.emp_no
                  AND dm.to_date = '9999-01-01'
         JOIN departments as d ON dm.dept_no = d.dept_no
ORDER BY dept_name;


SELECT t.title, count(t.title)
FROM titles as t
         JOIN dept_emp as de ON t.emp_no = de.emp_no
    AND de.to_date = '9999-01-01'
         JOIN departments as d ON de.dept_no = d.dept_no
    AND d.dept_no = 'd009'
WHERE t.to_date = '9999-01-01'
group by t.title
order by count(t.title) desc


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) as Name, s.salary
FROM employees AS e
         JOIN salaries AS s ON e.emp_no = s.emp_no
            AND s.to_date = '9999-01-01'
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
            AND de.to_date = '9999-01-01'
        JOIN dept_manager AS dm on e.emp_no = dm.emp_no
            AND dm.to_date = '9999-01-01'
        JOIN departments d on de.dept_no = d.dept_no
ORDER BY salary desc

