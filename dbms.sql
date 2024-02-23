show databases;
use realstate;
show tables;

/*QUERIES FOR TABLE1*/
SELECT * FROM realstate.table1;

/*1. SQL query to order records by rental price column in ascending order.*/

SELECT * FROM table1 order by Rental_Price asc;

/*2. SQL query to select unique combinations of city and state with their avg rental price.*/

SELECT City, State_code, avg(rental_price)
FROM table1
GROUP BY City, State_code;

/*3. SQL query to select the top 5 highest deposit amounts with corresponding Address and city.*/

SELECT deposit, Address, city
FROM table1
ORDER BY deposit DESC
LIMIT 5;

/*4.SQL query to select count of records for each country along with total deposit amount.*/

SELECT Country, SUM(deposit) 
FROM table1
GROUP BY Country;

/*5. SQL query to select records with a rental price higher than the average rental price*/

SELECT * FROM table1
WHERE rental_price > AVG(rental_price);

/*QUERIES FOR TABLE2*/
show databases;
use realstate;
show tables;
SELECT * FROM realstate.table2;

/*1.SQL query to select the average area for each number of bedrooms*/

SELECT no_of_beds, AVG(area) AS AVERAGE_AREA
FROM table2
GROUP BY no_of_beds;

/*2.SQL query to select records with more than one bathroom and pets allowed.*/

SELECT * FROM table2
WHERE no_of_baths > 1
AND pets_allowed = pets_allowed;

/*3.SQL query to select top 3 records with the highest total area.*/

SELECT *, no_of_beds + no_of_baths AS totalarea
FROM table2
ORDER BY totalarea desc
LIMIT 3;

/*4.SQL query to select count of records for each combination of bedrooms and bathrooms*/

SELECT COUNT(DISTINCT CONCAT(no_of_beds, no_of_baths)) as result
FROM table2;

/*5.SQl query to select largest area with pets allowed*/

SELECT MAX(area)
FROM table2
WHERE pets_allowed IS NOT NULL;

/*QUERIES FOR TABLE3*/
show databases;
use realstate;
show tables;
SELECT * FROM realstate.table3;

/*1.SQL query to select records where both washer/dryer and ac are available, and order by s.no*/

SELECT * FROM table3
WHERE washer/dryer = 'available'
AND AC = 'available'
ORDER BY S_no;

/*2.SQL query to select records where hardwoodfloors are available, but neither roofdeck not storage is present, and order by sno in decending order*/

SELECT * FROM table3
WHERE hardwoodfloors = 'available'
AND (roofdeck != 'available' AND storage != 'available')
ORDER BY s_no desc;

/*3.SQL query to select records where atleast four amenities (AC,parking,dishwasher,fireplace) are available,and order by sno.*/

SELECT * FROM table3
WHERE AC = 'available'
AND parking = 'available'
AND dishwasher = 'available'
AND fireplace = 'available'
ORDER BY s_no;

/*4.SQL query to select records where neither roofdeck not storage is available, and include count of such records*/

SELECT COUNT(*) AS number_of_records
from table3
WHERE roofdeck != 'available'
AND storage != 'available';

/*5.SQL query to select records with parking and either fireplace or dishwasher, and include count of record for each condition.*/

SELECT COUNT(*) FROM table3 WHERE (parking = 'car parking' and fireplace = 'available'),
SELECT COUNT(*) FROM table3 WHERE (parking = 'car parking' and storage = 'available');





