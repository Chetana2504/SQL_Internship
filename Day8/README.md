# Hospital_Schema_Task_08


##  Objective
To learn how to modularize SQL logic using **Stored Procedures** and **Functions**.

##  Topics Covered

- CREATE PROCEDURE  
- CREATE FUNCTION  
- IN / OUT parameters  
- Conditional logic using IF statements  
- Using RETURN in functions  

## 💻 Sample Queries
```sql
CREATE PROCEDURE GetPatientDetails(IN pid INT)
BEGIN
    SELECT patient_name, gender, age, contact_no
    FROM patient
    WHERE patient_id = pid;
END;

CREATE FUNCTION TotalBillAmount(pid INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(b.total_amount)
    INTO total
    FROM bill b
    JOIN appointment a ON a.appointment_id = b.appointment_id
    WHERE a.patient_id = pid;
    RETURN total;
END;
