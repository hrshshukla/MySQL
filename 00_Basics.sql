
SELECT * FROM users;

-->> set data 
UPDATE users
SET refference_id = 2
WHERE id > 8 AND id < 13 ;


-->> COLUMN 
ALTER TABLE users
ADD COLUMN reffereceId INT;

-->> 
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(10,2);

UPDATE users 
SET reffereceId = 1 WHERE id%2 = 1;

UPDATE users 
SET reffereceId = NULL WHERE id%2 = 0;


ALTER TABLE users 
DROP COLUMN refference_id;

-->> Rename COLUMN
ALTER TABLE users RENAME COLUMN reffereceId TO refference_id;
