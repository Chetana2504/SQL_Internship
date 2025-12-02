#Retrive all data 
select * from appointment;
select * from bill;
select * from department;
select * from doctor;
select * from patient;

# WHERE
select * from patient
where patient_name = 'Pratiksha';

# BETWEEN
select * from bill
where total_amount between 2000 and 3000;

#AND
select * from doctor 
where specialization  = 'Cardiology' and specialization = 'Neurology';

#OR
select * from doctor 
where specialization  = 'Cardiology' or specialization = 'Neurology';


#LIKE
select * from patient
where patient_name like '%Che%';

#SORT
select * from appointment
order by patient_id;
