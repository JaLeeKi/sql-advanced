--Copy, paste, and run the insert statement from the delete section above. (You should have deleted all the
--entries.)

CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER

);

INSERT INTO animals ( name, type, age ) VALUES ('Leo', 'Lion', 12), ('Jerry', 'Mouse', 4), 
('Marty', 'Zebra', 10), ('Gloria', 'Hippo', 8), ('Alex', 'Lion', 9), ('Melman', 'Giraffe', 15), 
('Nala', 'Lion', 2), ('Marie', 'Cat', 1), ('Flounder', 'Fish', 8);

--Add a column to the animals table called “location”. It should have a VARCHAR data type.

ALTER TABLE animals
ADD COLUMN location VARCHAR(50);

--Insert 3 new animals into the table – make sure none of their fields are null.

INSERT INTO animals (name, type, age, location)
VALUES ('Nemo', 'Clown Fish', 5, 'Ocean'), 
('Abu', 'Monkey', 5, 'Agrabah'), 
('Pegasus', 'Pegasus', 5, 'Mount Olympus');

--Change the “type” column’s name to be “species”.

ALTER TABLE animals
RENAME COLUMN type
TO "species";

--Change the “species” column data type to be VARCHAR.

ALTER TABLE animals
ALTER species
SET DATA TYPE VARCHAR(100);