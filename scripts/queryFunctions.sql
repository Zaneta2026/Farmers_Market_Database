-- AVG | COUNT | MAX | MIN | SUM

SELECT AVG/*MIN*/(rating) AS AverageRating
FROM farmers;

SELECT * 
FROM farmers
WHERE rating = (SELECT (MIN(rating)) from farmers);

SELECT COUNT(*) AS Number_of_farmers FROM farmers;

SELECT /* (*) */ COUNT(*) AS Number_of_farmers
FROM farmers
WHERE rating > 4;

SELECT SUM(rating) as total_Ratings FROM farmers;

SELECT * FROM farmers;

-- STRING FUNCTIONS

SELECT full_name, email, phone_number, farm_name
FROM farmers;

SELECT UPPER(full_name) as name, email, phone_number, farm_name
FROM farmers;

SELECT LOWER(full_name) as name, email, phone_number, farm_name
FROM farmers;

SELECT CONCAT(full_name,' - ', farm_name) as FarmOwner, email, phone_number
FROM farmers;

SELECT SUBSTRING(full_name, 1, 1) as Initial,full_name, email, phone_number, farm_name
FROM farmers;

SELECT SUBSTRING(full_name, 1, 1) as Initial,full_name, email, LEN(phone_number), farm_name
FROM farmers; 

SELECT SUBSTRING(full_name, 1, 1) as Initial,full_name, REPLACE(email, '@', '#'), LEN(phone_number), farm_name
FROM farmers; 

--first 2 digits with 07

SELECT full_name, email, REPLACE(phone_number, SUBSTRING(phone_number, 1, 2),'07') as ZAR_phone, farm_name
FROM farmers;

SELECT SUBSTRING(full_name, 1, 1) as Initial, full_name, email, stuff(phone_number, 1, 2, '07') as ZAR_phone, farm_name
FROM farmers;

-- ROUND
SELECT order_id, ROUND(total_price, 0) as price, order_date, quantity_ordered
FROM orders;


-- CEILING -> ROUNG UP
SELECT order_id, CEILING(total_price) as price, order_date, quantity_ordered
FROM orders;

-- FLOOR -> ROUNG UP
SELECT order_id, CEILING(total_price) as price, order_date, FLOOR(quantity_ordered) as quantity_rounded_down
FROM orders;

-- POWER math.pow()
SELECT POWER(2,8);

-- SQRT 
SELECT SQRT(16); -- REPLACE(FLOOR(SQRT(POWER(2,9))), '22', 'Chucky Cheese') as square_root;

-- DATETIME
SELECT order_id, order_date, GETDATE() as TODAY
FROM orders;

-- DATETIME
SELECT order_id, order_date, CURRENT_DATE as TODAY
FROM orders;

SELECT DAY(CURRENT_DATE) as 'Day';
SELECT MONTH(CURRENT_DATE) as 'Month';
SELECT YEAR(CURRENT_DATE) as 'Year';

SELECT order_id, order_date, YEAR(order_date) as 'Year'
b.full_name as 'Buyer', p.product_name as 'Product'
FROM orders o
JOIN buyers b on b.buyer_id = o.buyer_id
JOIN product_listings p on p.listing_id = o.listing_id
JOIN farmers f on f.farmer_id = p.farmer_id
WHERE YEAR(order_date) = 2023
ORDER BY order_date ASC;

SELECT 
