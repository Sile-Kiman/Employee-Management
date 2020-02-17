-- Insert Value into Department column
USE   Employee_DB;  
INSERT INTO department(dept_name) VALUE("Humain Resources");
INSERT INTO department(dept_name) VALUE("Information Technology");

-- Insert into  dept role
INSERT INTO dept_role(Title, Salary, dept_id)  VALUE("HR manager", 85000, 1);
INSERT INTO dept_role(Title, Salary, dept_id)  VALUE("Business Analyst", 85000, 2);

-- Insert Values into employee table
USE   Employee_DB;
INSERT INTO employee(first_name, last_name, role_id, manager, manager_id) VALUE("Jose", "Marie", 1, "Richard bleu", 1);
INSERT INTO employee(first_name, last_name, role_id, manager, manager_id) VALUE("Arthur", "English", 2, "Julie Mark", 2);
 
 

 