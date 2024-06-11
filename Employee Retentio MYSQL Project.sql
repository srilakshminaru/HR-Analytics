create database Employeeretention ;
use employeeretention;
select * from hr_1;
select * from hr_2;
#------------Average Attrition rate for all Departments ----------
select concat(round(avg(attritionrate)*100),"%") as Averageattritionrate,Department from hr_1
group by Department;
# -------------Average Hourly rate of Male Research Scientist -------------
select * from hr_1;
select avg(HourlyRate) from hr_1
where Gender="male" and JobRole="Research Scientist";
#-----------Attrition rate Vs Monthly income stats ------------------
select * from hr_1;
select * from hr_2;
select Attritionrate,sum(MonthlyIncome) from hr_1 left join hr_2
on hr_1.EmployeeNumber=hr_2.Employee_ID
group by Attritionrate;
# -----------Average working years for each Department -------------
select * from hr_2;
select avg(TotalWorkingYears),Department from hr_1
left join hr_2
on hr_1.EmployeeNumber=hr_2.Employee_ID
group by Department;
#-----------Job Role Vs Work life balance------------
select JobRole,avg(WorkLifeBalance) from hr_1
left join hr_2
on hr_1.EmployeeNumber=hr_2.Employee_ID
group by JobRole;
# -------------Attrition rate Vs Year since last promotion relation------------
select Attritionrate,avg(YearsSinceLastPromotion) from hr_1
left join hr_2
on hr_1.EmployeeNumber=hr_2.Employee_ID
group by Attritionrate;
