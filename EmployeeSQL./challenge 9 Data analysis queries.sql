--Data Analysis querys 

--1 List the employee number, last name, first name, sex, and salary of each employee
----perform inner join on the two tables employees and salaries 
--inner join employees as e ON
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries s ON e.emp_no = s.emp_no;

--2 List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986/01/01' AND hire_date <= '1986/12/31';

--3 List the manager of each department along with their department number, department name, employee number, last name, and first name 
-- i need to join multiple tables: "departments," "dept_manager," and "employees." 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

--4List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
--join multiple tables: "departments," "dept_emp," and "employees." 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

--5List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
--The condition first_name = 'Hercules' filters the rows for first name is exactly "Hercules", 
--and the condition last_name LIKE 'B%' filters the rows where the last name starts with the letter "B".
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6List each employee in the Sales department, including their employee number, last name, and first name 
SELECT e.emp_no, e.last_name, e.first_name, 
--d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

--7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
-- Inner join  is joining the employees table with the dept_emp table and the departments table.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;


--8List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
--The GROUP BY groups the rows by the last_name column, and the COUNT(*) function calculates the frequency count for each last name. The ORDER BY clause is used to sort the results in descending order based on the frequency count.
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


