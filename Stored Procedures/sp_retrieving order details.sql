-- Creating a Stored Procedure for Retrieving Order Details

USE tflecommerce;

DELIMITER //

CREATE PROCEDURE orderdetails(
IN p_id INT
)
BEGIN
SELECT u.id,u.username,p.name AS product_name,p.id AS product_id,p.price,oi.quantity,o.shipping_address,o.shipping_date,o.total_amount
FROM orders o 
JOIN users u ON u.id=o.customer_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON p.id = oi.item_id

WHERE u.id=p_id;
END //
DELIMITER ;

CALL orderdetails(4);

DROP PROCEDURE orderdetails;