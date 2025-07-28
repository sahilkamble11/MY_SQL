-- Trigger to Update Stock After an Order is Placed

USE tflecommerce;
DROP TRIGGER IF EXISTS updatestock;
DELIMITER //
CREATE TRIGGER updatestock
AFTER INSERT ON orders
FOR EACH ROW 
BEGIN
UPDATE products p
JOIN order_items oi ON p.id=oi.item_id
SET p.stock = p.stock - oi.quantity
WHERE oi.order_id = NEW.id ;
END // 
DELIMITER ;


