-- database: sql.db
-- Q1. Show student name and department name
SELECT s.names AS 'Student name',d.dept_name AS 'Department name'
FROM student s
JOIN department d
ON s.rollno = d.rollno ;


-- Q2. Show all students and their departments (even if no department)
SELECT student.names, department.dept_name
FROM student
LEFT JOIN department
ON student.rollno = department.rollno;

-- Q3. Show students who belong to CSE department

SELECT s.names AS 'Student name',d.dept_name AS 'Department name'
FROM student s
JOIN department d
ON s.rollno = d.rollno
WHERE d.dept_name = 'CSE';

-- Q4. Show student name, marks, and department
SELECT s.names AS 'Name',s.marks AS 'Mark',d.dept_name AS 'Department name '
FROM student s
JOIN department d
ON s.rollno = d.rollno;

-- Q5. Show students who don't have a department
SELECT s.names AS 'Name',d.dept_name AS 'Department'
FROM student s
LEFT JOIN department d
ON s.rollno = d.rollno
WHERE d.dept_name IS NULL;

-- Q6. Show department-wise students
SELECT d.dept_name,s.names
FROM student s
JOIN department d
ON s.rollno = d.rollno
ORDER BY d.dept_name;

-- Q7. Show students with marks > 90 and their department
SELECT s.names, d.dept_name,s.marks
FROM student s
INNER JOIN department d
ON s.rollno = d.rollno
WHERE s.marks > 90;

--Q8. Count students in each department
SELECT d.dept_name AS 'Department',COUNT(s.rollno)
FROM student s
JOIN department d
ON s.rollno = d.rollno
GROUP BY d.dept_name;