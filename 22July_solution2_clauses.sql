select * from sales

select * from product

select * from customer

select c.segment, c.cust_id, s.order_id from customer as c
inner join sales as s on s.cust_id = c.cust_id
where age > 45

select c.cust_id, c.customer_name ,p.category,p.product_id,s.ship_date from customer as c
INNER JOIN sales AS s ON s.cust_id = c.cust_id
INNER JOIN product AS p ON s.product_id = p.product_id
WHERE c.age > 40;

select c.cust_id, c.customer_name ,sum(s.sales) AS total_sales,
p.category,p.product_id,s.ship_date from customer as c
INNER JOIN sales AS s ON s.cust_id = c.cust_id
INNER JOIN product AS p ON s.product_id = p.product_id
WHERE c.age > 40
Group by c.cust_id, 
    c.customer_name, 
    p.category, 
    p.product_id, 
    s.ship_date;

select c.cust_id, c.customer_name ,sum(s.sales) AS total_sales,
p.category,p.product_id,s.ship_date from customer as c
INNER JOIN sales AS s ON s.cust_id = c.cust_id
INNER JOIN product AS p ON s.product_id = p.product_id
WHERE c.age > 40
Group by c.cust_id, 
    c.customer_name, 
    p.category, 
    p.product_id, 
    s.ship_date
having sum(s.sales) >10000
order by total_sales asc