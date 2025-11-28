SELECT *
FROM Incorrect_Records
WHERE employee_name IN (SELECT employee_name FROM suspect_List)
  AND statements LIKE '%cash%'
ORDER BY employee_name, location_id;
