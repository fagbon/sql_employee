CREATE TABLE department(
    dep_id INT NOT NULL AUTO_INCREMENT,
    dep_name VARCHAR(45) NOT NULL,
    dep_location VARCHAR(45) NOT NULL,
    emp_id smallint NOT NULL,
    customer_id int NOT NULL,
 PRIMARY KEY (`dep_id`),
  KEY `fk_department_employee_idx` (`emp_id`),
  KEY `fk_department_customers_idx` (`customer_id`),
  CONSTRAINT `fk_department_employee` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_department_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE);

12:54:16	dep_id SMALLINT UNIQUE NOT NULL AUTO_INCREMENT,     dep_name VARCHAR(45) NOT NULL,     dep_location VARCHAR(45) NOT NULL,     emp_id smallint NOT NULL,     customer_id int NOT NULL,  PRIMARY KEY (`dep_id`),   KEY `fk_department_employee_idx` (`emp_id`),   KEY `fk_department_customers_idx` (`customer_id`),   CONSTRAINT `fk_department_employee` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),   CONSTRAINT `fk_department_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dep_id SMALLINT UNIQUE NOT NULL AUTO_INCREMENT,     dep_name VARCHAR(45) NOT NUL' at line 1	0.00036 sec

 drop table department;
 
insert into department (dep_name, dep_location, emp_id, customer_id) value('FINANCE', 'SYDNEY', '2', '1');
insert into department (dep_name, dep_location, emp_id, customer_id) value('AUDIT', 'MELBOURNE', '2', '2');
insert into department (dep_name, dep_location, emp_id, customer_id) value('MARKETING', 'LAGOS', '3', '3');
insert into department (dep_name, dep_location, emp_id, customer_id) value('PRODUCTION', 'TEXAS', '4', '4');
insert into department (dep_name, dep_location, emp_id, customer_id) value('ACCOUNTING', 'IOWA', '5', '5');
insert into department (dep_name, dep_location, emp_id, customer_id) value('INSURANCE', 'FLORIDA', '6', '3');

DELETE FROM department 
WHERE
    dep_id = 4;



drop table department;
alter table department
modify dep_id smallint primary key unique  not null auto_increment;