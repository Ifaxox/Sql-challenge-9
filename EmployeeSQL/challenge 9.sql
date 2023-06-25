--1 create table for employees
DROP TABLE IF EXISTs employees 

create table employees(
	emp_no INT primary key NOT NULL, 
	emp_title_id VARCHAR (50) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR (50)NOT NULL,
	last_name VARCHAR (50)NOT NULL,
	sex VARCHAR (50)NOT NULL,
	hire_date date not NULL
	
);

select * from Employees

--insert data into employees table- import csv file to populate the table
select * from Employees

--2 create table for salaries
create table salaries(
	emp_no INT primary key NOT NULL, 
	salary INT NOT NULL
	
);

select * from salaries;

--3 create table for titles
DROP TABLE IF EXISTS titles;
create table titles(
	title_id VARCHAR (50) primary key NOT NULL, 
	title VARCHAR (50) NOT NULL
	);
	
select * from titles 

--4 create table for departments
DROP TABLE IF EXISTS departments;

create table departments(
	dept_no VARCHAR(50)primary key NOT NULL, 
	dept_name VARCHAR (50) NOT NULL
);

select * from departments;

--5 create table for the department managers (dept_manager)
DROP TABLE IF EXISTS dept_manager

CREATE TABLE dept_manager (
  dept_no VARCHAR(50) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (emp_no, dept_no)
);
	
select * from dept_manager

--6 create table for all department employees (dept_emp)
-- ERROR: duplicate key value violates unique constraint "dept_emp_pkey" 
--DETAIL: Key (emp_no)=(10010) already exists.
--CONTEXT: COPY dept_emp, line 12, had to make both colums primary keys 

DROP TABLE IF EXISTS dept_emp
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (50) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;

