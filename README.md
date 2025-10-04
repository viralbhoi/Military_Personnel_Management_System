# 🪖 Military Personnel Management System

## 📌 Project Overview  
The **Military Personnel Management System** is a database-driven project designed to efficiently manage military-related data such as personnel, units, ranks, training, equipment, deployments, leaves, medical records, and performance evaluations.  


**Developed by:**  
- [Rushabh A. Shah (23CP031)](https://github.com/Rushabh1208)  
- [Viral V. Bhoi (23CP029)](https://github.com/viralbhoi)  

---

## ⚙️ Features & Functional Requirements  

- **Rank Management** – Add, update, delete, and view military ranks.  
- **Unit Management** – Manage units and their hierarchical structure.  
- **Personnel Management** – Maintain personnel records, assign ranks/units, and search with filters.  
- **Training Programs** – Assign training programs and track personnel progress.  
- **Deployment Management** – Manage unit deployments and view personnel locations.  
- **Leave Management** – Record and manage leave requests (approve/deny).  
- **Equipment Management** – Track military equipment inventory and assignments.  
- **Medical Records** – Maintain health history and treatments of personnel.  
- **Performance Evaluations** – Record and track personnel performance over time.  

---

## 🏗️ Database Design  

- **ER Diagram** – Represents entities such as Personnel, Units, Ranks, Equipment, Training, and their relationships.  
- **Relational Schema** – Fully normalized (BCNF/3NF) to remove redundancies.  

### 📋 Main Tables  
- `Ranks (RankID, RankName, RankLevel)`  
- `Units (UnitID, UnitName, UnitType, ParentUnitID)`  
- `Personnel (PersonnelID, FName, LName, DOB, Gender, ContactNumber, Email, Address, RankID, UnitID)`  
- `Deployments (DeploymentID, Location, SDate, EDate, UnitID)`  
- `TrainingPrograms (TrainingProgramID, ProgramName, Description, SDate, EDate)`  
- `TrainingProgress (TrainingProgressID, PersonnelID, TrainingProgramID, Status, CompletionDate)`  
- `LeaveRecords (LeaveID, PersonnelID, LeaveType, SDate, EDate, Status)`  
- `Equipment (EquipmentID, EquipmentName, SerialNumber, EquipmentType, PurchaseDate)`  
- `EquipmentAssignments (AssignmentID, PersonnelID, EquipmentID, AssignmentDate, ReturnDate)`  
- `MedicalRecords (MedicalRecordID, PersonnelID, MedicalCondition, DiagnosisDate, TreatmentDetails, RecoveryDate)`  
- `PerformanceEvaluations (EvaluationID, PersonnelID, EvaluationDate, EvaluationScore, EvaluatorName, Comments)`  

---

## 🛠️ Implementation  

### 🔹 Data Definition Language (DDL)  
- Tables created using **SQL CREATE statements**.  
- Foreign keys maintain referential integrity.  

### 🔹 Queries Implemented  
- List personnel with their rank & unit.  
- Get personnel deployed to specific locations.  
- Show personnel currently on leave.  
- Find personnel who completed specific training.  
- Retrieve assigned equipment of personnel.  
- Get medical records by condition.  
- View performance evaluations.  
- Top 3 personnel by evaluation score.  
- List training programs with enrollment counts.  

### 🔹 PL/pgSQL Triggers  
- **Insertion Trigger** – Notifies when new personnel are added.  
- **Deletion Trigger** – Notifies when personnel records are removed.  

---

## 🚀 How to Run  

1. Install a relational database (PostgreSQL/MySQL).  
2. Execute the provided **DDL scripts** to create tables.  
3. Insert sample data using **DML queries**.  
4. Run **SQL queries** to test functionalities.  
5. Use **PL/pgSQL triggers** for event-based notifications.  

---

## 📚 Learning Outcomes  

- Understanding of **ER modeling and normalization (up to BCNF)**.  
- Hands-on with **SQL DDL, DML, JOINs, Subqueries**.  
- Implementation of **Triggers in PL/pgSQL**.  
- Real-world inspired use case for **database-driven personnel management**.  

---

## 📌 Future Enhancements  

- Web-based dashboard for interaction with the database.  
- Role-based authentication (Admin, Officer, Personnel).  
- Integration with GIS for deployment tracking.  
- Automated report generation for evaluations and leave statistics.  

---

## 📖 License  
This project was developed for **academic purposes** as part of DBMS coursework.  
Free to use and modify with attribution.  

 
