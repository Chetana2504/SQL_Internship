select * from appointment;
select * from bill;
select * from department;
select * from doctor;
select * from patient;

#Inner Join
SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM appointment a
INNER JOIN patient p ON a.patient_id = p.patient_id
INNER JOIN doctor d ON a.doctor_id = d.doctor_id;

# Left join 
SELECT p.patient_name, a.appointment_date, b.total_amount
FROM patient p
LEFT JOIN appointment a ON p.patient_id = a.patient_id
LEFT JOIN bill b ON a.appointment_id = b.appointment_id;

#Right Join
SELECT d.doctor_name, a.appointment_id, a.appointment_date
FROM appointment a
RIGHT JOIN doctor d ON a.doctor_id = d.doctor_id;



SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM appointment a
LEFT JOIN patient p ON a.patient_id = p.patient_id
LEFT JOIN doctor d ON a.doctor_id = d.doctor_id
UNION
SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM appointment a
RIGHT JOIN patient p ON a.patient_id = p.patient_id
RIGHT JOIN doctor d ON a.doctor_id = d.doctor_id;


SELECT p.patient_name, b.total_amount
FROM patient p
INNER JOIN appointment a ON p.patient_id = a.patient_id
INNER JOIN bill b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Paid';


SELECT d.doctor_name, dept.dept_name, COUNT(a.appointment_id) AS Total_Appointments
FROM doctor d
JOIN department dept ON d.dept_id = dept.dept_id
JOIN appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name, dept.dept_name;

