SELECT employ.emp_no, employ.last_name, employ.first_name, employ.sex, Salaries.salary
FROM employ
LEFT JOIN Salaries on employ.emp_no = salaries.emp_no

SELECT employ.first_name, employ.last_name, employ.hire_date
FROM employ
WHERE hire_date >= '1985-12-31' and hire_date < '1987-01-01'

SELECT Department_Managers.dept_no, Departments.dept_name, Department_Managers.emp_no, Employ.last_name, Employ.first_name
FROM Department_Managers
INNER JOIN Departments on Department_Managers.dept_no = Departments.dept_no
INNER JOIN Employ on Department_Managers.emp_no = Employ.emp_no

SELECT Employ.emp_no, Employ.last_name, Employ.first_name, Departments.dept_name
FROM Employ
INNER JOIN Department_E on Employ.emp_no = Department_E.emp_no
INNER JOIN Departments on Departments.dept_no = Department_E.dept_no

SELECT first_name, last_name, sex
FROM Employ
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

SELECT Employ.emp_no, Employ.last_name, Employ.first_name, Departments.dept_name
FROM Employ
JOIN Department_E on Employ.emp_no = Department_E.emp_no
JOIN Departments on Departments.dept_no = Department_E.dept_no
WHERE Departments.dept_name = 'Sales'

SELECT Employ.emp_no, Employ.last_name, Employ.first_name, Departments.dept_name
FROM Employ
JOIN Department_E on Employ.emp_no = Department_E.emp_no
JOIN Departments on Departments.dept_no = Department_E.dept_no
WHERE Departments.dept_name in ('Sales', 'Development')

SELECT last_name, COUNT(last_name) as frequency_count
FROM Employ
GROUP BY last_name
ORDER BY frequency_count DESC