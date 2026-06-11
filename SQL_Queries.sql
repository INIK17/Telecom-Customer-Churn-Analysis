CREATE DATABASE startup_saas;

USE startup_saas;

SELECT*
FROM telecom_churn
LIMIT 10;

SELECT COUNT(*) AS total_customer
FROM telecom_churn;

SELECT COUNT(*) AS Churned_customer
FROM telecom_churn
WHERE churn = 1;

SELECT COUNT(*) 
FROM telecom_churn
WHERE churn = 0;

SELECT COUNT(*) AS total_customers
FROM telecom_churn; 

SELECT round(
SUM(churn)*100/COUNT(*),2)
AS churn_rate_percentage
FROM telecom_churn; 

SELECT
round(AVG(MonthlyCharge),2) 
AS Avg_Monthly_Revenue
from telecom_churn;

SELECT
CustServCalls,
COUNT(*)as Customers,
round(Avg(Churn)*100,2) AS Churn_Percantage
from telecom_churn
group by CustServCalls
order by CustServCalls;

SELECT
ContractRenewal,
COUNT(*)as Customers,
round(Avg(Churn)*100,2) AS Churn_Percantage
from telecom_churn
group by ContractRenewal;