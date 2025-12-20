-->> Select all those users whose salary is more than average
SELECT name, salary
FROM users
WHERE salary > ( SELECT AVG(salary) FROM users);



-->> Select those who have reffereceId
SELECT id, name FROM users
WHERE reffereceId IN (
    SELECT id FROM users WHERE salary > (SELECT AVG(salary) FROM users)
);



-->> Create three columns : name | salary | avg_salary
SELECT name, salary, (SELECT AVG(salary) FROM users) as avg_salary
FROM users;