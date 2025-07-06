# Task 8 – Stored Procedures and Functions (SQL Internship)

##  Objective
This task demonstrates how to create and use stored procedures and functions in PostgreSQL using pgAdmin.

##  Tools Used
- pgAdmin 4
- PostgreSQL 15

##  What’s Included
- One stored **procedure** to update salaries by department
- One **function** to return the average salary of a department
- Sample `employees` table and inserted data

##  Files
- `task8.sql`: All SQL code (table, data, procedure, function)
- `README.md`: Task explanation

##  How to Test
1. Run all SQL in `task8.sql`
2. Call the procedure:
   ```sql
   CALL update_salary_by_dept('HR', 10);
