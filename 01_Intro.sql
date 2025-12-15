-- DROP
-- ALTER TABLE users DROP COLUMN is_active;

ALTER TABLE users MODIFY COLUMN date_of_birth DATE AFTER created_at;

ALTER TABLE users MODIFY COLUMN name DATE FIRST;

SELECT * FROM users;
