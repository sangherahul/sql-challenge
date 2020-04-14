SELECT emp.emp_no AS "Employee Number",emp.first_name AS "First Name", emp.last_name AS "Last Name", emp.gender AS "Gender", sal.salary AS "Salary"
FROM employees emp
JOIN salaries sal 
ON emp.emp_no=sal.emp_no;

SELECT * FROM employees
WHERE hire_date > '19851231' AND hire_date < '19870101'


SELECT dept.dept_no AS "Department Number",dept.dept_name AS "Department Name", manager.emp_no AS "Employee Number", emp.last_name AS "Last Name", emp.first_name AS "First Name", empd.from_date AS "Start Date",empd.to_date AS "End Date"
FROM dept_manager manager
JOIN departments dept
ON manager.dept_no=dept.dept_no
JOIN employees emp
ON manager.emp_no=emp.emp_no
JOIN dept_emp empd
ON manager.emp_no=empd.emp_no;

SELECT manager.emp_no AS "Employee Number", emp.last_name AS "Last Name", emp.first_name AS "First Name", dept.dept_name AS "Department Name"
FROM dept_manager manager
JOIN departments dept
ON manager.dept_no=dept.dept_no
JOIN employees emp
ON manager.emp_no=emp.emp_no

SELECT * FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

SELECT manager.emp_no, emp.first_name, emp.last_name, dept.dept_name
FROM dept_manager manager
JOIN employees emp
ON manager.emp_no=emp.emp_no
JOIN departments dept
ON manager.dept_no=dept.dept_no
Where manager.dept_no IN (
	SELECT dept_no
	FROM departments
	WHERE dept_name='Sales'
);


SELECT manager.emp_no, emp.first_name, emp.last_name, dept.dept_name
FROM dept_manager manager
JOIN employees emp
ON manager.emp_no=emp.emp_no
JOIN departments dept
ON manager.dept_no=dept.dept_no
Where manager.dept_no IN (
	SELECT dept_no
	FROM departments
	WHERE dept_name='Sales'
)
UNION 

SELECT manager.emp_no, emp.first_name, emp.last_name, dept.dept_name
FROM dept_manager manager
JOIN employees emp
ON manager.emp_no=emp.emp_no
JOIN departments dept
ON manager.dept_no=dept.dept_no
Where manager.dept_no IN (
	SELECT dept_no
	FROM departments
	WHERE dept_name='Development'
);

SELECT last_name AS "Last Name", COUNT(last_name) AS "Counts" 
FROM employees
GROUP BY "Last Name"
ORDER BY "Counts" DESC;

