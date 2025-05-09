-- Question 1:

SELECT 
  OrderID,
  CustomerName,
  TRIM(value) AS Product
FROM 
  ProductDetail
  CROSS APPLY STRING_SPLIT(Products, ',');


-- Question 2: 
-- Create a table for Orders with OrderID and CustomerName
SELECT DISTINCT
  OrderID,
  CustomerName
FROM
  OrderDetails;

-- Create a table for OrderItems with OrderID, Product, and Quantity
SELECT
  OrderID,
  Product,
  Quantity
FROM
  OrderDetails;
