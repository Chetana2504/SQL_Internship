# Hospital_Schema_Task_05


##  Objective
To learn how to combine and analyze data from multiple tables using various types of SQL JOINS.

##  Topics Covered
- INNER JOIN  
- LEFT JOIN  
- RIGHT JOIN  
- FULL OUTER JOIN (via UNION in MySQL)  
- Multi-table JOINs  
- WHERE conditions with JOINs  
Sample Queries
```sql
SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM appointment a
INNER JOIN patient p ON a.patient_id = p.patient_id
INNER JOIN doctor d ON a.doctor_id = d.doctor_id;
