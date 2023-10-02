SELECT * FROM testDatabase.payments;
SELECT sum(amount) FROM testDatabase.payments;
SELECT avg(amount) FROM testDatabase.payments;
SELECT sum(amount) FROM testDatabase.payments where date = "2019-01-15";
SELECT min(amount) FROM testDatabase.payments;
SELECT max(amount) FROM testDatabase.payments;

 -- Group month wise data along with Amount
SELECT DATE_FORMAT(date, '%Y-%m') AS payment_month, SUM(amount) AS total_amount FROM testDatabase.payments 
group by payment_month;

-- client with the highest total payment amount.
SELECT client_id,  SUM(amount) AS total_amount FROM testDatabase.payments 
group by client_id order by total_amount DESC limit 1;

-- client with the highest total payment amount.(use HAVING for applying condition in place of WHERE)
SELECT client_id,  SUM(amount) AS total_amount FROM testDatabase.payments 
group by client_id HAVING total_amount > 100 order by total_amount;

-- calculates the average payment amount made by each client
SELECT client_id, AVG(amount) AS total_amount FROM testDatabase.payments
group by client_id order by total_amount desc; 

-- Payment Method with the Highest Average Amount.
select payment_method, avg(amount) AS total_amount FROM testDatabase.payments
group by payment_method having total_amount = (select max(total_amount) from (select payment_method, avg(amount) AS total_amount FROM testDatabase.payments
group by payment_method) AS Hghtest_amount);