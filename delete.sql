--Copy, paste, and run the SQL code from the summary.

CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER

);

INSERT INTO animals ( name, type, age ) VALUES ('Leo', 'Lion', 12), ('Jerry', 'Mouse', 4), 
('Marty', 'Zebra', 10), ('Gloria', 'Hippo', 8), ('Alex', 'Lion', 9), ('Melman', 'Giraffe', 15), 
('Nala', 'Lion', 2), ('Marie', 'Cat', 1), ('Flounder', 'Fish', 8);

--Delete all ‘lion’ entries from the table.

DELETE FROM animals
WHERE type = 'Lion';

--Delete all animals whose names start with “M”.

DELETE FROM animals
WHERE name LIKE 'M%';

--Delete all entries whose age is less than 9.

DELETE FROM animals
WHERE age < 9;