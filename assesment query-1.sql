SELECT SUM(TransactionAmount) AS TotalRevenue  
FROM assesment

SELECT CustomerID, AVG(TransactionAmount) AS AvgTransactionAmount  
FROM assesment  
GROUP BY CustomerID;


SELECT City, SUM(TransactionAmount) AS TotalRevenue  
FROM assesment  
GROUP BY City  
ORDER BY TotalRevenue DESC 


SELECT PaymentMethod, COUNT(*) AS UsageCount  
FROM assesment  
GROUP BY PaymentMethod  
ORDER BY UsageCount DESC

SELECT ProductName, SUM(Quantity) AS TotalQuantitySold  
FROM assesment  
GROUP BY ProductName  
ORDER BY TotalQuantitySold DESC


SELECT  
    (COUNT(CASE WHEN DiscountPercent > 0 THEN 1 END) * 100.0 / COUNT(*)) AS DiscountedTransactionPercentage  
FROM assesment

 
SELECT ProductName, COUNT(*) AS ReturnCount  
FROM assesment  
WHERE Returned = 'Yes'  
GROUP BY ProductName  
ORDER BY ReturnCount DESC


SELECT Region, AVG(DeliveryTimeDays) AS AvgDeliveryTime  
FROM assesment  
GROUP BY Region

SELECT StoreType, AVG(FeedbackScore) AS AvgFeedbackScore  
FROM assesment 
GROUP BY StoreType  
ORDER BY AvgFeedbackScore DESC

