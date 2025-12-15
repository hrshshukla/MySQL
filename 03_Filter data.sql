
USE startersql;

-- SELECT id, name FROM users WHERE gender='Female'; -- equals to "="
-- SELECT id, name FROM users WHERE gender<>'Male'; --  Not equals to "!="

-- SELECT * FROM users WHERE date_of_birth>"2000-12-30"; -- LESS THAN / GREATER THAN

 SELECT * FROM users WHERE id BETWEEN 6 AND 10; -- BETWEEN AND
 
 SELECT * FROM users WHERE gender='Female' AND salary>'40000'; -- AND
 
 SELECT * FROM users WHERE gender='Female' ORDER BY date_of_birth; -- from "smallest" date_of_birth --to-- "largest" date_of_birth
 
SELECT * FROM users WHERE gender='Female' ORDER BY date_of_birth ASC LIMIT 5; -- LIMIT

DELETE FROM users WHERE id%2=0;