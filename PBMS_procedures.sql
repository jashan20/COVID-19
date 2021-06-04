                    --PROCEDURES--
--1)DISPLAY list of details of Donors of required blood group to the patient
CREATE OR REPLACE PROCEDURE donors_for_particular_patient (pid IN Patient.patient_id%type) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('List of Donors for patient id no. '||pid); 
    DBMS_OUTPUT.PUT_LINE('----------------------------------------'); 
    FOR cursor1 IN (select name,area,city,pincode,phone_no,d.blood_group from donor d join plasma_details pd
                    on (d.aadhar_no = pd.aadhar_no) where pd.plasma_id in (select plasma_id from 
                    plasma_bank p join admin_user a on (p.admin_id = a.admin_id) join patient pa
                    on (pa.admin_id = a.admin_id) where p.blood_group in (select blood_group from
                    Patient where patient_id = pid ))) LOOP 
        DBMS_OUTPUT.PUT_LINE('DETAILS');
        DBMS_OUTPUT.PUT_LINE('Donor name: ' || cursor1.name);
        DBMS_OUTPUT.PUT_LINE('Address: '|| cursor1.area ||','||cursor1.city||','||cursor1.pincode);
        DBMS_OUTPUT.PUT_LINE('Contact No: ' || cursor1.phone_no); 
        DBMS_OUTPUT.PUT_LINE(' Blood Group: ' || cursor1.blood_group); 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('_________________________________________'); 
END;

--2)Display individual quantity of all the blood groups in a plasma bank
CREATE OR REPLACE PROCEDURE blood_group_quantity_in_bank (bank_no IN NUMBER) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('List of blood group with quantity in blood bank no. '||bank_no); 
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------------'); 
    FOR cursor1 IN (select blood_group , count(blood_group) quantity from plasma_bank  where admin_id = admin_id group by blood_group order by blood_group) LOOP 
        DBMS_OUTPUT.PUT_LINE('Blood group: ' || cursor1.blood_group || ', Quantity: ' || cursor1.quantity || ' UNITS' ); 
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('_________________________________________'); 
END;

--3)DISPLAY quantity of a particular blood group
CREATE OR REPLACE PROCEDURE bank_desired_blood_quantity (blood IN plasma_bank.blood_group%type) IS 
BEGIN 
    
    DBMS_OUTPUT.PUT_LINE('Details of '||blood||'blood_group'); 
    FOR cursor1 IN (select count(blood_group) quantity from plasma_bank  where blood_group = blood) LOOP
        DBMS_OUTPUT.PUT_LINE('Quantity of a '||blood|| ' Blood Group is '|| cursor1.quantity ); 
    END LOOP; 
    DBMS_OUTPUT.PUT_LINE('_________________________________________'); 
END;
