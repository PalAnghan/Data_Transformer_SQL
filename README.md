::: {align="center"}
# ⚡ DATA TRANSFORMER

### SQL-Powered Corporate Data Analysis

`<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1000&color=36BCF7&center=true&vCenter=true&width=650&lines=Transform+Raw+Data+into+Insights;Explore+17+Practical+SQL+Queries;JOINs+%7C+Subqueries+%7C+Window+Functions" alt="Animated project tagline" />`{=html}

```{=html}
<p>
```
`<img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL badge" />`{=html}
`<img src="https://img.shields.io/badge/Project-Data%20Analytics-7C3AED?style=for-the-badge" alt="Data analytics badge" />`{=html}
`<img src="https://img.shields.io/badge/Queries-17-16A34A?style=for-the-badge" alt="17 queries badge" />`{=html}
`<img src="https://img.shields.io/badge/Status-Completed-16A34A?style=for-the-badge" alt="Project status badge" />`{=html}
```{=html}
</p>
```
**A practical SQL project that models a small company's customers,
orders, and employees --- then uses SQL to answer business questions.**

[📖 Documentation](#-table-of-contents) · [🎥 Explanation
Video](#-project-explanation-video) · [🚀 Run the
Project](#-getting-started)
:::

------------------------------------------------------------------------

## 📌 Table of Contents

```{=html}
<details open>
```
```{=html}
<summary>
```
`<strong>`{=html}Click to expand / collapse navigation`</strong>`{=html}
```{=html}
</summary>
```
-   [About the Project](#-about-the-project)
-   [Project Objectives](#-project-objectives)
-   [Database Design](#-database-design)
-   [Project Structure](#-project-structure)
-   [SQL Concepts and 17 Tasks](#-sql-concepts-and-17-tasks)
-   [Getting Started](#-getting-started)
-   [Sample Results](#-sample-results)
-   [Project Explanation Video](#-project-explanation-video)
-   [Assumptions and Notes](#-assumptions-and-notes)
-   [Future Improvements](#-future-improvements)
-   [Author](#-author)

```{=html}
</details>
```
## 💡 About the Project

**Data Transformer** is a hands-on SQL project designed to practice data
retrieval, joining, analysis, and transformation in a corporate-style
database.

The database contains three related tables:

-   **Customers** --- customer details and registration dates.
-   **Orders** --- customer purchases, order dates, and order amounts.
-   **Employees** --- employee details, departments, hire dates, and
    salaries.

The project uses a set of 17 SQL tasks to turn these records into useful
information for reporting and analysis.

## 🎯 Project Objectives

-   Design a relational database with primary and foreign keys.
-   Insert and query sample business data.
-   Combine related records using SQL JOINs.
-   Use subqueries to compare values with averages.
-   Extract, compare, and format dates.
-   Clean and transform text values.
-   Calculate running totals and rankings with window functions.
-   Apply business rules using `CASE` expressions.

## 🗄️ Database Design

### Entity relationship overview

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

### Tables at a glance

  Table         Primary key    Purpose                       Sample rows
  ------------- -------------- --------------------------- -------------
  `Customers`   `CustomerID`   Customer information                    8
  `Orders`      `OrderID`      Customer transactions                  12
  `Employees`   `EmployeeID`   Employee performance data               8
  **Total**     ---            **Sample records**                 **28**

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

```{=html}
<details open>
```
```{=html}
<summary>
```
`<strong>`{=html}1--4 · JOIN Operations`</strong>`{=html}
```{=html}
</summary>
```
  ------------------------------------------------------------------------
                            \# Task                  What it does
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

> **MySQL note:** MySQL does not provide a native `FULL OUTER JOIN`
> syntax. This project demonstrates the equivalent using `LEFT JOIN`,
> `RIGHT JOIN`, and `UNION`.

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}5--6 · Subqueries`</strong>`{=html}
```{=html}
</summary>
```
  ------------------------------------------------------------------------
                            \# Task                  What it does
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

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}7--9 · Date Functions`</strong>`{=html}
```{=html}
</summary>
```
  ------------------------------------------------------------------------
                            \# Task                  MySQL function
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

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}10--13 · String Functions`</strong>`{=html}
```{=html}
</summary>
```
  ------------------------------------------------------------------------
                            \# Task                  MySQL function
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

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}14--15 · Window Functions`</strong>`{=html}
```{=html}
</summary>
```
  --------------------------------------------------------------------------------------
                            \# Task                  SQL function
  ---------------------------- --------------------- -----------------------------------
                            14 Calculate a running   `SUM() OVER (ORDER BY ...)`
                               order total           

                            15 Rank orders from      `RANK() OVER (ORDER BY ... DESC)`
                               highest to lowest     
                               amount                
  --------------------------------------------------------------------------------------

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}16--17 · CASE Expressions`</strong>`{=html}
```{=html}
</summary>
```
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

```{=html}
</details>
```
## 🚀 Getting Started

### Prerequisites

-   MySQL 8.0+ recommended (window functions are supported).
-   MySQL Workbench, phpMyAdmin, or another MySQL client.
-   A code editor such as Visual Studio Code.

### 1. Clone the repository

Replace the placeholder with your GitHub repository URL after you create
it.

``` bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd Data-Transformer
```

Or download the repository as a ZIP file and open the folder in VS Code.

### 2. Create the database

Run the SQL files in this order:

1.  `database/01_create_database.sql`
2.  `database/02_create_tables.sql`
3.  `database/03_insert_data.sql`

### 3. Run the analysis queries

Execute the query files in order:

1.  `queries/01_joins.sql`
2.  `queries/02_subqueries.sql`
3.  `queries/03_date_functions.sql`
4.  `queries/04_string_functions.sql`
5.  `queries/05_window_functions.sql`
6.  `queries/06_case_expressions.sql`

> Run each query in a MySQL connection. The SQL files are organized for
> learning and review; execute the relevant statement or selected block
> in your SQL editor.

## 📊 Sample Results

The sample dataset contains 8 customers, 12 orders, and 8 employees.

  -----------------------------------------------------------------------
  Analysis                            Expected result with the supplied
                                      sample data
  ----------------------------------- -----------------------------------
  Customers with above-average orders 4 customers

  Employees above average salary      4 employees

  Orders returned by JOIN and ranking 12 orders
  queries                             

  Customers returned by the           13 rows (12 matched orders + 1
  full-outer-join equivalent          customer without orders)
  -----------------------------------------------------------------------

**Example business insights:**

-   A customer can have multiple orders.
-   A customer with no order is retained by a `LEFT JOIN`.
-   The average employee salary can be used to identify above-average
    earners.
-   Window functions calculate cumulative totals and order rankings
    without collapsing the individual order rows.

## 🎥 Project Explanation Video

> **Video link will be added after recording.**

::: {align="center"}
[![Project explanation video
placeholder](https://img.shields.io/badge/▶%20Watch%20Project%20Explanation-Add%20Video%20Link%20Later-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](YOUR_VIDEO_LINK_HERE)

**Coming soon --- a walkthrough of the database design, all 17 SQL
tasks, and query results.**
:::

To add your video later, replace `YOUR_VIDEO_LINK_HERE` with your
YouTube or Google Drive share URL. For Google Drive, make sure the video
sharing permission allows your intended viewers to access it.

## 📝 Assumptions and Notes

-   The sample data is for learning and demonstration; it is not real
    customer or employee information.
-   Question 5 is interpreted as finding customers who have at least one
    individual order greater than the average order amount.
-   Question 16 uses the discount labels specified in the assignment:
    greater than 1,000 gives 10%, greater than 500 gives 5%, otherwise
    no discount. The query labels the discount; it does not calculate a
    discounted payable amount.
-   Question 17's salary thresholds are project assumptions because the
    assignment does not specify exact boundaries.
-   Question 8 uses the current date at execution time, so its result
    changes over time.
-   The SQL syntax in this README is written for MySQL. Do not mix it
    with SQL Server-specific date functions.

## 🔮 Future Improvements

-   Add more sample records and edge cases.
-   Add data validation and additional constraints.
-   Export selected query results for reporting.
-   Build a dashboard to visualize order and employee analysis.
-   Add screenshots of query outputs and a project demonstration video.

## 👨‍💻 Author

**Anghan Pal**

BCA Graduate · SQL · Python · Data Analytics · MERN Stack

-   GitHub: [Add your GitHub profile URL](YOUR_GITHUB_PROFILE_URL)
-   LinkedIn: [Add your LinkedIn profile URL](YOUR_LINKEDIN_PROFILE_URL)
-   Project repository: [Add repository URL](YOUR_GITHUB_REPOSITORY_URL)

------------------------------------------------------------------------

::: {align="center"}
**⭐ If you find this project useful, consider giving the repository a
star!**

Made with focus, curiosity, and SQL.
:::
