DROP DATABASE IF EXISTS Employee_DB;
CREATE database  Employee_DB;

USE   Employee_DB;

CREATE TABLE department(
  dept_id INT  NOT NULL AUTO_INCREMENT, -- Primary Key
  dept_name VARCHAR(30) NOT NULL, -- hold department name
  PRIMARY KEY (dept_id)
);
USE   Employee_DB;  
SELECT * FROM department;

-- USE   Employee_DB;
USE   Employee_DB;
-- DROP  TABLE dept_role;
 
 CREATE TABLE dept_role(
  role_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY , -- Primary Key
  Title VARCHAR(30) NOT NULL, -- hold role title
  Salary DECIMAL(10, 2) NOT NULL, -- hold role salaries
  dept_id INT NULL,

CONSTRAINT  dept_role_fk_ FOREIGN KEY(dept_id) REFERENCES department(dept_id)   -- hold role title
ON UPDATE CASCADE ON DELETE CASCADE  
);
USE   Employee_DB;
SELECT * FROM dept_role;
  
USE   Employee_DB;
-- USE   Employee_DB;
-- DROP  TABLE employee;
CREATE TABLE employee(
  id INT  NOT NULL PRIMARY KEY AUTO_INCREMENT, -- Primary Key
  first_name VARCHAR(30)  NULL, -- hold employee first name
  last_name VARCHAR(30) NOT NULL, -- hold employee last name
  role_id INT NULL ,-- hold reference to role employee has
  manager  VARCHAR(50)  NULL,
  manager_id INT NULL, -- hold reference to another employee that manager of the current employee
  CONSTRAINT  employee_fk_1 FOREIGN KEY(role_id) REFERENCES dept_role (role_id)
  ON UPDATE CASCADE ON DELETE CASCADE  
);
 
USE   Employee_DB;
SELECT * FROM employee;