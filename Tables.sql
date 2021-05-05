CREATE TABLE Departments (
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);
select * from Departments

CREATE TABLE Employ (
	emp_no INT NOT NULL,
	emp_title VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES Title(title_id)
);
select * from Employ

CREATE TABLE Department_E (
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from Department_E

CREATE TABLE Department_Managers (
	dept_no VARCHAR(50) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
select * from Department_Managers

CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
select * from Salaries

CREATE TABLE Title (
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);
select * from Title