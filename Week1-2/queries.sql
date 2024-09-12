-- 1. Extract All Customers Who Have Placed an Order in the Last 30 Days
SELECT DISTINCT `Customer Name`
FROM `car_sales`
WHERE `Date` >= '2024-08-13'; 



--2. Retrieve the Total Number of Orders and the Average Order Value for Each Customer

SELECT `Customer Name`,
       COUNT(*) AS total_orders,
       AVG(`Price ($)`) AS average_order_value
FROM `car_sales`
GROUP BY `Customer Name`;



--3. Find the Top 3 Products with the Highest Sales Volume

SELECT `Model`,
       SUM(`Price ($)`) AS total_sales
FROM `car_sales`
GROUP BY `Model`
ORDER BY total_sales DESC
LIMIT 3;



--4. List Customers Who Haven’t Made a Purchase in Over 6 Months

SELECT distinct `Customer Name`
FROM `car_sales`
where `Customer Name` NOT IN (
    SELECT distinct `Customer Name`
    FROM `car_sales`
    WHERE Date >= '2024-09-12'
);



--5. Fetch customers with more than 10 orders and sort them by the number of orders.

SELECT `Customer Name`, COUNT(*) AS number_of_orders
FROM `car_sales`
GROUP BY `Customer Name`
HAVING number_of_orders > 10
ORDER BY number_of_orders DESC;



