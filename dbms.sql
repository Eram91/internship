show databases;
use realstate;
show tables;

SELECT * FROM realstate.table1;

/*1. query to order records by rental price column in ascending order*/
SELECT * FROM table1 order by Rental_Price asc;

SELECT avg(Rental_price) FROM table1 group by City, State_code;




