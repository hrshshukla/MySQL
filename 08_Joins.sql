SELECT * FROM addresses;

-->> INNER JOIN 
-- Approach : Hide row if users.id !== addresses.user_id and move to next 
SELECT users.name, addresses.city -- (1) Create column => name | city  
FROM users              -- (2) “Start looking for data from the "users" table.”
INNER JOIN addresses    -- (3)  Also bring in data from the addresses table
ON users.id = addresses.user_id; -- (4) when the users(id) = addresses(user_id)



-->> LEFT JOIN 
-- Approach : Don't hide instead print full LEFT table (users)
-- And if corresponding value is not found in RIGHT table (addresses) show "null" (but dont hide)
SELECT users.name, addresses.city  
FROM users                        
LEFT JOIN addresses    -- (3) show full LEFT table(users) 
ON users.id = addresses.user_id; 



-->> RIGHT JOIN 
-- Approach : Don't hide instead print full RIGHT table (addresses)
-- And if corresponding value is not found in LEFT table (users) show "null" (but dont hide)
SELECT users.name, addresses.city  
FROM users                        
LEFT JOIN addresses    -- (3) show full RIGHT table(addresses) 
ON users.id = addresses.user_id; 

