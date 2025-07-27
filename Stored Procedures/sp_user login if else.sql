-- Stored Procedure for User Login
USE tflecommerce;
DELIMITER //
CREATE PROCEDURE userlogin(
IN p_id INT,
IN p_username VARCHAR(50),
IN p_password VARCHAR(255)
)
BEGIN
DECLARE userdata varchar(50);
DECLARE userpass varchar(255);

SELECT username , password into userdata, userpass from users 
WHERE id=p_id AND username = p_username AND password=p_password ;

IF  userdata IS NOT NULL AND userpass IS NOT NULL THEN
	select userdata, userpass;
ELSE
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "INVALID USERNAME OR PASSWORD";
END IF;	

END //

DELIMITER ;
DROP PROCEDURE IF EXISTS userlogin ;
CALL userlogin(21,"sahil_kamble","sahil@11");

SELECT username , password  from users 
WHERE id=21 AND username = "sahil_kamble" AND password="sahil@11";
