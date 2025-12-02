
#Stored Procedure – Get Patient Details
DELIMITER //

CREATE PROCEDURE GetPatientDetails(IN pid INT)
BEGIN
    SELECT patient_name, gender, age, contact_no
    FROM patient
    WHERE patient_id = pid;
END //

DELIMITER ;


CALL GetPatientDetails(2);


#Stored Procedure with Conditional Logic
DELIMITER //

CREATE PROCEDURE CheckBillStatus(IN aid INT)
BEGIN
    DECLARE status VARCHAR(20);
    SELECT payment_status INTO status
    FROM bill
    WHERE appointment_id = aid;

    IF status = 'Paid' THEN
        SELECT 'Payment Completed' AS Message;
    ELSE
        SELECT 'Payment Pending' AS Message;
    END IF;
END //

DELIMITER ;

-- Call it
CALL CheckBillStatus(1);


#3. Function – Get Total Bill Amount for a Patient
DELIMITER //

CREATE FUNCTION TotalBillAmount(pid INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(b.total_amount)
    INTO total
    FROM bill b
    JOIN appointment a ON a.appointment_id = b.appointment_id
    WHERE a.patient_id = pid;
    RETURN total;
END //

DELIMITER ;

-- Call it
SELECT TotalBillAmount(2) AS Total_Bill;


#4. Function – Count Total Appointments for a Doctor
DELIMITER //

CREATE FUNCTION CountAppointments(did INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM appointment
    WHERE doctor_id = did;
    RETURN total;
END //

DELIMITER ;

-- Call it
SELECT CountAppointments(1) AS Total_Appointments;
