SELECT 
    Customer_ID, Name, City, Income, Region,
    Monthly_Sales AS Original_Sales,
    FIRST_VALUE(Monthly_Sales) OVER (
        ORDER BY Customer_ID 
        ROWS UNBOUNDED PRECEDING
    ) AS Forward_Filled_Sales
FROM customers
ORDER BY Customer_ID;