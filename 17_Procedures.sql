-->> Basic 
DELIMITER $$

CREATE PROCEDURE select_user(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Others')
)
BEGIN
    INSERT INTO users (name, email, gender)
    VALUE (p_name, p_email, p_gender);

    SELECT * FROM users;
END $$

DELIMITER ;

CALL select_user('Harsh', 'xyz@email', 'Male');


