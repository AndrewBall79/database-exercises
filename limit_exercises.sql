SELECT DISTINCT title
FROM employees.titles;


SELECT DISTINCT last_name
FROM employees.employees
ORDER BY last_name DESC
LIMIT 10;


SELECT *
FROM employees.employees
WHERE birth_date LIKE '%12-25'
  AND hire_date > '1990-01-01'
  AND hire_date < '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;


SELECT *
FROM employees.employees
WHERE birth_date LIKE '%12-25'
  AND hire_date > '1990-01-01'
  AND hire_date < '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;