
-- Insert Value into Department column
USE   Employee_DB;  
INSERT INTO department(dept_name) VALUE("Humain Resources");

-- Insert into  dept role
INSERT INTO dept_role(Title, Salary, dept_id)  VALUE("HR manager", 85000, 1);

-- Insert Values into employee table
USE   Employee_DB;
INSERT INTO employee(first_name, last_name, role_id, manager, manager_id) VALUE("Jose", "Marie", 1, "Richard bleu", 1);