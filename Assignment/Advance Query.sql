-- Advanced Queries:

-- 9. Retrieve a list of customers who have placed orders for products with a price higher than $100.
SELECT c.customer_id, c.first_name, c.last_name 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id 
JOIN products p on o.product_id = p.product_id 
WHERE p.price > 100;

-- 10. List the customers who have placed orders for products from at least three different categories.
SELECT c.customer_id, c.first_name, c.last_name FROM Customers c 
JOIN Orders o ON c.customer_id = o.customer_id 
JOIN Products p ON o.product_id = p.product_id 
GROUP BY c.customer_id, c.first_name, c.last_name 
HAVING COUNT(DISTINCT p.category_id) >= 3;

-- 11. Find the products with the highest and lowest average customer ratings (if a rating table is available).
-- N/A

-- 12. Calculate the total revenue generated from each category.
SELECT c.category_id, c.category_name, SUM(o.total_amount) as total_revenue
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Orders o ON p.product_id = o.product_id
GROUP BY c.category_id, c.category_name;
