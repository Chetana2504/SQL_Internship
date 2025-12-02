
# Data insertion 
insert into department values(1,'Cardiology'),(2,'Neurology'),(3, 'Orthopedicd');
insert into doctor (Doctor_name,specialization, dept_id) values('Dr.Patil','Cardiology',1),('Dr.Mhettar','Neurology',2),('Dr Shaha','Ortho',3);
insert into patient(patient_name,gender,age,contact_no) values( 'Pratiksha','F',22,12345687),('Chetana','F',23,3214568),('Prachi','F',22,65478961);
insert into appointment(patient_id,doctor_id,appointment_date) values(2,1,'2025-10-22'),(1,2,'2025-10-20'),(3,3,'2025-10-25');
insert into bill(appointment_id,total_amount,payment_status)values(1,2000,'Paid'),(2,3000,'Pending'),(3,4000,'Paid');

# NULL handling

insert into patient(patient_name,gender,age,contact_no) values ('Yo','F',22,Null);

#Update 
update bill
set payment_status = 'Paid'
where appointment_id = 2;
select * from bill;

