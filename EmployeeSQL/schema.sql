drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE titles (
	emp_title_id VARCHAR PRIMARY KEY,
   	title VARCHAR(255) NOT NULL
);

CREATE TABLE salaries (
   emp_no INT NOT NULL,
   salary INT NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);


CREATE TABLE dept_emp (
   emp_no INT NOT NULL,
   dept_no CHAR(4) NOT NULL,
   PRIMARY KEY (emp_no, dept_no),
   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
   emp_no INT NOT NULL,
   dept_no CHAR(4) NOT NULL,
   PRIMARY KEY (emp_no, dept_no),
   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

Select * from departments;