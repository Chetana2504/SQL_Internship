# Hospital Database – Task 4 

##  Objective
To perform data analysis on the Hospital Management database using **aggregate functions**, **GROUP BY**, and **HAVING** clauses.

## Topics Covered
This task focuses on how to summarize and group data efficiently using SQL.

### Concepts Used:
- `SUM()` – to calculate total values  
- `AVG()` – to find average values  
- `MIN()` / `MAX()` – to get minimum and maximum values  
- `COUNT()` – to count records  
- `GROUP BY` – to group results by a column  
- `HAVING` – to filter grouped results  
- `ROUND()` – to format numeric output  

##  Sample Queries
```sql
-- Total amount collected in all bills
SELECT SUM(total_amount) AS Total_Revenue FROM Bill;

-- Average bill amount
SELECT AVG(total_amount) AS Average_Bill FROM Bill;

-- Count of appointments per doctor
SELECT doctor_id, COUNT(appointment_id) AS Total_Appointments
FROM Appointment
GROUP BY doctor_id;

-- Total amount per payment status with HAVING
SELECT payment_status, SUM(total_amount) AS Total
FROM Bill
GROUP BY payment_status
HAVING SUM(total_amount) > 2000;
