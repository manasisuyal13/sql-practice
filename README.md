# 📊 My SQL Learning
---

## 📅 Day 1: Basics & Sorting
**Key Concepts:**
* **Basic Retrieval:** Using `SELECT` and `FROM`.
* **Filtering:** Using `WHERE` with operators like `=` and `!=`.
* **Sorting:** Using `ORDER BY` with `ASC` (default) and `DESC` (highest first).
* **Multi-Sorting:** Prioritizing sorts by listing multiple columns (e.g., Country then Score).

---

## 📅 Day 2: Aggregations, Logic & Execution
**Key Concepts:**
* **Static Values:** Selecting strings and numbers directly (e.g., `SELECT 'hello'`).
* **Aggregate Functions:** `SUM()`, `AVG()`, and `COUNT()`.
* **Grouping:** Using `GROUP BY` to summarize data per category.
* **Having vs. Where:** `WHERE` filters rows; `HAVING` filters aggregated groups.
* **Refining:** `DISTINCT` for unique lists and `TOP` for limiting results.

### ⚙️ SQL Execution Order
Understanding the difference between **Coding Order** and **Execution Order** is crucial for debugging complex queries:



1. `FROM` (Source data)
2. `WHERE` (Filter rows)
3. `GROUP BY` (Group rows)
4. `HAVING` (Filter groups)
5. `SELECT` (Choose columns)
6. `DISTINCT` (Remove duplicates)
7. `ORDER BY` (Sort results)
8. `TOP` (Limit final rows)

---

## 📅 Day 3: Data Definition (DDL) & Manipulation (DML)

**Key Concepts:**

* **DDL (Schema):** Managing the structure of tables (`CREATE`, `ALTER`, `DROP`).
* **DML (Data):** Managing the actual records (`INSERT`, `UPDATE`, `DELETE`).
* **Integrity:** Using `PRIMARY KEY` to prevent duplicates and `NOT NULL` for required data.

---

### 🏗️ Data Definition Language (DDL)

Focuses on the **container** (the table itself).

* **`CREATE`**: Building a table with defined types.
* **`ALTER`**: Modifying columns (`ADD` or `DROP COLUMN`).
* **`DROP`**: Deleting the entire table permanently.

---

### ✍️ Data Manipulation Language (DML)

Focuses on the **content** (the rows).

* **`INSERT INTO`**: Adding new rows (manually or via `SELECT`).
* **`UPDATE`**: Modifying existing records (requires `WHERE` to avoid updating everything).
* **`DELETE`**: Removing specific rows.
* **`TRUNCATE`**: Fast bulk-deletion of all rows while keeping the table structure.

---

### 💡 Data Removal Comparison

Understanding how to clear data safely:

* **`DELETE`**: Selective; uses `WHERE`; slower.
* **`TRUNCATE`**: Wipes all rows; resets auto-increments; very fast.
* **`DROP`**: Deletes the whole table; it’s just gone.

---

## 📅 Day 4: Filtering Data
**Key Concepts:**
* **Comparison Operators:** Filtering rows using `=`, `!=`, `>`, `>=`, `<`, `<=`.
* **Logical Operators:** Combining conditions with `AND`, `OR`, and `NOT`.
* **Range Operator:** Using `BETWEEN` for inclusive range filtering.
* **Membership Operators:** `IN` and `NOT IN` as shorthand for multiple `OR` conditions.
* **Search Operator:** Using `LIKE` with `%` (any characters) and `_` (one character) for pattern matching.

---

## 📅 Day 5: Joins
**Key Concepts:**
* **INNER JOIN:** Returns only rows with a match in both tables.
* **LEFT JOIN:** All rows from left table, `NULL` where no match on the right.
* **RIGHT JOIN:** All rows from right table, `NULL` where no match on the left.
* **FULL JOIN:** All rows from both tables, `NULL` on whichever side has no match.
* **Left Anti Join:** `LEFT JOIN` + `WHERE right_table.key IS NULL` → rows in left with no match in right.
* **Right Anti Join:** `RIGHT JOIN` + `WHERE left_table.key IS NULL` → rows in right with no match in left.
* **Full Anti Join:** `FULL JOIN` + `WHERE either key IS NULL` → unmatched rows from both sides.
* **CROSS JOIN:** Cartesian product — every possible row combination from both tables.
* **Aliases:** Using `AS` (e.g., `customers AS c`) to keep multi-table queries readable.


