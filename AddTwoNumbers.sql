DELIMITER &&
CREATE PROCEDURE AddTwoNumbers
(
	IN num1 INT,
    IN num2 INT,
    OUT Result INT
)
BEGIN
	SET Result = num1 + num2;
END;
DELIMITER;




