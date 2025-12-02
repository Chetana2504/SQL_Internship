create database hospital_DB;
use hospital_db;
create table Department(dept_id int primary key auto_increment,
dept_name varchar(20));

create table Doctor(
Doctor_id int primary key auto_increment,
Doctor_name varchar(30),
specialization varchar(25),
dept_id int,
foreign key (dept_id) references Department(dept_id));

create table Patient(
patient_id int primary key auto_increment,
patient_name varchar(30),
gender varchar(10),
age int,
contact_no int );


create table Appointment(
appointment_id int primary key auto_increment,
patient_id int,
doctor_id int ,
appointment_date DATE,
foreign key (doctor_id) references Doctor(doctor_id),
foreign key (patient_id) references Patient(patient_id));


create table Bill(
bill_id int primary key auto_increment,
appointment_id int,
total_amount int,
payment_status varchar(20),
foreign key(appointment_id) references Appointment(appointment_id));

