# SQL Queries Project

## Overview

This project contains SQL scripts for creating and querying a student database using SQLite. It demonstrates joins, subqueries, and window functions on relational tables.

The database file used is `sql.db`.

---

## Database Structure

### student

* `rollno` – Primary key
* `names` – Student name
* `marks` – Student marks
* `city` – Student city
* `age` – Student age
<img width="796" height="281" alt="Screenshot 2026-02-21 at 4 11 12 PM" src="https://github.com/user-attachments/assets/e49307c7-bf58-411a-b716-8caeae0310f6" />

  

### department

* `dept_id` – Primary key
* `rollno` – Foreign key referencing student.rollno
* `dept_name` – Department name

Relationship: `department.rollno` → `student.rollno`

---

## Files

### queries.sql

Creates the `student` and `department` tables and inserts sample records.
This file initializes the database.

### joins.sql

Contains queries using joins between student and department tables.
Includes:

* INNER JOIN
* LEFT JOIN
* Filtering joined data
* GROUP BY and COUNT

### subqueries.sql

Contains queries using nested SELECT statements.
Includes:

* Students above average marks
* Highest and lowest marks
* Second highest marks
* City-based comparisons
* Aggregate-based filtering

### window_functions.sql

Contains queries using window functions.
Includes:

* RANK()
* DENSE_RANK()
* ROW_NUMBER()
* PARTITION BY
* Ranking within groups

### sql.db

SQLite database file containing all tables and data.

---

## How to Run

Using SQLite CLI:

```
sqlite3 sql.db
.read queries.sql
.read joins.sql
.read subqueries.sql
.read window_functions.sql
```

Or open `sql.db` using a SQLite extension in VS Code and execute the queries.

---
