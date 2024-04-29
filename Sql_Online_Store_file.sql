SELECT * FROM sales.`online retail.xlsx - online retail`;

rename table sales.`online retail.xlsx - online retail` to sales.retail;

Select count(*) as total_rows from sales.retail;

Select * from sales.retail;

SELECT *
FROM sales.retail
WHERE InvoiceNo IS NULL 
OR StockCode IS NULL 
OR 'Description' IS NULL 
OR Quantity IS NULL 
OR InvoiceDate IS NULL 
OR UnitPrice IS NULL 
OR CustomerID IS NULL
OR Country IS NULL; -- Checking for non-values


SELECT COUNT(DISTINCT InvoiceNo) AS TotalInvoices
FROM sales.retail; # There are 581 unique values in the dataset

SELECT SUM(Quantity) AS TotalQuantitySold
FROM sales.retail; -- Total Sum of Quantity is 121328

SELECT StockCode, Description, SUM(Quantity) AS TotalQuantitySold
FROM sales.retail
GROUP BY StockCode, Description
ORDER BY TotalQuantitySold DESC
LIMIT 10;

SELECT InvoiceDate, SUM(Quantity) AS TotalQuantitySold
FROM sales.retail
GROUP BY InvoiceDate
ORDER BY InvoiceDate; -- no of quantity sold on specific date & time.

SELECT AVG(Quantity) AS AvgQuantityPerInvoice
FROM (
    SELECT InvoiceNo, SUM(Quantity) AS Quantity
    FROM sales.retail
    GROUP BY InvoiceNo
) AS InvoiceQuantities; -- Average Quantity sold per invoice.

SELECT MAX(Quantity) AS MaxQuantityPerInvoice
FROM (
    SELECT InvoiceNo, SUM(Quantity) AS Quantity
    FROM sales.retail
    GROUP BY InvoiceNo
) AS InvoiceQuantities; -- MAX Quantity sold per invoice.

Select * from sales.retail;

Select Quantity, Country, count(*) 
from sales.retail
group by Quantity, Country
order by Country asc; 

Select Country, count(*) as Total_Countries
from sales.retail
group by Country;

Select Max(Quantity) from sales.retail
where Country = "United Kingdom"; -- 2880 Max Quantity sold in UK

Select Description, count(*) as Total_Items
from sales.retail
group by Description
order by Description desc; -- Total items using group by function

Select CustomerID, country, count(*) as ToT
from sales.retail
group by CustomerID, country
order by CustomerID, country asc;





 


