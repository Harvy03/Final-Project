SELECT *
FROM superstore;

--  1. Total Sales and Profit by Category
SELECT 
  Category,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM 
  superstore
GROUP BY 
  Category
ORDER BY 
  Total_Profit DESC;
  
-- 2. Profit Margin % by Sub-Category
SELECT 
  `Sub-Category`,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS Profit_Margin_Percent
FROM 
  superstore
GROUP BY 
  `Sub-Category`
ORDER BY 
  Profit_Margin_Percent ASC;
  
-- 3. Average Quantity Sold per Sub-Category (Inventory Proxy)
SELECT 
   `Sub-Category`,
  ROUND(AVG(Quantity), 2) AS Avg_Quantity_Sold
FROM 
  superstore
GROUP BY 
   `Sub-Category`
ORDER BY 
  Avg_Quantity_Sold DESC;
  
-- 4. Monthly Sales and Profit Trends
SELECT 
  DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Order_Month,
  SUM(Sales) AS Monthly_Sales,
  SUM(Profit) AS Monthly_Profit
FROM 
  superstore
WHERE 
  STR_TO_DATE(`Order Date`, '%m/%d/%Y') IS NOT NULL
GROUP BY 
  Order_Month
ORDER BY 
  Order_Month;
  
-- 5. Regional Profitability
SELECT 
  Region,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS Profit_Margin_Percent
FROM 
  superstore
GROUP BY 
  Region
ORDER BY 
  Total_Profit DESC;
  
 -- 6. Slow-Moving Items (Low Sales + High Quantity)
SELECT 
  `Sub-Category`,
  SUM(Sales) AS Total_Sales,
  SUM(Quantity) AS Total_Quantity,
  ROUND(SUM(Sales) / NULLIF(SUM(Quantity), 0), 2) AS Sales_per_Unit
FROM 
  superstore
GROUP BY 
  `Sub-Category`
ORDER BY 
  Sales_per_Unit ASC
LIMIT 10;

-- 7. Overstocked Items (High Quantity + Low Profit)
SELECT 
  `Sub-Category`,
  SUM(Quantity) AS Total_Quantity,
  SUM(Profit) AS Total_Profit
FROM 
  superstore
GROUP BY 
  `Sub-Category`
HAVING 
  Total_Profit < 1000 AND Total_Quantity > 100
ORDER BY 
  Total_Quantity DESC;