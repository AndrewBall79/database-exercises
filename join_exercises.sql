USE employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.to_date = '9999-01-01' AND employees.emp_no = 10001;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name
FROM employees
JOIN departments
ON departments.dept_name;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.



SELECT dept.dept_name as 'Department name', CONCAT(drones.first_name, ' ', drones.last_name) as 'Department Manager'
FROM employees AS drones
JOIN dept_manager AS dm
    ON drones.emp_no = dm.emp_no
JOIN departments AS dept
    ON dm.dept_no = dept.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY dept.dept_name;


# "I want to connect Table A with Table B” (JOIN)
# “What do these two tables have in common?” (ON)
# “What can I name each table as a reference point?” (ALIAS aka AS)
# “Do I need to filter by any conditions?” (WHERE)

# Find the name of all departments currently managed by women.

SELECT dept.dept_name AS 'Department Name', CONCAT(drones.first_name, ' ', drones.last_name) as 'Department Manager'
FROM employees AS drones
JOIN dept_manager AS dm
    ON drones.emp_no = dm.emp_no
JOIN departments AS dept
    ON dm.dept_no = dept.dept_no
WHERE dm.to_date > CURDATE()
AND drones.gender = 'F'
ORDER BY dept.dept_name;

# Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title AS 'Title', COUNT(titles.emp_no) AS 'COUNT'
FROM titles
    JOIN dept_emp
        ON titles.emp_no = dept_emp.emp_no
    JOIN departments
        ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date = '9999-01-01'
    AND departments.dept_name = 'Customer Service'
    AND titles.to_date = '9999-01-01'
GROUP BY titles.title;


SELECT first_name, last_name, s.salary
FROM employees
JOIN salaries s on employees.emp_no = s.emp_no
WHERE s.salary > 55000
AND s.to_date = '000-01-01'
ORDER BY s.salary DESC;


