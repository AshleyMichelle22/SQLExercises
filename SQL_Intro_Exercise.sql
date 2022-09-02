-- find all products
select * 
from bestbuy.products;

-- find all products that cost $1400
select * 
from bestbuy.products
where products.price = 1400.00;

-- find all products that cost $11.99 or $13.99
select * 
from bestbuy.products as p
where p.price = 11.99 or p.price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
select * 
from bestbuy.products as p
where NOT p.price = 11.99;
-- find all products and sort them by price from greatest to least
select * 
from bestbuy.products as p
ORDER BY  p.price DESC;

-- find all employees who don't have a middle initial
select * 
from bestbuy.employees
where MiddleName IS NULL;

-- find distinct product prices
Select Distinct bestbuy.products.price
FROM bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
Select *
From bestbuy.employees
Where FirstName LIKE 'j%';

-- find all Macbooks
select *
From bestbuy.products
where name = 'Macbook';

-- find all products that are on sale
Select *
from bestbuy.products
where OnSale =1;

-- find the average price of all products

select AVG (products.price)
from bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
select *
from bestbuy.employees As e
Where e.MiddleInitial IS NULL AND e.title = 'Geek Squad';


-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select *
From bestbuy.products
where StockLevel between 500 and 1200
order by Price;