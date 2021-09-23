DROP DATABASE IF EXISTS  managerDB;

CREATE DATABASE managerDB;

USE managerDB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id)
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY (id)
);





INSERT INTO department (name)
VALUES ("HR"), ("Labor"), ("IT");

INSERT INTO role (title, salary, department_id)
VALUES ("Nurse", 20000, 1 ),  ("Molder", 15000, 2), ("Junior Developer", 26000, 3),  ("Computer Technicion", 30000, 3), ("HR Assistant",14000, 1),
("HR Manager", 24000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jim","Bob",1 ,6)("Blue","Shmue",2 ,NULL)("Cameron","Blake",3 ,4)("Marvin","Darvin",4 ,NULL)("Harold","Gerald",5 ,6)("Darth","Vader",6 ,NULL )