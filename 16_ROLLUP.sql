
CREATE TABLE sales (
    region VARCHAR(50),
    product VARCHAR(50),
    amount INT
);


INSERT INTO sales (region, product, amount) VALUES
('East', 'Pen', 100),
('East', 'Pen', 200),
('East', 'Book', 150),
('West', 'Pen', 300),
('West', 'Book', 40);


SELECT * FROM sales;

-->> Suppose You want a report that shows:
--| (1) Total sales of each region (called sub-total)
--| (3) Grand total sales including all regions 

SELECT region, product, SUM(amount) AS total_sales
FROM sales
GROUP BY region, product WITH ROLLUP;

--> Output :
--|-------------------------------------------------------|-
--| region | product | total\_sales |                     |
--| ------ | ------- | ------------ | ------------------- |
--| East   | Pen     | 300          |                     |
--| East   | Book    | 150          |                     |
--| East   | NULL    | 450          | ← Subtotal for East |
--| West   | Pen     | 300          |                     |
--| West   | Book    | 400          |                     |
--| West   | NULL    | 700          | ← Subtotal for West |
--| NULL   | NULL    | 1150         | ← Grand total       |
--|-------------------------------------------------------|-





--(+) even though we use HAVING{...} ROLLUP will include those rows
--  where refference_id = NULL 
--  because it is always written before HAVING and after GROUP BY

SELECT  refference_id, COUNT(*) as total FROM users
WHERE refference_id IS NOT NULL
GROUP BY refference_id WITH ROLLUP
HAVING COUNT(*) > 4; 