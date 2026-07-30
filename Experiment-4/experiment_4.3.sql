-- 1.All orders with Customers Details: Get all of the orders table and also the details of respective customers if they exist. Use the customer and orders table.

select c.customer_name,o.order_id,o.customer_id,o.product_name,o.order_date,o.quantity
from customers c
join orders o
on c.customer_id = o.customer_id;

-- 2.Products and Categories: Create a combined list of all products and all categories. Include all product names and all category names. Where there's a match, show both; otherwise, use NULLs.

select p.product_name, ct.category_name 
from products p
join categories ct
on p.category_id= ct.category_id;

-- 3.All category names with product details: display category_name, along with all product names and price from all the categories present in categories table.

select ct.category_name, p.product_name,p.price
from categories ct
join products p
on ct.category_id= p.category_id;
