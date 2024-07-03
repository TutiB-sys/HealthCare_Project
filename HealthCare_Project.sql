




select *
from Project_1.dbo.Health_Care_Data

 -- Looking the main ojects for analysis
select Age, Gender,Medical_Condition, Admission_Type, Test_Results
from Project_1.dbo.Health_Care_Data
order by 1,3


-- Number Of Cases

select  Medical_condition ,count(Patient_Name) as Num_Cases
from Project_1.dbo.Health_Care_Data
Group by Medical_condition
Order by 1

-- Number of Patients by gender

select  Gender,  Count(Age) as Number_patients_by_Gender
from Project_1.dbo.Health_Care_Data
Group by Gender

--Number Of Patients and Average age  Classfied by Gender 

select Gender, Count(Age) as NuMOfPatients, AVG(Age) as AverageOfAge
from Project_1.dbo.Health_Care_Data
group by Gender 

-- Number of Patients by Medical conditions and Age

select Age, Medical_Condition, count(Age) as NumOfPatients_MedConditions
from Project_1.dbo.Health_Care_Data
Group by Age , Medical_Condition
Order by  Age , Medical_Condition

-- Number of patients by their Age
select Age, count(Age) as NumberOfPatientsByAge from
Project_1.dbo.Health_Care_Data
Group by Age 
Having Age < 35
order by Age
 

 --Number of O- blood patients
select Medical_condition, Blood_Type, Count(*) as O_blood_Patients
from  Project_1.dbo.Health_Care_Data
where Blood_Type = 'O-'
Group by Medical_condition, Blood_Type
Order by Medical_condition



--Min and Max ages by Medical conditions
select  Medical_Condition, MIN(Age) as Min_Age, MAX(Age) as Max_Age
from Project_1.dbo.Health_Care_Data
Group by   Medical_Condition
Order by   Medical_Condition



-- Num of patients by Medical Condition and Age

Select Medical_Condition , Gender, Count(*) as NumberOfPatientsByMedicalCondition
from Project_1.dbo.Health_Care_Data
Group by  Medical_Condition, Gender
Order by Medical_Condition, Gender

--Num of patients by Medical condition and admission type
select Medical_condition, Admission_Type, count(*) as PatientsbyAdmission
from Project_1.dbo.Health_Care_Data
Group by  Medical_Condition, Admission_Type 
Order by Medical_Condition

--Number of Cancer cases
select Medical_condition, Admission_Type, count(*) as NumOFCancerCases
from Project_1.dbo.Health_Care_Data
where Medical_condition = 'Cancer' and  Admission_Type = 'Emergency'
Group by  Medical_condition, Admission_Type 
Order by count(*) DESC

--Test results on the average Age
select Test_Results, AVG(Age) as Average_Age
from
Project_1.dbo.Health_Care_Data
Group by Test_Results

--Frequencey of medical_condition

select Medical_condition , count(Medical_condition) as NuMOFMedicalCond
from
Project_1.dbo.Health_Care_Data
Group by Medical_Condition
Order by count(Medical_condition) DESC


-- Insurance
select Insurance_Provider , sum(Billing_Amount) as AmountCoverage, count(Insurance_Provider) as Num_Coverage 
from Project_1.dbo.Health_Care_Data
Group by  Insurance_Provider
Order by count(Insurance_Provider) DESC

--

select Patient_Name, Insurance_Provider, sum(Billing_Amount) as Billing_Medicare
from Project_1.dbo.Health_Care_Data
where  Insurance_Provider Like '%Medicare%'
Group by Patient_Name,  Insurance_Provider
Order by Patient_Name 


select Insurance_Provider as Medicare,sum(Billing_Amount) as Amount_Bill
from Project_1.dbo.Health_Care_Data
where  Insurance_Provider Like '%Medicare%'
Group by Insurance_Provider

select Patient_Name , Insurance_Provider, Billing_Amount
from Project_1.dbo.Health_Care_Data
Group by Patient_Name, Insurance_Provider,Billing_Amount
Having Billing_Amount > 47000
Order by Patient_Name






















