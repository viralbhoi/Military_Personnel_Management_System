INSERT INTO Ranks (RankID, RankName, RankLevel) VALUES
(1, 'Lieutenant', 1),
(2, 'Captain', 2),
(3, 'Major', 3),
(4, 'Colonel', 4),
(5, 'Brigadier', 5),
(6, 'General', 6),
(7, 'Commander', 7),
(8, 'Adjutant', 8),
(9, 'Sergeant', 9),
(10, 'Private', 10);

SELECT * FROM RANKS;

INSERT INTO Units (UnitID, UnitName, UnitType, ParentUnitID) VALUES
(1, 'Eastern Command', 'Command', NULL),
(2, 'Assam Rifles', 'Infantry', 1),
(3, 'Special Frontier Force', 'Special Forces', 1),
(4, 'Northern Command', 'Command', NULL),
(5, 'Garhwal Rifles', 'Infantry', 4),
(6, 'Rajput Regiment', 'Infantry', 4),
(7, 'Southern Command', 'Command', NULL),
(8, 'Madras Regiment', 'Infantry', 7),
(9, 'Mahar Regiment', 'Infantry', 7),
(10, 'Parachute Regiment', 'Special Forces', NULL);

SELECT * FROM UNITS;

INSERT INTO Personnel (PersonnelID, FName, LName, DOB, Gender, ContactNumber, Email, Address, RankID, UnitID) VALUES
(1, 'Arjun', 'Singh', '1985-06-24', 'M', '9876543210', 'arjun.singh@mail.com', 'Delhi, India', 1, 1),
(2, 'Neha', 'Rao', '1988-11-05', 'F', '9876543211', 'neha.rao@mail.com', 'Mumbai, India', 2, 2),
(3, 'Mahesh', 'Rawat', '1990-04-12', 'M', '9876543212', 'mahesh.rawat@mail.com', 'Kolkata, India', 3, 3),
(4, 'Sunil', 'Thakur', '1992-01-21', 'M', '9876543213', 'sunil.thakur@mail.com', 'Chennai, India', 4, 4),
(5, 'Rajesh', 'Rana', '1980-07-15', 'M', '9876543214', 'rajesh.rana@mail.com', 'Jaipur, India', 5, 5),
(6, 'Ankita', 'Singh', '1985-08-16', 'F', '9876543215', 'ankita.singh@mail.com', 'Patna, India', 6, 6),
(7, 'Sakshi', 'Verma', '1992-11-11', 'F', '9876543216', 'sakshi.verma@mail.com', 'Bangalore, India', 7, 7),
(8, 'Ajay', 'Kumar', '1990-09-09', 'M', '9876543217', 'ajay.kumar@mail.com', 'Hyderabad, India', 8, 8),
(9, 'Naveen', 'Yadav', '1994-02-28', 'M', '9876543218', 'naveen.yadav@mail.com', 'Lucknow, India', 9, 9),
(10, 'Priya', 'Deshmukh', '1987-03-30', 'F', '9876543219', 'priya.deshmukh@mail.com', 'Nagpur, India', 10, 10);

SELECT * FROM PERSONNEL;

INSERT INTO TrainingPrograms (TrainingProgramID, ProgramName, Description, SDate, EDate) VALUES
(1, 'Basic Training', 'Standard military training for new recruits', '2023-01-01', '2023-06-01'),
(2, 'Advanced Infantry Training', 'Specialized training for infantry soldiers', '2023-02-01', '2023-07-01'),
(3, 'Medical Officer Training', 'Training for medical officers', '2023-03-01', '2023-08-01'),
(4, 'Signal Corps Training', 'Communication systems and protocols', '2023-04-01', '2023-09-01'),
(5, 'Artillery Training', 'Training for artillery operation and management', '2023-05-01', '2023-10-01'),
(6, 'Armored Corps Training', 'Tank and armored vehicle operation', '2023-06-01', '2023-11-01'),
(7, 'Special Forces Training', 'Specialized training for elite forces', '2023-07-01', '2023-12-01'),
(8, 'Parachute Regiment Training', 'Training for airborne forces', '2023-08-01', '2024-01-01'),
(9, 'Officer Leadership Course', 'Leadership and management training for officers', '2023-09-01', '2024-02-01'),
(10, 'Jungle Warfare School', 'Training in jungle warfare tactics', '2023-10-01', '2024-03-01');

SELECT * FROM TrainingPrograms;

INSERT INTO Deployments (DeploymentID, Location, SDate, EDate, UnitID) VALUES
(1, 'Siachen Glacier', '2023-01-01', '2023-06-01', 1),
(2, 'Jammu & Kashmir', '2023-02-01', '2023-07-01', 2),
(3, 'Leh', '2023-03-01', '2023-08-01', 3),
(4, 'Arunachal Pradesh', '2023-04-01', '2023-09-01', 4),
(5, 'Andaman & Nicobar', '2023-05-01', '2023-10-01', 5),
(6, 'Rajasthan Desert', '2023-06-01', '2023-11-01', 6),
(7, 'Northeast Border', '2023-07-01', '2023-12-01', 7),
(8, 'Western Frontier', '2023-08-01', '2024-01-01', 8),
(9, 'Nagaland', '2023-09-01', '2024-02-01', 9),
(10, 'Punjab Border', '2023-10-01', '2024-03-01', 10);

SELECT * FROM Deployments;

INSERT INTO TrainingProgress (TrainingProgressID, PersonnelID, TrainingProgramID, Status, CompletionDate) VALUES
(1, 1, 1, 'Completed', '2023-06-01'),
(2, 2, 2, 'In Progress', NULL),
(3, 3, 3, 'Completed', '2023-08-01'),
(4, 4, 4, 'In Progress', NULL),
(5, 5, 5, 'Completed', '2023-10-01'),
(6, 6, 6, 'In Progress', NULL),
(7, 7, 7, 'Completed', '2023-12-01'),
(8, 8, 8, 'In Progress', NULL),
(9, 9, 9, 'In Progress', NULL),
(10, 10, 10, 'In Progress', NULL);

SELECT * FROM TrainingProgress;

INSERT INTO LeaveRecords (LeaveID, PersonnelID, LeaveType, SDate, EDate, Status) VALUES
(1, 1, 'Sick Leave', '2023-06-10', '2023-06-20', 'Approved'),
(2, 2, 'Annual Leave', '2023-07-01', '2023-07-15', 'Approved'),
(3, 3, 'Training Leave', '2023-08-01', '2023-08-15', 'Approved'),
(4, 4, 'Emergency Leave', '2023-09-01', '2023-09-10', 'Approved'),
(5, 5, 'Annual Leave', '2023-10-01', '2023-10-15', 'Approved'),
(6, 6, 'Sick Leave', '2023-11-01', '2023-11-10', 'Pending'),
(7, 7, 'Annual Leave', '2023-12-01', '2023-12-15', 'Pending'),
(8, 8, 'Training Leave', '2024-01-01', '2024-01-10', 'Pending'),
(9, 9, 'Emergency Leave', '2024-02-01', '2024-02-05', 'Approved'),
(10, 10, 'Annual Leave', '2024-03-01', '2024-03-10', 'Pending');

SELECT * FROM LEAVERECORDS;

INSERT INTO Equipment (EquipmentID, EquipmentName, SerialNumber, EquipmentType, PurchaseDate) VALUES
(1, 'Rifle', 'SN12345', 'Weapon', '2020-01-01'),
(2, 'Helmet', 'SN54321', 'Gear', '2020-02-01'),
(3, 'Bulletproof Vest', 'SN67890', 'Gear', '2020-03-01'),
(4, 'Radio', 'SN09876', 'Communication', '2020-04-01'),
(5, 'Night Vision Goggles', 'SN11122', 'Optical', '2020-05-01'),
(6, 'Tactical Boots', 'SN33344', 'Gear', '2020-06-01'),
(7, 'Pistol', 'SN55566', 'Weapon', '2020-07-01'),
(8, 'Medical Kit', 'SN77788', 'Medical', '2020-08-01'),
(9, 'Binoculars', 'SN99900', 'Optical', '2020-09-01'),
(10, 'Ammunition Belt', 'SN22233', 'Gear', '2020-10-01');

SELECT * FROM EQUIPMENT;

INSERT INTO EquipmentAssignments (AssignmentID, PersonnelID, EquipmentID, AssignmentDate, ReturnDate) VALUES
(1, 1, 1, '2023-01-01', '2023-06-01'),
(2, 2, 2, '2023-02-01', '2023-07-01'),
(3, 3, 3, '2023-03-01', '2023-08-01'),
(4, 4, 4, '2023-04-01', '2023-09-01'),
(5, 5, 5, '2023-05-01', '2023-10-01'),
(6, 6, 6, '2023-06-01', '2023-11-01'),
(7, 7, 7, '2023-07-01', '2023-12-01'),
(8, 8, 8, '2023-08-01', '2024-01-01'),
(9, 9, 9, '2023-09-01', '2024-02-01'),
(10, 10, 10, '2023-10-01', '2024-03-01');

SELECT * FROM EquipmentAssignments;

INSERT INTO MedicalRecords (MedicalRecordID, PersonnelID, MedicalCondition, DiagnosisDate, TreatmentDetails, RecoveryDate) VALUES
(1, 1, 'Fracture', '2023-06-10', 'Casted and rest for 6 weeks', '2023-07-20'),
(2, 2, 'Fever', '2023-07-05', 'Rest and medication', '2023-07-10'),
(3, 3, 'Back Pain', '2023-08-10', 'Physiotherapy for 4 weeks', '2023-09-05'),
(4, 4, 'Sprained Ankle', '2023-09-15', 'Rest and bandage', '2023-09-25'),
(5, 5, 'Fracture', '2023-10-10', 'Casted and rest for 6 weeks', '2023-11-20'),
(6, 6, 'Cold and Flu', '2023-11-05', 'Rest and medication', '2023-11-10'),
(7, 7, 'Eye Infection', '2023-12-10', 'Eye drops and rest', '2023-12-15'),
(8, 8, 'Knee Pain', '2024-01-10', 'Physiotherapy for 6 weeks', NULL),
(9, 9, 'Fracture', '2024-02-05', 'Casted and rest for 8 weeks', NULL),
(10, 10, 'Migraine', '2024-03-01', 'Medication and rest', NULL);

SELECT * FROM MEDICALRECORDS;

INSERT INTO PerformanceEvaluations (EvaluationID, PersonnelID, EvaluationDate, EvaluationScore, EvaluatorName, Comments) VALUES
(1, 1, '2023-06-15', 85, 'Captain Singh', 'Excellent leadership skills'),
(2, 2, '2023-07-20', 80, 'Major Patel', 'Good tactical awareness'),
(3, 3, '2023-08-25', 90, 'Colonel Rao', 'Outstanding combat readiness'),
(4, 4, '2023-09-30', 75, 'Lieutenant Sharma', 'Needs improvement in communication'),
(5, 5, '2023-10-15', 88, 'Captain Gupta', 'Very disciplined'),
(6, 6, '2023-11-20', 78, 'Major Menon', 'Shows potential for leadership'),
(7, 7, '2023-12-25', 92, 'Colonel Verma', 'Highly skilled'),
(8, 8, '2024-01-10', 84, 'Major Khan', 'Strong operational skills'),
(9, 9, '2024-02-05', 76, 'Captain Bhalla', 'Needs more field training'),
(10, 10, '2024-03-15', 89, 'Lieutenant Rao', 'Good team player');

SELECT * FROM PerformanceEvaluations;