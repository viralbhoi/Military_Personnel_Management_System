-- List all Personnel along with their Ranks and Units

SELECT P.PersonnelID, P.FName, P.LName, R.RankName, U.UnitName
FROM Personnel P
JOIN Ranks R ON P.RankID = R.RankID
JOIN Units U ON P.UnitID = U.UnitID;

-- Retrieve all Training Programs and the number of Personnel enrolled in each

SELECT T.ProgramName, COUNT(TP.PersonnelID) AS NumberOfPersonnel
FROM TrainingPrograms T
LEFT JOIN TrainingProgress TP ON T.TrainingProgramID = TP.TrainingProgramID
GROUP BY T.ProgramName;

-- Get Personnel details who have been deployed to a specific location

SELECT P.PersonnelID, P.FName, P.LName
FROM Personnel P
WHERE P.UnitID = (SELECT UnitId FROM Deployments D
WHERE D.Location = 'Nagaland');

-- Show all Personnel currently on leave

SELECT P.PersonnelID, P.FName, P.LName, L.LeaveType, L.SDate, L.EDate
FROM Personnel P
JOIN LeaveRecords L ON P.PersonnelID = L.PersonnelID
WHERE L.Status = 'Approved' 
  AND L.SDate >= '01-06-2023' 
  AND L.EDate <= '31-12-2023';

-- Find Personnel who have completed a specific training program

SELECT P.PersonnelID, P.FName, P.LName, T.ProgramName
FROM Personnel P
JOIN TrainingProgress TP ON P.PersonnelID = TP.PersonnelID
JOIN TrainingPrograms T ON TP.TrainingProgramID = T.TrainingProgramID
WHERE T.ProgramName = 'Basic Training' AND TP.Status = 'Completed';

-- Retrieve all Equipment assigned to a specific Personnel

SELECT P.PersonnelID, P.FName, P.LName, E.EquipmentName, E.SerialNumber, EA.AssignmentDate
FROM Personnel P
JOIN EquipmentAssignments EA ON P.PersonnelID = EA.PersonnelID
JOIN Equipment E ON EA.EquipmentID = E.EquipmentID
WHERE P.PersonnelID IN (1,3,5,7);

-- Get Personnel who have had MedicalRecords for a specific condition

SELECT P.PersonnelID, P.FName, P.LName, M.MedicalCondition, M.TreatmentDetails
FROM Personnel P
JOIN MedicalRecords M ON P.PersonnelID = M.PersonnelID
WHERE M.MedicalCondition = 'Fracture';

-- Retrieve the Performance Evaluations of Personnel for a specific date

SELECT P.PersonnelID, P.FName, P.LName, PE.EvaluationScore, PE.Comments
FROM Personnel P
JOIN PerformanceEvaluations PE ON P.PersonnelID = PE.PersonnelID
WHERE PE.EvaluationDate = '30-09-2023';

-- Get Top 3 Personnel details who have received the highest evaluation score

SELECT P.PersonnelID, P.FName, P.LName, PE.EvaluationScore
FROM Personnel P
JOIN PerformanceEvaluations PE ON P.PersonnelID = PE.PersonnelID
ORDER BY PE.EvaluationScore DESC
LIMIT 3;

--Retrieve Personnel details who are on Annual Leave

SELECT P.PersonnelID, P.FName, P.LName, LR.LeaveType, LR.SDate, LR.EDate
FROM Personnel P
JOIN LeaveRecords LR ON P.PersonnelID = LR.PersonnelID
WHERE LR.LeaveType = 'Annual Leave';
