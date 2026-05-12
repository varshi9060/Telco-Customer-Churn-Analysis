create database telco_churn_db;
Use telco_churn_db;
select * from telco_customer_churn;
select churn, count(*) as total_customers from telco_customer_churn group by churn;
select contract, churn, Count(*) as count from telco_customer_churn group by contract, churn;
select internetservice, churn, count(*) as count 
from telco_customer_churn 
group by internetservice, churn 
order by count desc;
select SeniorCitizen, count(*) as lost_customer
from telco_customer_churn
where churn = 'YES'
group by SeniorCitizen;
select contract, count(*) as total from telco_customer_churn where churn = 'YES' group by contract;
SELECT PaymentMethod, COUNT(*) AS count 
FROM telco_customer_churn 
WHERE churn = 'YES' 
GROUP BY PaymentMethod 
ORDER BY count DESC;
select churn, avg(tenure) as avg_months from telco_customer_churn group by churn;
select churn, sum(monthlycharges) as total_revenue 
from telco_customer_churn group by churn; 
select SeniorCitizen, Dependents, count(*) as total_lost 
from telco_customer_churn where churn = 'YES'
group by SeniorCitizen, dependents;