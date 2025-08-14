# Task 7 – Sales Data Analysis using SQLite and Python

##  Objective
Analyze sales data stored in an SQLite database to extract:
- Total quantity sold per product
- Total revenue per product
- Additional insights like best-selling product, highest revenue product, and average price per product
- Visualization of revenue by product

---

##  Project Structure
```
.
 sales_data.db        # SQLite database file
 Task7_Sales.ipynb    # Jupyter Notebook with all queries & plots
 sales_chart.png      # Visualization of revenue by product
 README.md            # Project documentation
```

---

##  Technologies Used
- **Python** (Data Analysis & Visualization)
- **SQLite** (Database)
- **Pandas** (Data manipulation)
- **Matplotlib** (Data visualization)
- **Jupyter Notebook** (Execution environment)

---

##  Steps Performed
1. Created an **SQLite database** `sales_data.db` and a table `sales` with columns:
   - `product` (TEXT)
   - `quantity` (INTEGER)
   - `price` (REAL)
2. Inserted sample sales data.
3. Queried total quantity and revenue per product using SQL.
4. Visualized revenue by product using **Matplotlib**.
5. Added extra queries for deeper insights:
   - Best-selling product by quantity
   - Highest revenue product
   - Average price per product

---

##  How to Run
1. **Open Jupyter Notebook**:
   ```bash
   jupyter notebook
   ```
2. Open `Task7_Sales.ipynb`.
3. Run each cell in order:
   - **Cell 1** → Create database & insert data
   - **Cell 2** → Main query & plot
   - **Cell 3** → Extra queries
   - **Cell 4** → Close database connection

---

##  Sample Output
**DataFrame Output:**
| product | total_qty | revenue    |
|---------|-----------|------------|
| Laptop  | 8         | 406000.0   |
| Phone   | 15        | 305000.0   |
| Tablet  | 7         | 105000.0   |

---

##  Author
**Shubham Milind Phatkare**  
