-- using the products table and the categories table, return the product name and the category name 
SELECT 	*
FROM products
INNER JOIN products ON categories.Name = products.Name
INNER JOIN categories ON products.Name = categories.Name;

-- joins: select all the computers from the products table:
-- using the products table and the categories table, return the product name and the category name
SELECT P.Name as ProductName, C.Name as CategoryName
FROM products AS P
INNER JOIN categories AS C 
ON P.CategoryID = C.CategoryID
WHERE C.Name = 'Computers';

 -- joins: find all product names, product prices, and products ratings that have a rating of 5 
 SELECT products.name, products.price, reviews.rating
 FROM products
 INNER JOIN reviews 
 ON products.ProductID = reviews.productID
 WHERE reviews.rating = 5;
 
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by 
SELECT employees.FirstName, employees.LastName, Sum(sales.Quantity) AS Total
FROM sales
INNER JOIN employees
ON sales.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID-- bc each employee has owen id, can show eacg persons sales
ORDER BY Total DESC -- ordered by highest sale per that person
LIMIT 2;

-- joins: find the name of the department, and the name of the category for Appliances and Games 

SELECT departments.Name AS 'Department Name', categories.Name as 'Category Name'
FROM departments
INNER JOIN categories
ON departments.DepartmentID = categories.DepartmentID
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';


-- joins: find the product name, total # sold, and total price sold,
-- for Eagles: Hotel California --You may need to use SUM() 
SELECT p.Name, Sum(s.Quantity) as "Total Units Sold",
Sum(s.quantity * s.PricePerUnit) as "Total Price Sold"
FROM products as p
INNER JOIN sales as s
ON p.ProductID = s.ProductID
WHERE NAME LIKE '%Eagles: Hotel California%';


-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) 
SELECT products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
FROM products
INNER JOIN reviews
ON products.productID = reviews.ProductID
WHERE NAME LIKE '%Visio%' AND reviews.Rating = 1;


-- ------------------------------------------ Extra - May be difficult
-- Your goal is to write a query that serves as an employee sales report.
-- This query should return:
-- the employeeID
-- the employee's first and last name
-- the name of each product
-- and how many of that product they sold */
-- Complete each of the queries
-- 1 use employee table
-- 2 product name
-- 3 sales Quan
-- 2 joins with common table 
-- GROUP BY is notmally used with aggregate functions
SELECT employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, Sum(sales.Quantity) as "Total Units Sold"
FROM employees
INNER JOIN sales ON employees.EmployeeID = sales.EmployeeID
INNER JOIN products ON sales.ProductID = products.ProductID
GROUP BY employees.EmployeeID, products.ProductID -- sub catergory to 
ORDER BY employees.FirstName;




-- Once finished, create a new folder in your repo
-- Save the SQL file there
-- Stage, commit, and push up to GitHub*/
