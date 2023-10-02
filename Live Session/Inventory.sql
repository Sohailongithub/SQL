SELECT * FROM Inventory.suppliers;
SELECT Products.product_name, suppliers.supplier_name FROM Products  JOIN suppliers ON Products.product_id = suppliers.product_id;

SELECT p.Price, s.suppliers_name FROM products p JOIN suppliers s ON p.Product_id = s.Prod_id WHERE p.price > 50;

select p.product_name,s.supplier_name from products p join supplier s on p.product_id = s.product_id where s.supplier_id=1 or s.supplier_id=2;

select p.product_name,s.supplier_name from products p join supplier s on p.product_id = s.product_id where s.supplier_id  in (1,3);