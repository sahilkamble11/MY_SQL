-- Stored Procedure for Updating User Information

USE tflecommerce;

DELIMITER //
CREATE PROCEDURE updateuser(
IN p_id INT,
IN p_username VARCHAR(50),
IN p_password VARCHAR(50),
IN p_email VARCHAR(50),
IN p_address VARCHAR(50) 
)
BEGIN
UPDATE users 
SET username=p_username , password=p_password , email=p_email , address=p_address
WHERE id=p_id ;
END //
DELIMITER ;

CALL updateuser(0,"nirjala naik","naik@11","naik@123gmail.com","Khanapur KOLHAPUR");

DROP PROCEDURE updateuser;