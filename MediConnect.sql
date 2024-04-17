drop database if exists MediConnect;
create database MediConnect;
use MediConnect;

CREATE TABLE Doctor (
    DocID INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    Specialty VARCHAR(100)
);

CREATE TABLE Patient (
    PID INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    DOB DATE,
    Sex VARCHAR(6),
    Insurance VARCHAR(100)
);

CREATE TABLE Nurse (
    NID INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL
);

CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    Date DATE,
    Time TIME,
    Treatment VARCHAR(255),
    DoctorID INT,
    PatientID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DocID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PID)
);

CREATE TABLE Clerk (
    CID INT PRIMARY KEY,
    FName VARCHAR(50),
    LName VARCHAR(50)
);

CREATE TABLE Insurance (
    PolicyNo INT PRIMARY KEY,
    Company VARCHAR(255),
    Plan VARCHAR(255),
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PID)
);

CREATE TABLE Treats (
    RecordID INT PRIMARY KEY,
    DoctorID INT,
    PatientID INT,
    Date DATE,
    Time TIME,
    Treatment VARCHAR(255),
    Drug VARCHAR(100),
    Dosage FLOAT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DocID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PID),
    FOREIGN KEY (Date, Time) REFERENCES MedicalRecords(Date, Time)
);

INSERT INTO Doctor (DocID, FName, LName, Specialty)
VALUES
    (1, 'Matthew', 'Rodriguez', 'Physician'),
    (2, 'Olivia', 'Perez', 'Dermatologist'),
    (3, 'Ethan', 'Torres', 'Anesthesiologist'),
    (4, 'Isabella', 'Flores', 'OBGYN'),
    (5, 'Andrew', 'Rivera', 'Physician'),
    (6, 'Sophia', 'Gomez', 'Cardiologist'),
    (7, 'James', 'Diaz', 'Pediatrician'),
    (8, 'Charlotte', 'Sanchez', 'Surgeon');
    
INSERT INTO Patient (PID, FName, LName, DOB, Sex, Insurance)
VALUES
	(1, 'Emma', 'Johnson', '1982-03-17', 'Female', 'Cigna'),
    (2, 'Daniel', 'Smith', '1979-09-05', 'Male', NULL),
    (3, 'Olivia', 'Taylor', '1994-06-28', 'Female', 'UnitedHealth Group'),
    (4, 'William', 'Lee', '1988-11-12', 'Male', 'Blue Cross Blue Shield'),
    (5, 'Sophia', 'Wong', '1985-02-09', 'Female', NULL),
    (6, 'James', 'Brown', '1991-08-03', 'Male', 'Aetna'),
    (7, 'Ella', 'Miller', '1976-04-23', 'Female', NULL),
    (8, 'Logan', 'Anderson', '1997-01-30', 'Male', 'UnitedHealth Group'),
    (9, 'Avery', 'Campbell', '1983-07-15', 'Female', 'Anthem'),
    (10, 'Evelyn', 'Martinez', '1989-05-19', 'Female', NULL),
    (11, 'Mason', 'Nguyen', '1980-12-02', 'Male', 'Humana'),
    (12, 'Harper', 'Johnson', '1995-10-08', 'Female', NULL),
    (13, 'Liam', 'Patel', '1986-09-14', 'Male', 'Aetna'),
    (14, 'Aria', 'Garcia', '1993-03-21', 'Female', NULL),
    (15, 'Jackson', 'Chen', '1978-11-25', 'Male', 'Blue Cross Blue Shield'),
    (16, 'Scarlett', 'Liu', '1984-08-18', 'Female', 'Anthem'),
    (17, 'Levi', 'Brown', '1990-06-10', 'Male', 'Humana'),
    (18, 'Addison', 'Kim', '1982-04-07', 'Female', NULL),
    (19, 'Madison', 'Khan', '1977-09-12', 'Female', 'UnitedHealth Group'),
    (20, 'Chloe', 'Gomez', '1996-12-05', 'Female', 'Blue Cross Blue Shield'),
    (21, 'Henry', 'Gonzalez', '1981-03-28', 'Male', 'Anthem'),
    (22, 'Grace', 'Wang', '1987-07-04', 'Female', NULL),
    (23, 'Wyatt', 'Singh', '1988-02-19', 'Male', 'Cigna'),
    (24, 'Amelia', 'Patel', '1995-11-22', 'Female', NULL),
    (25, 'Oliver', 'Li', '1983-05-16', 'Male', 'Blue Cross Blue Shield'),
    (26, 'Aubrey', 'Ng', '1989-09-03', 'Female', 'Anthem'),
    (27, 'Emma', 'Johnson', '1982-03-17', 'Female', 'Cigna'),
    (28, 'Daniel', 'Smith', '1979-09-05', 'Male', NULL),
    (29, 'Olivia', 'Taylor', '1994-06-28', 'Female', 'UnitedHealth Group'),
    (30, 'William', 'Lee', '1988-11-12', 'Male', 'Blue Cross Blue Shield'),
    (31, 'Sophia', 'Wong', '1985-02-09', 'Female', NULL),
    (32, 'James', 'Brown', '1991-08-03', 'Male', 'Aetna'),
    (33, 'Ella', 'Miller', '1976-04-23', 'Female', NULL),
    (34, 'Logan', 'Anderson', '1997-01-30', 'Male', 'UnitedHealth Group'),
    (35, 'Avery', 'Campbell', '1983-07-15', 'Female', 'Anthem'),
    (36, 'Evelyn', 'Martinez', '1989-05-19', 'Female', NULL),
    (37, 'Mason', 'Nguyen', '1980-12-02', 'Male', 'Humana'),
    (38, 'Harper', 'Johnson', '1995-10-08', 'Female', NULL),
    (39, 'Liam', 'Patel', '1986-09-14', 'Male', 'Aetna'),
    (40, 'Aria', 'Garcia', '1993-03-21', 'Female', NULL),
    (41, 'Jackson', 'Chen', '1978-11-25', 'Male', 'Blue Cross Blue Shield'),
    (42, 'Scarlett', 'Liu', '1984-08-18', 'Female', 'Anthem'),
    (43, 'Levi', 'Brown', '1990-06-10', 'Male', 'Humana'),
    (44, 'Addison', 'Kim', '1982-04-07', 'Female', NULL),
    (45, 'Madison', 'Khan', '1977-09-12', 'Female', 'UnitedHealth Group'),
    (46, 'Chloe', 'Gomez', '1996-12-05', 'Female', 'Blue Cross Blue Shield'),
    (47, 'Henry', 'Gonzalez', '1981-03-28', 'Male', 'Anthem'),
    (48, 'Grace', 'Wang', '1987-07-04', 'Female', NULL),
    (49, 'Wyatt', 'Singh', '1988-02-19', 'Male', 'Cigna'),
    (50, 'Amelia', 'Patel', '1995-11-22', 'Female', NULL),
    (51, 'Oliver', 'Li', '1983-05-16', 'Male', 'Blue Cross Blue Shield'),
    (52, 'Aubrey', 'Ng', '1989-09-03', 'Female', 'Anthem'),
    (53, 'Emily', 'Gonzales', '1978-08-30', 'Female', NULL),
    (54, 'Benjamin', 'Thompson', '1992-10-24', 'Male', 'Cigna'),
    (55, 'Luna', 'Robinson', '1981-06-29', 'Female', 'UnitedHealth Group'),
    (56, 'Jack', 'Lopez', '1986-04-14', 'Male', 'Blue Cross Blue Shield'),
    (57, 'Avery', 'Le', '1994-01-18', 'Female', NULL),
    (58, 'Penelope', 'Gupta', '1987-07-22', 'Female', 'Humana'),
    (59, 'Luke', 'Nguyen', '1980-11-26', 'Male', NULL),
    (60, 'Stella', 'Martinez', '1996-09-08', 'Female', 'UnitedHealth Group'),
    (61, 'Leo', 'Singh', '1985-03-02', 'Male', 'Blue Cross Blue Shield'),
    (62, 'Nora', 'Wu', '1979-05-11', 'Female', 'Anthem'),
    (63, 'Hudson', 'Gonzales', '1993-08-13', 'Male', NULL),
    (64, 'Eleanor', 'Patel', '1982-07-17', 'Female', 'Cigna'),
    (65, 'Grayson', 'Chan', '1988-12-20', 'Male', 'UnitedHealth Group'),
    (66, 'Violet', 'Huang', '1995-02-25', 'Female', 'Blue Cross Blue Shield'),
    (67, 'Daniel', 'Brown', '1983-04-01', 'Male', 'Anthem'),
    (68, 'Hazel', 'Kumar', '1977-10-07', 'Female', 'Humana'),
    (69, 'Isaac', 'Patel', '1990-06-15', 'Male', NULL),
    (70, 'Lily', 'Chowdhury', '1984-09-29', 'Female', 'UnitedHealth Group'),
    (71, 'Julian', 'Lee', '1981-02-03', 'Male', 'Blue Cross Blue Shield'),
    (72, 'Zoey', 'Das', '1997-11-27', 'Female', 'Anthem'),
    (73, 'Eli', 'Choudhury', '1976-08-10', 'Male', NULL),
    (74, 'Lillian', 'Chen', '1992-03-14', 'Female', 'Cigna'),
    (75, 'Carter', 'Gupta', '1980-01-07', 'Male', 'UnitedHealth Group'),
    (76, 'Claire', 'Fernandez', '1985-07-05', 'Female', NULL),
    (77, 'Adrian', 'Kaur', '1993-09-18', 'Male', 'Anthem'),
    (78, 'Sofia', 'Patel', '1978-04-22', 'Female', 'Humana');
    
    INSERT INTO Nurse (Nid, FName, LName)
VALUES
    (1, 'Emily', 'Smith'),
    (2, 'Michael', 'Johnson'),
    (3, 'Emma', 'Williams'),
    (4, 'Christopher', 'Brown'),
    (5, 'Madison', 'Jones'),
    (6, 'Jacob', 'Miller'),
    (7, 'Olivia', 'Davis'),
    (8, 'William', 'Garcia'),
    (9, 'Ava', 'Rodriguez'),
    (10, 'Matthew', 'Wilson'),
    (11, 'Sophia', 'Martinez'),
    (12, 'Daniel', 'Anderson'),
    (13, 'Abigail', 'Taylor'),
    (14, 'James', 'Thomas'),
    (15, 'Elizabeth', 'Hernandez'),
    (16, 'Alexander', 'Moore'),
    (17, 'Ella', 'Martin'),
    (18, 'Benjamin', 'Jackson'),
    (19, 'Mia', 'Thompson'),
    (20, 'Michael', 'White'),
    (21, 'Charlotte', 'Davis');
    
    INSERT INTO Clerk (Cid, FName, LName)
VALUES
    (1, 'Alice', 'Smith'),
    (2, 'Bob', 'Johnson'),
    (3, 'Carol', 'Williams');