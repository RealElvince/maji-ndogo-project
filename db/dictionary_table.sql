CREATE TABLE IF NOT EXISTS data_dictionary (
   table_name varchar(255) NOT NULL,
   column_name varchar(255) NOT NULL,
   description text,
   datatype varchar(50) DEFAULT NULL,
   related_to varchar(255) DEFAULT NULL
);