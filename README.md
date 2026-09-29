# 🗄️ Database Management Systems (DBMS) — Practical MST

[![Database](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](#)
[![Language](https://img.shields.io/badge/Language-SQL-CC292B?style=for-the-badge&logo=sqlite&logoColor=white)](#)
[![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)](#)
[![Visibility](https://img.shields.io/badge/Repo-Public-blue?style=for-the-badge&logo=github)](#)

This repository contains the practical examination / MST SQL submission for **Database Management Systems (DBMS)**. It demonstrates foundational database concepts including **Data Definition Language (DDL)**, **Data Manipulation Language (DML)**, **Data Query Language (DQL)**, and **Integrity Constraints**.

---

## 👤 Student Information

| Field | Details |
|---|---|
| **Author** | Yashasvi Dabas |
| **Course** | Database Management Systems (DBMS) |
| **Exam** | Practical MST Examination |
| **Database System** | MySQL / Relational DBMS |
| **Submission File** | [`Yashasvi_DBMS_Prcatical.sql`](./Yashasvi_DBMS_Prcatical.sql) |

---

## 📂 Repository Structure

```text
DBMS-Practical-MST/
├── README.md                     # Documentation & practical overview
└── Yashasvi_DBMS_Prcatical.sql   # Original practical SQL submission script
```

> **Note**: The SQL script file [`Yashasvi_DBMS_Prcatical.sql`](./Yashasvi_DBMS_Prcatical.sql) is preserved in its original form as submitted for evaluation.

---

## 📊 Database Schema & Design

### Database Name
`ChandigarhUni`

### Table Name
`Employee`

The table illustrates various relational constraints ensuring entity, domain, and referential integrity:

| Column Name | Data Type | Constraints | Description |
|---|---|---|---|
| `employee_id` | `INT` | `PRIMARY KEY` | Unique identifier for each employee |
| `name` | `VARCHAR(50)` | `NOT NULL` | Employee full name |
| `email` | `VARCHAR(100)` | `UNIQUE` | Unique corporate email address |
| `age` | `INT` | `CHECK (age >= 18)` | Ensures employee is of legal working age |
| `department` | `VARCHAR(50)` | `NOT NULL` | Department name (e.g., IT, HR, Finance) |
| `salary` | `INT` | `DEFAULT 30000`, `CHECK (salary > 0)` | Base pay with minimum threshold |
| `phone` *(added via ALTER)* | `VARCHAR(15)` | — | Contact telephone number |

---

## 🛠️ Practical Operations Demonstrated

### 1. Database Initialization (DDL)
- **`CREATE DATABASE ChandigarhUni;`** — Allocates a new schema for the university system.
- **`USE ChandigarhUni;`** — Switches active database context.

### 2. Table Definition with Constraints (DDL)
- **`CREATE TABLE Employee (...)`** — Implements primary keys, unique checks, default values, and range validations (`CHECK`).

### 3. Data Ingestion (DML)
- Populates 5 distinct sample employee records across **IT**, **HR**, and **Finance** departments.

```sql
INSERT INTO Employee VALUES
(1, 'Aman',   'aman@gmail.com',  25, 'IT',      40000),
(2, 'Riya',   'riya@gmail.com',  28, 'HR',      35000),
(3, 'Rahul',  'rahul@gmail.com', 30, 'IT',      45000),
(4, 'Neha',   'neha@gmail.com',  26, 'Finance', 50000),
(5, 'Karan',  'karan@gmail.com', 32, 'HR',      38000);
```

### 4. Querying & Filtering (DQL)
- **`SELECT * FROM Employee;`** — Retrieves full table snapshot.
- **`WHERE salary > 40000;`** — Filters employees earning above 40,000.

### 5. Record Updates & Deletions (DML)
- **`UPDATE ... SET salary = salary + 5000 WHERE department = 'IT';`** — Applies departmental bonus/raise.
- **`DELETE FROM Employee WHERE employee_id = 5;`** — Removes specific record by primary key.

### 6. Schema Evolution & Cleanup (DDL)
- **`ALTER TABLE Employee ADD phone VARCHAR(15);`** — Dynamically adds a new column to the table.
- **`TRUNCATE TABLE Employee;`** — Fast-removes all rows while preserving schema structure.
- **`SELECT * FROM Employee;`** — Verifies post-truncation state.

---

## 🚀 How to Execute the Script

### Option 1: MySQL Command-Line Client
```bash
mysql -u <username> -p < Yashasvi_DBMS_Prcatical.sql
```

### Option 2: MySQL Workbench / phpMyAdmin
1. Open **MySQL Workbench** (or your preferred SQL client).
2. Connect to your database server.
3. Open [`Yashasvi_DBMS_Prcatical.sql`](./Yashasvi_DBMS_Prcatical.sql).
4. Click **Execute** (⚡) to run the full script.

---

<div align="center">
  <sub>Submitted for DBMS Practical Examination | Yashasvi Dabas</sub>
</div>
