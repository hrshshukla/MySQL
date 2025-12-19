-- We can set Indexes to any column to get faster access of data 
-- don't create unecessary indexes as they consume extra disk space 
-- By default : the PRIMARY KEY column have indexes automatically generated  

SHOW INDEXES FROM users;


-->> Craete INDEX
CREATE INDEX idx_email ON users(email);

-- Usage : Improved speed (not visible)
SELECT * FROM users WHERE email='aarav@example.com';

-->> remove INDEX
DROP INDEX email ON users;