--DATA OF ADMIN_USER
INSERT INTO ADMIN_USER(ADMIN_ID,AUTHENTICATE_USER)
VALUES(1,100001);

INSERT INTO ADMIN_USER(ADMIN_ID,AUTHENTICATE_USER)
VALUES(2,100002);

INSERT INTO ADMIN_USER(ADMIN_ID,AUTHENTICATE_USER)
VALUES(3,100003);

--DATA OF LOGIN 
INSERT INTO LOGIN(USERNAME,PASSWORD,ADMIN_ID) 
VALUES('JASHAN','AR@12345',1);

INSERT INTO LOGIN(USERNAME,PASSWORD,ADMIN_ID) 
VALUES('ARNAV','B03940834',2);

INSERT INTO LOGIN(USERNAME,PASSWORD,ADMIN_ID) 
VALUES('ROHIT4','1rOHIT5',1);

INSERT INTO LOGIN(USERNAME,PASSWORD,ADMIN_ID) 
VALUES('ADI432','123aaaDI45',1);

INSERT INTO LOGIN(USERNAME,PASSWORD,ADMIN_ID) 
VALUES('JAJS100','JS22@345',2);

--DATA OF PATIENT
INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('ARUN','MALE','C-SCHEME','JALANDHAR',193901,1,'O+',9239932929,55,19,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('ARUNA','FEMALE','BHAGWANT ROAD','PATIALA',193902,2,'O-',9239932920,53,18,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('ARIHANT','MALE','MALVIYA NAGAR','AGRA',110322,3,'AB+',9239932921,55,23,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('ABRAM','MALE','MAHAVEER NAGAR','JODHPUR',193922,4,'AB-',977932923,62,29,2);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('ROSHAN','MALE','TONK ROAD','JAIPUR',193901,5,'AB-',9239112929,51,32,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('SHUBHI','FEMALE','SECTOR 17','CHANDIGARH',193955,6,'B+',9239112924,71,42,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('AASTHA','FEMALE','MALVIYA ROAD','JAISALMER',173901,7,'B-',9239112926,61,23,2);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('AKSHAT','MALE','SECTOR 11','MOHALI',113901,8,'AB-',9239112930,56,22,1);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('AASHNA','FEMALE','SECTOR 23','DELHI',110122,9,'A+',7431129249,75,62,2);

INSERT INTO PATIENT(NAME,GENDER,AREA,CITY,PINCODE,PATIENT_ID,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,ADMIN_ID)
VALUES('RIYA','FEMALE','DWARKA','DELHI',111901,10,'A-',9299112929,61,40,1);

--DATA OF PLASMA_BANK
INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(101,'A+',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(102,'A-',2);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(103,'B+',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(104,'B-',2);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(105,'AB+',2);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(106,'AB-',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(107,'O+',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(108,'O-',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(110,'B+',1);

INSERT INTO PLASMA_BANK(PLASMA_ID,BLOOD_GROUP,ADMIN_ID)
VALUES(109,'B+',2);

--DATA OF DONAR
INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('ABHAY','MALE','MAHAVIR NAGAR','AMRITSAR',129122,'A+',6310039133,55,19,5400129240134010,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('ABHISH','MALE','DURGA NAGAR','GANGTOK',166122,'A-',631011133,51,29,5400129240134011,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('BARKHA','FEMALE','MANSAROVER','JAIPUR',302003,'B+',631003133,65,49,5400129240134012,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('BHISHMA','MALE','DURGAPURA NAGAR','DURGAPUR',229122,'B-',6310039003,52,32,5400129240134013,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('HASHIMA','FEMALE','DURGAPURA','JAIPUR',302018,'AB+',6310039773,51,19,5400129240134014,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('REKHA','FEMALE','MANSA','PUNJAB',100111,'AB-',6310032111,69,34,5400129240134015,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('AKSHAY','MALE','DUR NAGAR','SIROHI',129122,'O+',6311139133,63,43,5400129240134016,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('TUSHAR','MALE','BHAGWANT ROAD','JODHPUR',120022,'O-',6310039188,62,19,5400129240134017,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('NISHANT','MALE','SCHEME NAGAR','AHMEDABAD',111122,'O+',6309129133,65,29,5400129240134018,'NO');

INSERT INTO DONOR(NAME,GENDER,AREA,CITY,PINCODE,BLOOD_GROUP,PHONE_NO,WEIGHT,AGE,AADHAR_NO,SUFFERING_FROM_SERIOUS_ILLNESS)
VALUES('OJASWI','FEMALE','SECTOR 17','CHANDIGARH',100100,'AB+',6310039133,72,24,5400129240134019,'NO');

--DATA OF PLASMA_DETAILS
INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/04/2021','10A','A+',101,5400129240134010,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/04/2021','11A','A-',102,5400129240134011,2);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/04/2021','12A','B+',103,5400129240134012,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/14/2021','13A','B-',104,5400129240134013,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/15/2021','14A','AB+',105,5400129240134014,2);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/13/2021','15A','AB-',106,5400129240134015,2);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/12/2021','16A','O+',107,5400129240134016,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/11/2021','17A','O-',108,5400129240134017,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/10/2021','18A','O+',107,5400129240134018,1);

INSERT INTO PLASMA_DETAILS(DATE_OF_COVID_REPORT,COVID_REPORT,BLOOD_GROUP,PLASMA_ID,AADHAR_NO,ADMIN_ID)
VALUES('04/09/2021','19A','AB+',105,5400129240134019,1);

