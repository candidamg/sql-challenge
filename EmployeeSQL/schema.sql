--*****************
--**TABLES**
--*****************

--departments.csv
--DROP TABLE IF EXISTS departments;
CREATE TABLE departments(
	dept_no VARCHAR (20) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * 
FROM departments;


--titles.csv
--DROP TABLE IF EXISTS titles;
CREATE TABLE titles(
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT *
FROM titles;


--employees.csv
--DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id), 
	PRIMARY KEY (emp_no)
);
SELECT * 
FROM employees;


--salaries.csv
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
SELECT * 
FROM salaries;


--dept_emp.csv
--DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * 
FROM dept_emp;


--dept_manager.csv
--DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);
SELECT * 
FROM dept_manager;

