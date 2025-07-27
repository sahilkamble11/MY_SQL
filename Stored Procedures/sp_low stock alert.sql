
--  Creating a Stored Procedure for Low Stock Alerts

DELIMITER //
CREATE PROCEDURE lowstockalert(
IN p_threshold INT
)
BEGIN
SELECT id,name,stock FROM products WHERE stock <= p_threshold ;
END //

DELIMITER ;

CALL lowstockalert(50);

DROP PROCEDURE lowstockalert;