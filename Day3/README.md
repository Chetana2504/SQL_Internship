
# Hospital Database – Task 3 

##  Objective
To extract and analyze data from the Hospital Management database using **SELECT** queries with different filters and conditions.

## Topics Covered
This task focuses on learning how to retrieve and filter data using SQL.

### Queries Included:
1. **SELECT *** – Retrieve all data from tables  
2. **WHERE** – Filter specific records  
3. **BETWEEN** – Retrieve values within a range  
4. **AND / OR** – Combine multiple conditions  
5. **LIKE** – Match patterns in text data  
6. **ORDER BY** – Sort results  
7. **LIMIT** – Restrict number of rows returned  
8. **DISTINCT** – Remove duplicates from result set

##  Sample Queries
```sql
SELECT * FROM Doctor;
SELECT * FROM Patient WHERE gender = 'F';
SELECT * FROM Bill WHERE total_amount BETWEEN 2000 AND 3000;
SELECT DISTINCT specialization FROM Doctor;
