# ⚡ DATA TRANSFORMER

## SQL-Powered Corporate Data Analysis

![Animated project
tagline](https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1000&color=36BCF7&center=true&vCenter=true&width=650&lines=Transform+Raw+Data+into+Insights;Explore+17+Practical+SQL+Queries;JOINs+%7C+Subqueries+%7C+Window+Functions)

![MySQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Data
Analytics](https://img.shields.io/badge/Project-Data%20Analytics-7C3AED?style=for-the-badge)
![17
Queries](https://img.shields.io/badge/Queries-17-16A34A?style=for-the-badge)
![Completed](https://img.shields.io/badge/Status-Completed-16A34A?style=for-the-badge)

> A practical SQL project that models a company's customers, orders, and
> employees --- then uses SQL to answer business questions.

**Documentation** · **[Project Explanation
Video](#-project-explanation-video)** · **[Run the
Project](#-getting-started)**

------------------------------------------------------------------------

## 📌 Table of Contents

1.  [About the Project](#-about-the-project)
2.  [Project Objectives](#-project-objectives)
3.  [Database Design](#-database-design)
4.  [Project Structure](#-project-structure)
5.  [SQL Concepts and 17 Tasks](#-sql-concepts-and-17-tasks)
6.  [Getting Started](#-getting-started)
7.  [Sample Results](#-sample-results)
8.  [Project Explanation Video](#-project-explanation-video)
9.  [Assumptions and Notes](#-assumptions-and-notes)
10. [Future Improvements](#-future-improvements)
11. [Author](#-author)

------------------------------------------------------------------------

## 💡 About the Project

**Data Transformer** is a hands-on SQL project designed to practice data
retrieval, joining, analysis, and transformation in a corporate-style
database.

The database contains three tables:

  -----------------------------------------------------------------------
  Table                               Purpose
  ----------------------------------- -----------------------------------
  `Customers`                         Customer details and registration
                                      dates

  `Orders`                            Customer purchases, order dates,
                                      and order amounts

  `Employees`                         Employee details, departments, hire
                                      dates, and salaries
  -----------------------------------------------------------------------

The project contains 17 SQL tasks covering practical data analysis
techniques.

## 🎯 Project Objectives

-   Design a relational database using primary and foreign keys.
-   Insert and query sample business data.
-   Combine related records using SQL JOINs.
-   Use subqueries to compare values with averages.
-   Extract, compare, and format dates.
-   Clean and transform text values.
-   Calculate running totals and rankings with window functions.
-   Apply business rules using `CASE` expressions.

## 🗄️ Database Design

### Entity relationship diagram

``` mermaid
erDiagram
    CUSTOMERS ||--o{ ORDERS : places

    CUSTOMERS {
        INT CustomerID PK
        VARCHAR FirstName
        VARCHAR LastName
        VARCHAR Email
        DATE RegistrationDate
    }

    ORDERS {
        INT OrderID PK
        INT CustomerID FK
        DATE OrderDate
        DECIMAL TotalAmount
    }

    EMPLOYEES {
        INT EmployeeID PK
        VARCHAR FirstName
        VARCHAR LastName
        VARCHAR Department
        DATE HireDate
        DECIMAL Salary
    }
```

**Relationship:** One customer can place many orders.
`Orders.CustomerID` references `Customers.CustomerID`. The Employees
table is independent in this project.

### Dataset summary

  Table         Sample records
  ----------- ----------------
  Customers                  8
  Orders                    12
  Employees                  8
  **Total**             **28**

## 📁 Project Structure

``` text
Data-Transformer/
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   └── 03_insert_data.sql
│
├── queries/
│   ├── 01_joins.sql
│   ├── 02_subqueries.sql
│   ├── 03_date_functions.sql
│   ├── 04_string_functions.sql
│   ├── 05_window_functions.sql
│   └── 06_case_expressions.sql
│
├── outputs/                 # Optional exported query results
├── screenshots/             # Query execution screenshots
└── README.md
```

## 🧠 SQL Concepts and 17 Tasks

### 1--4 · JOIN Operations

  ------------------------------------------------------------------------
                            \# Task                  Description
  ---------------------------- --------------------- ---------------------
                             1 `INNER JOIN`          Returns customers
                                                     with matching orders.

                             2 `LEFT JOIN`           Returns every
                                                     customer and any
                                                     matching orders.

                             3 `RIGHT JOIN`          Returns every order
                                                     and its matching
                                                     customer, if present.

                             4 Full outer join       Combines left- and
                               equivalent            right-join results
                                                     with `UNION` to
                                                     include unmatched
                                                     rows from both sides.
  ------------------------------------------------------------------------

**MySQL note:** MySQL does not support native `FULL OUTER JOIN` syntax.
This project demonstrates the equivalent using `LEFT JOIN`,
`RIGHT JOIN`, and `UNION`.

### 5--6 · Subqueries

  ------------------------------------------------------------------------
                            \# Task                  Description
  ---------------------------- --------------------- ---------------------
                             5 Above-average order   Finds customers with
                               customers             at least one order
                                                     greater than the
                                                     average order amount.

                             6 Above-average salary  Finds employees whose
                               employees             salary is greater
                                                     than the average
                                                     employee salary.
  ------------------------------------------------------------------------

### 7--9 · Date Functions

  ------------------------------------------------------------------------
                            \# Task                  Function
  ---------------------------- --------------------- ---------------------
                             7 Extract year and      `YEAR()`, `MONTH()`
                               month from an order   
                               date                  

                             8 Calculate days        `DATEDIFF()`,
                               between order date    `CURDATE()`
                               and current date      

                             9 Display dates as      `DATE_FORMAT()`
                               `DD-MM-YYYY`          
  ------------------------------------------------------------------------

### 10--13 · String Functions

  ------------------------------------------------------------------------
                            \# Task                  Function
  ---------------------------- --------------------- ---------------------
                            10 Combine first and     `CONCAT()`
                               last name             

                            11 Replace part of a     `REPLACE()`
                               string                

                            12 Convert first name to `UPPER()`, `LOWER()`
                               uppercase and last    
                               name to lowercase     

                            13 Remove leading and    `TRIM()`
                               trailing spaces from  
                               email                 
  ------------------------------------------------------------------------

### 14--15 · Window Functions

  --------------------------------------------------------------------------------------
                            \# Task                  Function
  ---------------------------- --------------------- -----------------------------------
                            14 Calculate a running   `SUM() OVER (ORDER BY ...)`
                               order total           

                            15 Rank orders from      `RANK() OVER (ORDER BY ... DESC)`
                               highest to lowest     
                               amount                
  --------------------------------------------------------------------------------------

### 16--17 · CASE Expressions

  ------------------------------------------------------------------------
                            \# Task                  Business rule
  ---------------------------- --------------------- ---------------------
                            16 Assign an order       Above 1,000 → 10%;
                               discount              above 500 → 5%;
                                                     otherwise → 0%.

                            17 Categorize employee   Above 80,000 → High;
                               salaries              50,000--80,000 →
                                                     Medium; below 50,000
                                                     → Low.
  ------------------------------------------------------------------------

## 🚀 Getting Started

### Prerequisites

-   MySQL 8.0 or later (recommended).
-   MySQL Workbench, phpMyAdmin, or another MySQL client.
-   Visual Studio Code or another code editor.

### 1. Clone the repository

Replace the placeholder with your repository URL:

``` bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd Data-Transformer
```

Alternatively, download the repository as a ZIP file and open the folder
in VS Code.

### 2. Create the database

Run these files in order:

1.  `database/01_create_database.sql`
2.  `database/02_create_tables.sql`
3.  `database/03_insert_data.sql`

### 3. Execute the analysis queries

Run the query files in order:

1.  `queries/01_joins.sql`
2.  `queries/02_subqueries.sql`
3.  `queries/03_date_functions.sql`
4.  `queries/04_string_functions.sql`
5.  `queries/05_window_functions.sql`
6.  `queries/06_case_expressions.sql`

Run each statement using your MySQL connection.

## 📊 Sample Results

  -----------------------------------------------------------------------
  Analysis                            Expected result with supplied
                                      sample data
  ----------------------------------- -----------------------------------
  Customers with above-average orders 4 customers

  Employees above average salary      4 employees

  Orders returned by JOIN and ranking 12 orders
  queries                             

  Full-outer-join equivalent          13 rows: 12 matched orders and 1
                                      customer without orders
  -----------------------------------------------------------------------

### Example business insights

-   A customer can have multiple orders.
-   A customer with no order is retained by a `LEFT JOIN`.
-   Average salary helps identify above-average earners.
-   Window functions calculate cumulative totals and rankings without
    collapsing individual order rows.

## 🎥 Project Explanation Video

**Video coming soon.** I will add the project walkthrough after
recording it.

When the video is ready, replace the placeholder below with your YouTube
or Google Drive URL:

[▶ Watch the Data Transformer project explanation](YOUR_VIDEO_LINK_HERE)

For Google Drive, set the sharing permission so your instructor or
intended viewers can access the video.

## 📝 Assumptions and Notes

-   The sample data is fictional and intended for learning and
    demonstration.
-   Question 5 is interpreted as finding customers who have at least one
    individual order greater than the average order amount.
-   Question 16 follows the assignment's discount labels: greater than
    1,000 gives 10%; greater than 500 gives 5%; otherwise no discount.
    The query labels the discount; it does not calculate the discounted
    payable amount.
-   Question 17's salary thresholds are project assumptions because the
    assignment does not specify exact boundaries.
-   Question 8 uses the current date at execution time, so its result
    changes over time.
-   The SQL syntax in this project is written for MySQL. Do not mix it
    with SQL Server-specific date functions.

## 🔮 Future Improvements

-   Add more sample records and edge cases.
-   Add data validation and additional constraints.
-   Export selected query results for reporting.
-   Build a dashboard to visualize order and employee analysis.
-   Add query-output screenshots and a project demonstration video.

## 👨‍💻 Author

**Anghan Pal**

BCA Graduate · SQL · Python · Data Analytics · MERN Stack

-   GitHub: [github.com/PalAnghan](https://github.com/PalAnghan)
-   LinkedIn: [linkedin.com/in/pal-anghan-7733402b4](https://www.linkedin.com/in/pal-anghan-7733402b4)
-   Project repository: [Data Transformer
    SQL](https://github.com/PalAnghan/Data_Transformer_SQL)

------------------------------------------------------------------------

⭐ If you find this project useful, consider giving the repository a
star.

**Made with focus, curiosity, and SQL.**
