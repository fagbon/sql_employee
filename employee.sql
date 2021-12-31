USE sql_store;
CREATE TABLE IF NOT EXISTS employee (
    emp_id SMALLINT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    emp_name VARCHAR(45) NOT NULL,
    job_name VARCHAR(45) NOT NULL,
    manager_id INT NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(7 , 2 ) NOT NULL,
    commission DECIMAL(7 , 2 ) NOT NULL,
    dep_id INT NOT NULL,
    customer_id INT NOT NULL
);
alter table employee
add foreign key fk_employee_customers (customer_id) references customers (customer_id)
ON UPDATE CASCADE
ON DELETE NO ACTION;

drop table employee;

INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) values('KAYLING', 'PRESIDENT', '0', '1991-11-18', '6000.00', '0', '1001', '1');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('BLAZE', 'MANAGER', '68319', '1991-05-01', '2750.00', '0', '3001', '1');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('CLARE', 'MANAGER', '68319', '1991-06-09', '2550.00', '0', '1001', '1');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('JONAS', 'MANAGER', '68319', '1991-04-02', '2957.00', '0', '2001', '2');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('SCARLET', 'ANALYST', '65646', '1997-04-19', '3100.00', '0', '2001', '2');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('FRANK', 'ANALYST', '65646', '1991-12-03', '3100.00', '0', '2001', '3');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('SANDRINE', 'CLERK', '69062', '1990-12-18', '900.00', '0', '2001', '4');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('ADELYN', 'SALESMAN','66928', '1991-02-20', '1700.00', '400.00', '3001', '3');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('WADE', 'SALESMAN', '66928', '1991-02-22', '1350.00', '600.00', '3001', '3'); 
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('MADDEN', 'SALESMAN','66928', '1991-09-28', '1350.00', '1500.00', '0', '3001', '4');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('TUCKER', 'SALESMAN', '66928', '1991-09-08', '1600.00', '0.00', '3001', '5');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('ADNRES', 'CLERK', '67858', '1997-05-23', '1200.00', '0', '2001', '5');
INSERT INTO employee (emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, customer_id) VALUES('JULIUS', 'CLERK', '66928', '1991-12-03', '1050.00', '0', '3001', '2');  
    
   
delete from employees where emp_id = 3
    
alter table employee 
modify dep_id smallint primary key unique  not null,
modify salary DECIMAL(7,2) not null,
MODIFY	commission DECIMAL(7,2) not null;

alter table employee
ADD foreign key fk_department_employee (emp_id)
			REFERENCES employee (emp_id)
            		ON UPDATE CASCADE
            		ON DELETE NO ACTION;
    