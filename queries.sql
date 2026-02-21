-- database: sql.db
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    names VARCHAR(50),
    marks INT,
    city VARCHAR(50),
    age INT
);


INSERT INTO student VALUES
(1, 'Ram', 85, 'Delhi', 20),
(2, 'Sam', 90, 'Mumbai', 21),
(3, 'John', 78, 'Delhi', 20),
(4, 'Priya', 95, 'Chennai', 22),
(5, 'Anu', 88, 'Delhi', 21),
(6, 'Ravi', 92, 'Mumbai', 23),
(7, 'Meena', 75, 'Chennai', 20),
(8, 'Karan', 89, 'Delhi', 22);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    rollno INT,
    dept_name VARCHAR(50)
);


INSERT INTO department VALUES
(1, 1, 'CSE'),
(2, 2, 'ECE'),
(3, 3, 'CSE'),
(4, 4, 'AI'),
(5, 5, 'IT'),
(6, 6, 'ECE'),
(7, 8, 'CSE');