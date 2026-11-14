# Database Engineering Lab

A structured collection of SQL scripts, relational schema designs, and mini database projects built with MySQL.

## Repository Structure

- **01-basics/** — Core DDL & DML commands (`CREATE`, `ALTER`, `TRUNCATE`, `INSERT`, `SELECT`, `UPDATE`)
- **02-constraints/** — Primary keys, foreign keys, `NOT NULL`, `UNIQUE`, and `CHECK` constraints
- **03-joins/** — Multi-table relational queries (`INNER`, `LEFT`, `RIGHT`, `CROSS`)
- **04-aggregations/** — Data grouping and analytics (`GROUP BY`, `HAVING`, aggregate functions)
- **05-projects/** — End-to-end database schemas and management systems (e.g., `student_management_db`)

## How to Run

1. Open MySQL CLI or MySQL Workbench.
2. Execute any `.sql` file using:
   ```sql
   SOURCE path/to/file.sql;
