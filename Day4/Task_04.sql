select * from appointment;
select * from bill;
select * from doctor;
select * from patient;

# Total Bill amount
select sum(total_amount)as total_bill from bill;

# Average total amount of bill
select avg(total_amount)as Avg_bill from bill;

# Total appointment 
select count(appointment_id) as total_appointment from appointment;

# Minimum and Maximum amount from bill
select min(total_amount) as min_bill, max(total_amount) as max_bill from bill;

# Total amount collected per Payment_status
select payment_status,sum(total_amount)as total_bill from bill
group by payment_status;

# Total patient handled by each doctor
select doctor_id,count(patient_id)as total_patient from appointment
group by Doctor_id;

#Average bill per payment status
select payment_status,avg(total_amount)as avg_bill from bill
group by payment_status;

#Find total bill per payment status greater than 2000
select payment_status,total_amount 
from bill
having total_amount>2000;

# Gender wise patient count
select gender,count(*) as total_patient
from patient
group by gender;

# Round average bill amount with 2 dwcimal point
select round(avg(total_amount),2) as avg_bill from bill;

