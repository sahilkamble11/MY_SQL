-- Stored Procedure for User Login
USE tflecommerce;
DELIMITER //
CREATE PROCEDURE userlogin(
IN p_id INT,
IN p_username VARCHAR(50),
IN p_password VARCHAR(50)
)
BEGIN
SELECT * 
FROM users 
WHERE id=p_id AND username=p_username AND password=p_password;
END //

DELIMITER ;

CALL userlogin(21,"sahil_kamble","sahil@11");