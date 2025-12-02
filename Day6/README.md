# Hospital_schema_Task_06


##  Objective
To understand and implement **subqueries and nested queries** in SQL using the Hospital Management database.

##  Topics Covered
- Subqueries in SELECT, WHERE, and FROM  
- Scalar and correlated subqueries  
- Using IN, EXISTS, and = operators  
- Derived tables and nested logic  

##  Sample Queries
```sql
SELECT patient_name
FROM patient
WHERE patient_id IN (SELECT patient_id FROM appointment);

SELECT doctor_name
FROM doctor d
WHERE EXISTS (SELECT 1 FROM appointment a WHERE a.doctor_id = d.doctor_id);
