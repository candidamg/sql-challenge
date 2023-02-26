# SQL-CHALLENGE
## Module 9 Challenge
 
In this project six (6) CSV files are inspected, with data from Pewlett Hackard (a fictional company).
This project is divided into three (3) parts: data modeling, data engineering, and data analysis.

### Data Modeling
The CSV files are inspected and an Entity Relationship Diagram (ERD) is created by using QuickDBD tool. 
The below ERD is based on the data that was inspected previously. 
![alt text]()

(*Exhibit A: EmployeesSQL -> ERD_image*)

### Data Engineering
Table schemas are created in PostgreSQL for each of the following CSV files:

1. departments
2. titles
3. employees
4. salaries
5. dept_emp
6. dept_manager

* Note Primary Keys (PK) and Foreign Keys (FK), NOT NULL, and value lenghts are defined and set as necessary. 

## Data Analysis
In the analysis section of this project the following tasks are analized by using the tables from the Data Engineering past.
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

