SELECT
    phone_number,
	LENGTH(TRIM(phone_number)) AS phone_number_length
FROM
	employee;