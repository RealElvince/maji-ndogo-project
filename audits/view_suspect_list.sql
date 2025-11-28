DROP VIEW IF EXISTS suspect_List;

CREATE VIEW suspect_List AS
SELECT
    employee_name,
    COUNT(*) AS mistake_count
FROM 
	Incorrect_Records
GROUP BY 
	employee_name
HAVING 
	COUNT(*) > 6
ORDER BY mistake_count DESC;