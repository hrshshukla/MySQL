CREATE DATABASE IF NOT EXISTS useraddress;

USE startersql;

--> Creation 
CREATE TABLE useraddress(
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    user_location VARCHAR(100),
    CONSTRAINT fk_user Foreign Key (userId) REFERENCES users(id) ON DELETE CASCADE -- CASCADE, SET NULL, RESTRICT
);


--> Usage 
INSERT INTO useraddress (userId, user_location)
VALUE
(2, "Mumbai"), -- users : Ananya 
(4, "Delhi"),  -- users : Sneha 
(6, "Bhopal"); -- users : Priyanka


DELETE FROM users WHERE name='Ananya'; -- Ananya will be deleted from users + useraddress both tables 


ALTER TABLE users
DROP FOREIGN KEY fk_user;


SELECT * FROM useraddress;

SELECT * FROM users;