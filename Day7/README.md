# Hospital Database – Task 7 

##  Objective
To create and use **Views** in SQL for better data abstraction, reusability, and security.

##  Topics Covered
- Creating and querying views  
- Updating and dropping views  
- WITH CHECK OPTION  
- Understanding view limitations  

##  Sample Queries
```sql
CREATE VIEW bill_summary_view AS
SELECT b.bill_id, p.patient_name, b.total_amount, b.payment_status
FROM bill b
JOIN appointment a ON b.appointment_id = a.appointment_id
JOIN patient p ON a.patient_id = p.patient_id;

SELECT * FROM bill_summary_view;
