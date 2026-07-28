Select c.name as Customers
FROM Customers c
left JOIN Orders o
on c.id = o.customerid 
where o.customerid is null;
