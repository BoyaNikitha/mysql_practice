select * from customers
where country IN('Germany','France','Uk');
select* from customers
where country NOT IN('Germany','France','UK');
select * from customers
where customer_id IN(select customer_id from orders);
select * from customers
where customer_id NOT IN(select customer_id from orders);
select * from products
where price BETWEEN 10 and 15;
select * from products
where product_name BETWEEN 'Pavlova' and 'tofu';
SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-12' AND '2023-05-05';
SELECT customer_id AS id
FROM customers;
SELECT customer_id id
FROM customers;
SELECT product_name || unit AS product
FROM products;
SELECT product_name AS "My Great Products"
FROM products;


