USE md_water_services;

UPDATE employee
SET email = CONCAT(LOWER(REPLACE(employee_name, ' ','.')),"@ndogomaji.gov");

SELECT * FROM employee;