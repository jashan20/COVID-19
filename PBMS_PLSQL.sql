            --PL/SQL BLOCKS--
  
SET SERVEROUTPUT ON
--PROCEDURE 1
DECLARE 
    PID Patient.patient_id%type;
BEGIN   
    PID:=&PATIENT_ID;
    DONORS_FOR_PARTICULAR_PATIENT(PID);
END;

--PROCEDURE 2
BEGIN
    blood_group_quantity_in_bank(12);
END;

--PROCEDURE 3
DECLARE
    BLOOD plasma_bank.blood_group%type;
BEGIN
    BLOOD:=&BLOOD;
    bank_desired_blood_quantity(BLOOD);
END;

--FUNCTION
DECLARE 
    TOTALDON NUMBER;
BEGIN
    TOTALDON:= totalDonor();
    DBMS_OUTPUT.PUT_LINE('Total no of Donors are '|| TOTALDONOR);
END;