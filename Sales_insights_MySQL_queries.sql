-- 1. Show all customer records
SELECT * 
FROM sales.customers;

-- 2. Show total number of customers
SELECT COUNT(*) 
FROM sales.customers;

-- 3. Show transactions for Chennai market
SELECT *
FROM sales.transactions AS t
INNER JOIN sales.markets AS m
ON t.market_code = m.markets_code
WHERE m.markets_name = 'Chennai';

-- 4. Show transactions for Chennai market (market code for chennai is Mark001)
SELECT *
FROM sales.transactions
WHERE market_code = 'Mark001';

-- 5. Show distinct product codes that were sold in chennai
SELECT DISTINCT product_code
FROM sales.transactions
WHERE market_code = 'Mark001';

-- 6. Show transactions where currency is US dollars
SELECT *
FROM sales.transactions
WHERE currency = 'USD';

-- 7. Show market name where currency is US dollars
SELECT DISTINCT markets_name, currency
FROM sales.transactions AS t
INNER JOIN sales.markets AS m
ON t.market_code = m.markets_code
WHERE currency = 'USD';

-- 8. Show transactions in 2020 join by date table
SELECT t.*
FROM sales.transactions AS t
INNER JOIN sales.date AS d
ON t.order_date = d.date
WHERE d.year = 2020;

-- 9. Show total revenue in year 2020
SELECT SUM(sales_amount)
FROM sales.transactions AS t
INNER JOIN sales.date AS d
ON t.order_date = d.date
WHERE d.year = 2020;

-- 10. Show total revenue in year 2020, January Month
SELECT SUM(sales_amount)
FROM sales.transactions AS t
INNER JOIN sales.date AS d
ON t.order_date = d.date
WHERE d.year = 2020
AND d.month_name = 'January';

-- 11. Show total revenue in year 2020 in Chennai
SELECT SUM(sales_amount)
FROM sales.transactions AS t
INNER JOIN sales.date AS d
ON t.order_date = d.date
WHERE d.year = 2020
AND market_code = 'Mark001';
