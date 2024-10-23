CREATE TABLE Ranks(
	RankID INT PRIMARY KEY,
	RankName VARCHAR(50),
	RankLevel INT
);

CREATE TABLE Units(
	UnitID INT PRIMARY KEY,
	UnitName VARCHAR(100),
	UnitType VARCHAR(50),
	ParentUnitID INT,
	FOREIGN KEY (ParentUnitID) REFERENCES Units(UnitID)
);

CREATE TABLE Personnel(
	PersonnelID INT PRIMARY KEY,
	FName VARCHAR(50),
	LName VARCHAR(50),
	DOB DATE,
	Gender VARCHAR(1),
	ContactNumber VARCHAR (15),
	Email VARCHAR(100),
	Address VARCHAR(200),
	RankID INT,
	UnitID INT,
	FOREIGN KEY (RankID) REFERENCES Ranks(RankID),
	FOREIGN KEY (UnitID) REFERENCES Units(UnitID)
);

CREATE TABLE TrainingPrograms (
    TrainingProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(100),
    Description TEXT,
   	SDate DATE,
    EDate DATE
);

CREATE TABLE Deployments (
    DeploymentID INT PRIMARY KEY,
   	Location VARCHAR(100),
    SDate DATE,
    EDate DATE,
    UnitID INT NOT NULL,
    FOREIGN KEY (UnitID) REFERENCES Units(UnitID)
);

CREATE TABLE TrainingProgress (
    TrainingProgressID INT PRIMARY KEY,
    PersonnelID INT NOT NULL,
    TrainingProgramID INT NOT NULL,
    Status VARCHAR(50),
    CompletionDate DATE,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID),
    FOREIGN KEY (TrainingProgramID) REFERENCES TrainingPrograms(TrainingProgramID)
);


CREATE TABLE LeaveRecords (
    LeaveID INT PRIMARY KEY,
    PersonnelID INT NOT NULL,
    LeaveType VARCHAR(50),
    SDate DATE,
    EDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID)
);

CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(100),
    SerialNumber VARCHAR(50),
    EquipmentType VARCHAR(50),
    PurchaseDate DATE
);

CREATE TABLE EquipmentAssignments (
    AssignmentID INT PRIMARY KEY,
    PersonnelID INT NOT NULL,
    EquipmentID INT NOT NULL,
    AssignmentDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

CREATE TABLE MedicalRecords (
    MedicalRecordID INT PRIMARY KEY,
    PersonnelID INT NOT NULL,
    MedicalCondition VARCHAR(100),
    DiagnosisDate DATE,
    TreatmentDetails TEXT,
    RecoveryDate DATE,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID)
);

CREATE TABLE PerformanceEvaluations (
    EvaluationID INT PRIMARY KEY,
    PersonnelID INT NOT NULL,
   	EvaluationDate DATE,
    EvaluationScore INT,
    EvaluatorName VARCHAR(100),
    Comments TEXT,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID)
);