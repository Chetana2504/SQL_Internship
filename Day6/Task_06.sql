# IN 
select patient_name 
from patient
where patient_id in (select patient_id from appointment);

# 2. Subquery with Comparison (=)
# Find the doctor who handled the most expensive bill:
SELECT doctor_name
FROM doctor
WHERE doctor_id = (
  SELECT a.doctor_id
  FROM appointment a
  JOIN bill b ON a.appointment_id = b.appointment_id
  WHERE b.total_amount = (SELECT MAX(total_amount) FROM bill)
  
);


#3. Subquery in FROM (Derived Table)
# Show doctor and average bill amount for their appointments:
SELECT d.doctor_name, t.avg_amount
FROM doctor d
JOIN (
  SELECT a.doctor_id, AVG(b.total_amount) AS avg_amount
  FROM appointment a
  JOIN bill b ON a.appointment_id = b.appointment_id
  GROUP BY a.doctor_id
) AS t ON d.doctor_id = t.doctor_id;

# 4. EXISTS Subquery
# List doctors who have at least one appointment:
SELECT doctor_name
FROM doctor d
WHERE EXISTS (
  SELECT 1 FROM appointment a WHERE a.doctor_id = d.doctor_id
);



