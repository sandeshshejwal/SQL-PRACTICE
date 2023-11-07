CREATE DATABASE student;
USE student;
CREATE TABLE records (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO records VALUES(1,"Sandesh",21);
INSERT INTO records VALUES(2,"Brijesh",21);
INSERT INTO records VALUES(3,"AAdesh",21);

SELECT * FROM records;
INSERT INTO records
(id,name , age)
VALUES
(101,"MANDY",33),
(102,"ANDY",33),
(103,"PANDY",33);



CREATE DATABASE company;
USE company;
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Casy",40000);

SELECT * FROM employee;