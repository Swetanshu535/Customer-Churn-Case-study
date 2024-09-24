create database customer_churn_dataset;
use customer_churn_dataset;

select * from c_dataset;
-- Show the gender first two intials and form the word male with two intials 
select left(Gender,2)as male_first_initials, right(Gender,2) as female_first_initials
from c_dataset
where gender ="Male";
-- Omit the last two character from the InternetService 
select substring(InternetService,1,length(internetService)-2)
from c_dataset;
-- Show the Contracttype in upper case 
select Ucase(ContractType)
from c_dataset;
-- show the customer of age between 40-50 who have internet service fiber optic
select Age,InternetService
from c_dataset
where age between 40 and 50 and InternetService="Fiber Optic";
-- show the tenure and contract type month
select Tenure,ContractType
from c_dataset
where contractType="Month-to-Month";
-- show the techsupport where it is yes and churn is yes
select TechSupport,Churn
from c_dataset
where TechSupport= "yes" and Churn="Yes";
-- show the male gender where the monthly charges is high 
select gender,MonthlyCharges
from c_dataset
where Gender="Male" 
order by MonthlyCharges desc;

