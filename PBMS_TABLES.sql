DROP TABLE PLASMA_DETAILS
DROP TABLE DONOR
DROP TABLE PATIENT
DROP TABLE PLASMA_BANK
DROP TABLE LOGIN
DROP TABLE ADMIN_USER

                     --TABLES--

CREATE TABLE ADMIN_USER(
ADMIN_ID NUMBER(6),
AUTHENTICATE_USER NUMBER(7) NOT NULL,
CONSTRAINT ADMIN_PK PRIMARY KEY(ADMIN_ID)
);

CREATE TABLE LOGIN(
USERNAME VARCHAR2(10),
PASSWORD VARCHAR2(15) NOT NULL,
ADMIN_ID NUMBER(6),
CONSTRAINT USERNAME_PK PRIMARY KEY(USERNAME),
CONSTRAINT ADMIN_ID1_FK FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN_USER(ADMIN_ID)
);

CREATE TABLE PATIENT(
NAME VARCHAR2(20),
GENDER VARCHAR2(6),
AREA VARCHAR2(50),
CITY VARCHAR2(20),
PINCODE NUMBER(10),
PATIENT_ID NUMBER(10) ,
BLOOD_GROUP VARCHAR2(3)  NOT NULL,
PHONE_NO NUMBER(10) NOT NULL,
WEIGHT NUMBER(3) NOT NULL,
AGE NUMBER(3) NOT NULL,
ADMIN_ID NUMBER(6) NOT NULL,
CONSTRAINT PATIENT_PK PRIMARY KEY(PATIENT_ID),
CONSTRAINT ADMIN_FK FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN_USER(ADMIN_ID)
);

CREATE TABLE PLASMA_BANK(
PLASMA_ID NUMBER(4),
BLOOD_GROUP VARCHAR2(3) NOT NULL,
ADMIN_ID NUMBER(6) NOT NULL,
CONSTRAINT PLASMA_ID_PK PRIMARY KEY(PLASMA_ID),
CONSTRAINT ADMIN_ID2_FK FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN_USER (ADMIN_ID)
);

CREATE TABLE DONOR(
NAME VARCHAR2(20),
GENDER VARCHAR2(6),
AREA VARCHAR2(50),
CITY VARCHAR2(20),
PINCODE NUMBER(10),
BLOOD_GROUP VARCHAR2(3)  NOT NULL,
PHONE_NO NUMBER(10) NOT NULL,
WEIGHT NUMBER(3) NOT NULL,
AGE NUMBER(3) NOT NULL,
AADHAR_NO NUMBER(20) NOT NULL,
SUFFERING_FROM_SERIOUS_ILLNESS VARCHAR(3),
CONSTRAINT ILL_CK CHECK(SUFFERING_FROM_SERIOUS_ILLNESS IN ('YES','NO','Yes','No','yes','no')),
CONSTRAINT AADHAR_PK PRIMARY KEY(AADHAR_NO)
);

CREATE TABLE PLASMA_DETAILS(
DATE_OF_COVID_REPORT DATE,
COVID_REPORT VARCHAR2(6),
BLOOD_GROUP VARCHAR2(3)  NOT NULL,
PLASMA_ID NUMBER(4) NOT NULL,
AADHAR_NO NUMBER(20) NOT NULL,
ADMIN_ID NUMBER(6) NOT NULL,
CONSTRAINT COVID_REPORT_PK PRIMARY KEY(COVID_REPORT),
CONSTRAINT PLASMA_FK FOREIGN KEY(PLASMA_ID) REFERENCES PLASMA_BANK(PLASMA_ID),
CONSTRAINT AADHAR_FK FOREIGN KEY(AADHAR_NO) REFERENCES DONOR(AADHAR_NO),
CONSTRAINT ADMIN_ID3_FK FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN_USER(ADMIN_ID)
);