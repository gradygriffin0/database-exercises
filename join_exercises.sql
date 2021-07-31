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
    JOIN dept_manager as dm
        ON de.emp_no = dm.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
    WHERE de.to_date = '9999-01-01'
    ORDER BY d.dept_name;