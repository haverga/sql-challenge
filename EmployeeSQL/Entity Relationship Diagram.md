## Data Modeling

departments
-
dept_no int pk FK >- dept_emp.dept_no
dept_name varchar

dept_emp
-
emp_no int FK >- employees.emp_no
dept_no int pk

dept_manager
-
dept_no int FK >- dept_emp.dept_no
emp_no int pk FK >- employees.emp_no

employees
-
emp_no int pk
emp_title_id varchar FK >- titles.emp_title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-
emp_no int pk FK >- employees.emp_no
salary int

titles
-
emp_title_id varchar pk
title varchar