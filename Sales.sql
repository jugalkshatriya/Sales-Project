SELECT * FROM sales.transactions;

SELECT count(*) FROM sales.transactions;

SELECT * FROM sales.transactions  where market_code = 'Mark001';

SELECT * FROM sales.transactions  where currency = 'USD';	

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date ON sales.transactions.order_date = sales.date.date;
 
select SUM(sales.transactions.sales_amount)from sales.transactions inner join sales.date ON sales.transactions.order_date = sales.date.date where sales.date.year = 2019;

select SUM(sales.transactions.sales_amount)from sales.transactions inner join sales.date ON sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

select SUM(sales.transactions.sales_amount)from sales.transactions inner join sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year = 2019 and sales.transactions.market_code = 'Mark001';

select SUM(sales.transactions.sales_amount)from sales.transactions inner join sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = 'Mark001';

SELECT * FROM sales.transactions  where sales_amount <= 0 ;

use sales;

select distinct(sales.transactions.currency) from transactions;

select count(*) from transactions where transactions.currency = 'INR\r';

select count(*) from transactions where transactions.currency = 'INR';

select * from transactions where transactions.currency = 'USD\r' or transactions.currency = 'USD' ;	

select sum(transactions.sales_amount) from transactions INNER JOIN date on  transactions.order_date = date.date
where date.year = 2020 and date.month_name = 'January';

select sum(transactions.sales_amount) from transactions INNER JOIN date on  transactions.order_date = date.date
where date.year = 2020 and transactions.market_code = 'Mark001'

