CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    grade VARCHAR(1),
    marks INT NOT NULL,
    name VARCHAR(50),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, grade, marks, name, city)
values
(101,"A", 98, "Sandesh", "Pune"),
(102,"B", 78, "Adesh", "Pune"),
(103,"C", 68, "Gitesh", "Gujarat"),
(104,"D", 58, "Hitesh", "Mumbai"),
(105,"E", 48, "Ritesh", "Hyderabad"),
(106,"F", 38, "Mahesh", "Kerala"),
(107,"A", 94, "Bhavesh", "Gujarat"),
(108,"B", 84, "Shailesh", "Bihar"),
(109,"D", 60, "Jignesh", "Bombay"),
(110,"C", 73, "Ganesh", "Camp");

SELECT name, marks FROM student;
SELECT DISTINCT marks from student;


SELECT * 
FROM student 
where marks > 80 AND (city = "Pune" OR city =  "Gujarat");


SELECT * 
FROM student 
WHERE marks+20>100;


SELECT *
FROM student
WHERE marks BETWEEN 60 AND 100;


select *
from student
where city in ("Pune","Gujarat");


SELECT *
FROM student
WHERE city NOT IN ("Pune");


SELECT *
FROM student
WHERE marks > 50
LIMIT 5;


SELECT * 
FROM student
WHERE marks > 40
ORDER BY marks DESC
LIMIT 5;

SELECT COUNT(name)
FROM student;

SELECT AVG(marks)
from student;

SELECT DISTINCT city,name,count(rollno)
FROM student
GROUP BY city,name;
 
 SELECT city,avg(marks)
 FROM student GROUP BY city;


SELECT city,avg(marks)
FROM student 
GROUP BY city
ORDER BY avg(marks) DESC;


SELECT grade,count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;


SELECT city,count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks)>90;
SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET grade = 'O'
WHERE grade = "A";

SELECT * FROM student;

