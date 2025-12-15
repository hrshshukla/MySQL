-- changing the constraints of existing column 


SELECT * FROM users;

-- ADD CONSTRAINT to add something new 
ALTER TABLE users
ADD CONSTRAINT UNIQUE (email);

-- MODIFY to change something existing 
ALTER TABLE users
MODIFY COLUMN name VARCHAR(200);





-- Only accept DOB more than 2000-01-01
-- (+) always give a name to CONSTRAINT here, chk_dob. 
-- because, we can use "chk_dob" in future to DROP CONSTRAINT
ALTER TABLE users
ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01');
ALTER TABLE users DROP CONSTRAINT chk_dob;




-- Trying to INSERT larger DOB after adding chk_dob
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('haysh', 'harsv@example.com', 'Male', '1919-05-14', 650000.00);





-- If we don't give name to a CONSTRAINT   
-- Then MySQL will auto-assign a name like "users_chk_1"

-- And to get auto-assign CONSTRAINT names, we have use the QUERY given below : 
SELECT CONSTRAINT_NAME, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'users';
