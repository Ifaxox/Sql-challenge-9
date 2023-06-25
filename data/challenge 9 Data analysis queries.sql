--Data Analysis querys 
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;
SELECT * FROM dept-manager;

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
