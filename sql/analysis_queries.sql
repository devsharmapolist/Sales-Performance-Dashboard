 Query 1: Sales by Region
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

 Query 2: Profit by Category
SELECT Category, ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;

 Query 3: Monthly Revenue Trend
SELECT 
    substr("Order Date", 7, 4) || '-' || substr("Order Date", 4, 2) AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM orders
GROUP BY Month
ORDER BY Month;

 Query 4: Profit Margin by Region
SELECT Region,
       ROUND(SUM(Sales), 2) AS Sales,
       ROUND(SUM(Profit), 2) AS Profit,
       ROUND((SUM(Profit)/SUM(Sales))*100, 2) AS Profit_Margin_Pct
FROM orders
GROUP BY Region
ORDER BY Profit_Margin_Pct ASC;