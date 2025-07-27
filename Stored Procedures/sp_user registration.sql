-- Stored procedure for user registration


USE tflecommerce;

DELIMITER //
CREATE PROCEDURE user_registration(
IN p_id INT,
IN p_username VARCHAR(50),
IN p_password VARCHAR(50),
IN p_address VARCHAR(200),
IN p_email VARCHAR(50)
)
BEGIN
INSERT INTO users(id,username,password,address,email) VALUES(p_id,p_username,p_password,p_address,p_email);
END //

DELIMITER ;
DROP PROCEDURE user_registration;
CALL user_registration(21,"sahil_kamble","sahil@11","SURLI KOREGAON","sahil@gmail.com");