
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

SELECT CONCAT(first_name ,' ', last_name)
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name ,' ', last_name)
FROM employees.employees
WHERE last_name LIKE  'E%'
ORDER BY emp_no DESC;

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

SELECT CONCAT(first_name ,' ', last_name)
FROM employees.employees
WHERE last_name LIKE  'E%'
   OR last_name LIKE '%E';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

# SELECT datediff(year,
# WHERE birth_date LIKE '%12-25'
#   AND hire_date > '1990-01-01'
#   AND hire_date < '1999-12-31', now())
# FROM employees.employees
# ORDER BY birth_date ASC, hire_date DESC


SELECT COUNT(first_name)
FROM employees.employees
WHERE first_name NOT LIKE '&a&';

SELECT first_name, COUNT(first_name)
FROM employees.employees
WHERE first_name NOT LIKE '&a&'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees.employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;


USE employees;
DESCRIBE departments;

DESCRIBE dept_emp;
SHOW CREATE TABLE dept_emp;
SHOW CREATE TABLE dept_manager;


USE codeup_test_db;
ALTER TABLE albums
ADD UNIQUE (name, artist);

DESCRIBE albums;

USE codeup_test_db;
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

USE employees;
SELECT CONCAT(e.first_name,' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp as de
    ON de.emp_no = e.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
WHERE e.emp_no = 10001;

