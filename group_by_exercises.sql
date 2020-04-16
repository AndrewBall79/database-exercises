SELECT hire_date, first_name, last_name,COUNT(*)
FROM employees.employees
GROUP BY hire_date, first_name, last_name
ORDER BY COUNT(*) DESC
LIMIT 20;


SELECT DISTINCT title
FROM employees.titles;


SELECT last_name
FROM employees.employees
WHERE last_name LIKE  'E%'
  AND last_name LIKE '%E'
GROUP BY last_name;


SELECT first_name, last_name
FROM employees.employees
WHERE last_name LIKE  'E%'
  AND last_name LIKE '%E'
GROUP BY last_name, first_name;


SELECT last_name
FROM employees.employees
WHERE last_name LIKE  '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT last_name,COUNT(*)
FROM employees.employees
WHERE last_name LIKE  '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT COUNT(*), gender
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;


