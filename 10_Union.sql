
SELECT * FROM admin_users;
SELECT * FROM users;



-->> UNION : removes DUPLICATED values
SELECT name, email FROM users
UNION
SELECT name, email FROM admin_users;


-->> UNION ALL : Shows DUPLICATED values
SELECT name, email FROM users
UNION ALL
SELECT name, email FROM admin_users;



-->> Seperate columns : creating a 'role_column' 
SELECT name, email, 'User' as role_column FROM users -- Show 'User' in 'role_column'
UNION ALL
SELECT name, email, 'Admin' as role_column FROM admin_users;  -- Show 'Admin' in 'role_column'
