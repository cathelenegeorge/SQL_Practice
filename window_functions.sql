-- database: sql.db
-- Q1: Rank students by marks
SELECT names, marks,
RANK() OVER (ORDER BY marks DESC) AS rank
FROM student;

-- Q2: Dense rank students
SELECT names, marks,
DENSE_RANK() OVER (ORDER BY marks DESC) AS rank
FROM student;

-- Q3: Row number

SELECT names, marks,
ROW_NUMBER() OVER (ORDER BY marks DESC) AS rankk
FROM student;

-- Q4: Rank students within city
SELECT names, city, marks,
RANK() OVER (PARTITION BY city ORDER BY marks DESC) AS rankk
FROM student;

-- Q5: Find 3rd highest marks student

SELECT *
FROM (
    SELECT names, marks,
    DENSE_RANK() OVER (ORDER BY marks DESC) AS rank
    FROM student
) t
WHERE rank = 3;