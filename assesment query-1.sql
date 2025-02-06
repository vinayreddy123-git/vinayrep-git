//Total Sales Revenue

SELECT SUM(TransactionAmount) AS TotalRevenue  
FROM assesment


//Average Transaction Amount per Customer

SELECT CustomerID, AVG(TransactionAmount) AS AvgTransactionAmount  
FROM assesment  
GROUP BY CustomerID

//Top 5 Cities by Sales Revenue

SELECT City, SUM(TransactionAmount) AS TotalRevenue  
FROM assesment  
GROUP BY City  
ORDER BY TotalRevenue DESC 

//Most Popular Payment Method

SELECT PaymentMethod, COUNT(*) AS UsageCount  
FROM assesment  
GROUP BY PaymentMethod  
ORDER BY UsageCount DESC

//Highest Selling Product by Quantity

SELECT ProductName, SUM(Quantity) AS TotalQuantitySold  
FROM assesment  
GROUP BY ProductName  
ORDER BY TotalQuantitySold DESC



//Percentage of Transactions with Discounts

SELECT  
    (COUNT(CASE WHEN DiscountPercent > 0 THEN 1 END) * 100.0 / COUNT(*)) AS DiscountedTransactionPercentage  
FROM assesment


//Number of Returns Per Product
 
SELECT ProductName, COUNT(*) AS ReturnCount  
FROM assesment  
WHERE Returned = 'Yes'  
GROUP BY ProductName  
ORDER BY ReturnCount DESC


//Average Delivery Time by Region

SELECT Region, AVG(DeliveryTimeDays) AS AvgDeliveryTime  
FROM assesment  
GROUP BY Region

//Customer Satisfaction Analysis

SELECT StoreType, AVG(FeedbackScore) AS AvgFeedbackScore  
FROM assesment 
GROUP BY StoreType  
ORDER BY AvgFeedbackScore DESC

