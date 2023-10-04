-- Basic Queries:

-- 1 . Retrieve a list of all customers along with their email addresses.
SELECT first_name, last_name, email FROM Customers;

-- 2 . Find the total number of orders placed by each customer.
SELECT customer_id, COUNT(order_id) as total_orders 
FROM Orders 
GROUP BY customer_id;

-- 3 . List all products along with their prices.
SELECT product_name, price FROM Products;

-- 4 Retrieve the category with the highest number of products.
SELECT category_id, COUNT(product_id) as total_products 
FROM Products 
GROUP BY category_id 
ORDER BY total_products DESC 
LIMIT 1;
