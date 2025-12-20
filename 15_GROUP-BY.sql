
SELECT gender, AVG(salary) as avg_salary FROM users GROUP BY gender;

SELECT gender, SUM(salary) as total FROM users GROUP BY gender;


-->> Returns gender whose average is greater than 75000
SELECT gender, AVG(salary) FROM users 
GROUP BY gender 
HAVING AVG(salary) > 64000;

--> WHERE {...}    ✅ before 'GROUP BY'
--> GROUP BY {...}
--> HAVING {...}   ✅ after 'GROUP BY'


SELECT  refference_id, COUNT(*) as total FROM users
WHERE refference_id IS NOT NULL
GROUP BY refference_id
HAVING COUNT(*) > 4;


--> without : HAVING COUNT(*) > 4;
--------------------------------|
--| refference_id |    total    |-
--|       1       |  4 rows     |-
--|       2       |  8 rows     |-
--|       4       |  12 rows    |-
---------------------------------

--
--> with : HAVING COUNT(*) > 4;
--------------------------------|
--| refference_id |    total    |-
--|       2       |  8 rows     |-
--|       4       |  12 rows    |-
---------------------------------
--> COUNT(*) as total : count total number of rows in each group and display the number 
--> COUNT(*) > 4 : display only those rows where where rows > 4 

