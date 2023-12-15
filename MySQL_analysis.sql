select atlik_sales.transactions.*,atlik_sales.date.* FROM atlik_sales.transactions INNER JOIN atlik_sales.date  ON atlik_sales.transactions.order_date=atlik_sales.date.date;

SELECT atlik_sales.transactions.*, atlik_sales.date.* FROM atlik_sales.transactions INNER JOIN atlik_sales.date ON atlik_sales.transactions.order_date=date.date where date.year=2020;

SELECT SUM(atlik_sales.transactions.sales_amount) FROM atlik_sales.transactions INNER JOIN date ON atlik_sales.transactions.order_date=atlik_sales.date.date where atlik_sales.date.year=2020 and atlik_sales.transactions.currency="INR\r" or atlik_sales.transactions.currency="USD\r";

SELECT SUM(atlik_sales.transactions.sales_amount) FROM atlik_sales.transactions INNER JOIN date ON atlik_sales.transactions.order_date=atlik_sales.date.date where atlik_sales.date.year=2020 and atlik_sales.date.month_name="January" and (atlik_sales.transactions.currency="INR\r" or atlik_sales.transactions.currency="USD\r");

SELECT SUM(atlik_sales.transactions.sales_amount) FROM atlik_sales.transactions INNER JOIN date ON atlik_sales.transactions.order_date=atlik_sales.date.date where atlik_sales.date.year=2020 and atlik_sales.transactions.market_code="Mark001";

select distinct product_code from atlik_sales.transactions where market_code="Mark001";