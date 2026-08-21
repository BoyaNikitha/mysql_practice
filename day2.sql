select customer_name,country from customers;
select distinct country from customers;
select count(distinct country) from customers;
select * from customers
where city = 'London';
select * from products
order by price;
select * from products
order by price desc;
select * from customers
limit 20;
select * from customers
limit 20 offset 40;
select min(price) from products;
select max(price) from products;
select min(price) as lowestprice from products
select count(customer_id)from customers;
select count(customer_id)from customers
where city='London';
select sum(quantity)from order_details;
select avg(price) from products;
SELECT AVG(price)::NUMERIC(10,2)
FROM products;


