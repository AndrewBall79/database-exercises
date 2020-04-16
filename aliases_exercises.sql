# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM employees.employees
# GROUP BY full_name
LIMIT 10;

# Add the date of birth for each employee as 'DOB' to the query.

SELECT CONCAT(last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees.employees
# GROUP BY full_name, DOB
LIMIT 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.

SELECT CONCAT(emp_no,' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees.employees
GROUP BY full_name, DOB
LIMIT 10;






    SELECT CONCAT(first_name, ', ', last_name) AS full_name
FROM employees.employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

SELECT hire_date, COUNT(*) AS num_employees
FROM employees.employees
GROUP BY hire_date
ORDER BY num_employees DESC
LIMIT 100;

SELECT birth_date, CONCAT(first_name, ' ', last_name)
    AS full_name, gender
FROM employees.employees


