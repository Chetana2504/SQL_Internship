# Show all doctor details with their department names
CREATE VIEW doctor_department_view AS
SELECT d.doctor_id, d.doctor_name, d.specialization, dept.dept_name
FROM doctor d
JOIN department dept ON d.dept_id = dept.dept_id;

# Create a View for Bill Summary
CREATE VIEW bill_summary_view AS
SELECT b.bill_id, p.patient_name, b.total_amount, b.payment_status
FROM bill b
JOIN appointment a ON b.appointment_id = a.appointment_id
JOIN patient p ON a.patient_id = p.patient_id;


#CREATE VIEW pending_payments AS
SELECT p.patient_name, b.total_amount, b.payment_status
FROM bill b
JOIN appointment a ON b.appointment_id = a.appointment_id
JOIN patient p ON a.patient_id = p.patient_id
WHERE b.payment_status = 'Pending';

#Select Data from a View
SELECT * FROM bill_summary_view;

#Update Data Through a View
UPDATE bill_summary_view
SET payment_status = 'Paid'
WHERE bill_id = 2;

#Drop a View
DROP VIEW IF EXISTS pending_payments;
