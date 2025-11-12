CREATE TABLE employee (
   assigned_employee_id int NOT NULL,
   employee_name varchar(255) DEFAULT NULL,
   phone_number varchar(15) DEFAULT NULL,
   email varchar(255) DEFAULT NULL,
   address varchar(255) DEFAULT NULL,
   province_name varchar(255) DEFAULT NULL,
   town_name varchar(255) DEFAULT NULL,
   position varchar(255) DEFAULT NULL,
   PRIMARY KEY (`assigned_employee_id`)
);