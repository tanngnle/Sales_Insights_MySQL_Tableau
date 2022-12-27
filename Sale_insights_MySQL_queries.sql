
-- 1. Show all customer records
select * 
from portfolio_sale_insights.customers;

-- 2. Show total number of customers
select count(*) 
from portfolio_sale_insights.customers;

-- 3. Show transactions for Chennai market
select *
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.markets as m
on t.market_code = m.markets_code
where m.markets_name = 'Chennai';

-- 4. Show transactions for Chennai market (market code for chennai is Mark001)
select *
from portfolio_sale_insights.transactions
where market_code = 'Mark001';

-- 5. Show distinct product codes that were sold in chennai
select distinct product_code
from portfolio_sale_insights.transactions
where market_code = 'Mark001';

-- 6. Show transactions where currency is US dollars
select *
from portfolio_sale_insights.transactions
where currency = 'USD';

-- 7. Show market name where currency is US dollars
select distinct markets_name, currency
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.markets as m
on t.market_code = m.markets_code
where currency = 'USD';

-- 8. Show transactions in 2020 join by date table
select t.*
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.date as d
on t.order_date = d.date
where d.year = 2020;

-- 9. Show total revenue in year 2020
select sum(sales_amount)
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.date as d
on t.order_date = d.date
where d.year = 2020;

-- 10. Show total revenue in year 2020, January Month
select sum(sales_amount)
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.date as d
on t.order_date = d.date
where d.year = 2020
and d.month_name = 'January';

-- 11. Show total revenue in year 2020 in Chennai
select sum(sales_amount)
from portfolio_sale_insights.transactions as t
inner join portfolio_sale_insights.date as d
on t.order_date = d.date
where d.year = 2020
and market_code = 'Mark001';
