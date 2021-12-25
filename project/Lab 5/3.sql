DROP TABLE students;
DROP TABLE english_group;
CREATE TABLE students(
	Roll	Int,
	Name	Varchar (20),
	Subject	Varchar(20)
);

CREATE TABLE english_group(
	Roll	Int,
	Name	Varchar (20)
);

INSERT INTO students VALUES (1, 'Ratul', 'Science');
INSERT INTO students VALUES (2, 'Nafee', 'Science');
INSERT INTO students VALUES (3, 'Shawon', 'English');
INSERT INTO students VALUES (4, 'Biva', 'Geography');
INSERT INTO students VALUES (5, 'Farhana', 'English');

COMMIT;