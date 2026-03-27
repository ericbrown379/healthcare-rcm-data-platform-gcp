-- For database hospital_a_db:
  -- 1. Departments Table:
CREATE TABLE
  departments ( DeptID NVARCHAR(50) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
  CONSTRAINT
    PK_departments
  PRIMARY KEY
    (DeptID) );
  -- 2. Encounters Table:
CREATE TABLE
  encouters ( EncounterID NVARCHAR(50) NOT NULL,
    PatientID NVARCHAR(50) NOT NULL,
    EncounterDate DATE NOT NULL,
    EncounterType NVARCHAR(50) NOT NULL,
    ProviderID NVARCHAR(50) NOT NULL,
    DepartmentID NVARCHAR(50) NOT NULL,
    ProcedureCode INT NOT NULL,
    InsertedDate DATE NOT NULL,
    ModifiedDate DATE NOT NULL,
  CONSTRAINT
    PK_encounters
  PRIMARY KEY
    (EncounterID) );
  -- 3. Hospital1_Patient_Data Table:
CREATE TABLE
  patients ( PatientID NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50) NOT NULL,
    SSN NVARCHAR(50) NOT NULL,
    PhoneNumber NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Address NVARCHAR(50) NOT NULL,
    ModifiedDate DATE NOT NULL,
  CONSTRAINT
    PK_hospital1_patient_data
  PRIMARY KEY
    (PatientID) );
  -- Providers Table:
CREATE TABLE
  providers ( ProviderID NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Specialization NVARCHAR(50) NOT NULL,
    DeptID NVARCHAR(50) NOT NULL,
    NPI BIGINT NOT NULL,
  CONSTRAINT
    PK_providers
  PRIMARY KEY
    (ProviderID) );
  -- 5. Transactions Table:
CREATE TABLE
  transactions ( TransactionID NVARCHAR(50) NOT NULL,
    EncouterID NVARCHAR(50) NOT NULL,
    PatientID NVARCHAR(50) NOT NULL,
    ProviderID NVARCHAR(50) NOT NULL,
    DeptID NVARCHAR(50) NOT NULL,
    VisitDate DATE NOT NULL,
    ServiceDate DATE NOT NULL,
    PaidDate DATE NOT NULL,
    VisitType NVARCHAR(50) NOT NULL,
    Amount FLOAT NOT NULL,
    AmountType NVARCHAR(50) NOT NULL,
    PaidAmount FLOAT NOT NULL,
    ClaimID NVARCHAR(50) NOT NULL,
    PayorID NVARCHAR(50) NOT NULL,
    ProcedureCode INT NOT NULL,
    ICDCode NVARCHAR(50) NOT NULL,
    LineOfBusiness NVARCHAR(50) NOT NULL,
    MedicadID NVARCHAR(50) NOT NULL,
    MedicareID NVARCHAR(50) NOT NULL,
    InsertDate DATE NOT NULL,
    ModifiedDate DATE NOT NULL,
  CONSTRAINT
    PK_transactions
  PRIMARY KEY
    (TransactionID) )
