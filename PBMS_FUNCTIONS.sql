--1. Display the total number of donors
CREATE OR REPLACE FUNCTION totalDonor 
RETURN number IS 
 total integer := 0; 
BEGIN 
 SELECT count(*) into total 
 FROM DONOR; 
 
 RETURN total; 
END;
/
