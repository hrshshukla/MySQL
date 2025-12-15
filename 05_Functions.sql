
--> COUNT()
-- (1)  No case sensitive : Aarav = aarav
SELECT COUNT(*) FROM users WHERE name='aarav'; -- returns 1

-- (2)  case sensitive (using BINARY) : Aarav != aarav
SELECT COUNT(*) FROM users WHERE BINARY name='aarav'; -- return 0







--> MIN(), MAX()
SELECT MIN(salary) as minSalary_column, MAX(salary) as maxSalary_column FROM users; 



--> SUM() : Total salary of "Male" + "Female"
SELECT SUM(salary) as total_column FROM users;

-- Total salary of "Male" |  Total salary of "Female"
SELECT gender, SUM(salary) as total_column FROM users GROUP BY gender;



--> AVG()
SELECT AVG(salary) as total_column FROM users;




--> LENGTH(), LOWER(), CONCAT()
SELECT salary, LENGTH(salary) as salaryFigures FROM users;

SELECT name, LOWER(name) as lowerCase_column FROM users;

SELECT name, CONCAT(LOWER(name), '@myCompany') as empolyeeId FROM users;



--> NOW(), CURRENT_DATE(), DAY(), MONTH(), YEAR()
SELECT name, NOW() as currTime_column FROM users;

SELECT name, YEAR(date_of_birth) as DOB_year FROM users;

SELECT name, DATEDIFF(CURRENT_DATE(), date_of_birth) as days_lived FROM users;




--> IF(expr, true_value, false_value)
SELECT name, IF(gender='Female', 'Yes Female', 'Not Female') as is_female FROM users;

