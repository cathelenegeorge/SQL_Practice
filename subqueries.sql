-- database: sql.db
-- =====================================
-- STEP 4: View Table
-- =====================================

SELECT * FROM student;

-- =====================================
-- SUBQUERY PRACTICE QUESTIONS
-- =====================================

-- Q1: Students with marks > average marks
SELECT * FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

-- Q2: Student with max marks
SELECT * FROM student
WHERE marks = (SELECT MAX(marks) FROM student);

-- Q3: Student with min marks
SELECT * FROM student
WHERE marks = (SELECT MIN(marks) FROM student);


-- Q4: Students scoring more than Sam
SELECT * FROM student
WHERE marks > (
    SELECT marks FROM student WHERE names = 'Sam'
);

-- Q5: Students with marks less than average
SELECT * FROM student
WHERE marks < (SELECT AVG(marks) FROM student);

-- Q6: Max marks in Delhi
SELECT * FROM student
WHERE city = 'Delhi'
AND marks = (
    SELECT MAX(marks) FROM student WHERE city = 'Delhi'
);

-- Q7: Min marks in Mumbai
SELECT * FROM student
WHERE city = 'Mumbai'
AND marks = (
    SELECT MIN(marks) FROM student WHERE city = 'Mumbai'
);

-- Q8: Students in same city as Ram
SELECT * FROM student
WHERE city = (
    SELECT city FROM student WHERE names = 'Ram'
);

-- Q9: Age greater than average
SELECT * FROM student
WHERE age > (SELECT AVG(age) FROM student);

-- Q10: Second highest marks
SELECT * FROM student
WHERE marks = (
    SELECT MAX(marks)
    FROM student
    WHERE marks < (SELECT MAX(marks) FROM student)
);
-- Another way to fetch highest using limit offset
SELECT * FROM student
ORDER BY marks DESC
LIMIT 1 OFFSET 1;

-- Q11: Marks > average marks of Delhi
SELECT * FROM student
WHERE marks > (
    SELECT AVG(marks)
    FROM student WHERE city = 'Delhi'
);

-- Q12: Marks equal to min marks of Chennai
SELECT * FROM student
WHERE marks = (
    SELECT MIN(marks)
    FROM student WHERE city = 'Chennai'
);

-- Q13: Students not in same city as Priya
SELECT * FROM student
WHERE city != (
    SELECT city FROM student WHERE names = 'Priya'
);

-------  ONLY WORKS IN MYSQL --------------
-- Q14: Marks greater than ALL Chennai students
--  SELECT * FROM student
--  WHERE marks > ALL (
--      SELECT marks FROM student WHERE city = 'Chennai'
--  );

-- Q15: Marks greater than ANY Mumbai student
--  SELECT * FROM student
--  WHERE marks > ANY (
--      SELECT marks FROM student WHERE city = 'Mumbai'
--  );

-- Q16:Students whose marks > average marks of their own city

SELECT * FROM Student s1
WHERE marks >(
    SELECT AVG(marks)
    FROM student s2
    WHERE s1.city = s2.city
);

--Q17:Students with highest marks in each city
SELECT *
FROM student s1
WHERE marks = (
    SELECT MAX(marks)
    FROM student s2
    WHERE s2.city = s1.city
);

--Q18:Students with lowest marks in each city
SELECT * FROM student s1
WHERE marks = (
    SELECT MIN(marks) 
    FROM student s2 
    WHERE s1.city = s2.city);

--Q19:Students older than average age of their city
SELECT * FROM student s1
WHERE age > (
    SELECT AVG(age)
    FROM student s2
    WHERE s1.city = s2.city 
);

-- Q20:Students whose marks are above overall average but below max
SELECT * FROM student 
WHERE marks > (
    SELECT AVG(marks) FROM student)
    AND 
    marks < (
        SELECT MAX(marks) FROM student
    );
