ALTER TABLE customers 
ADD Income_Missing_Flag INT;

UPDATE customers 
SET Income_Missing_Flag = CASE 
    WHEN Income IS NULL THEN 1 
    ELSE 0 
END;

SELECT Customer_ID, Name, Income, Income_Missing_Flag FROM customers;