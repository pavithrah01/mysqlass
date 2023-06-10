1. Count the number of Salespeople whose name begins with 'a' or 'A':
SELECT COUNT(*) AS Count
FROM SalesPeople
WHERE UPPER(SUBSTRING(Sname, 1, 1)) = 'A';


2. Display all the Salespeople whose total orders' worth is more than Rs. 2000:
SELECT S.*
FROM SalesPeople S
INNER JOIN (
    SELECT Snum, SUM(Amt) AS TotalAmount
    FROM Orders
    GROUP BY Snum
    HAVING SUM(Amt) > 2000
) O ON S.Snum = O.Snum;



3. Count the number of Salespeople belonging to New York:
SELECT COUNT(*) AS Count
FROM SalesPeople
WHERE City = 'Newyork';


4.Display the number of Salespeople belonging to London and Paris:
SELECT City, COUNT(*) AS Count
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;


5.Display the number of orders taken by each Salesperson and their date of orders:
SELECT S.Snum, S.Sname, COUNT(*) AS OrderCount
FROM SalesPeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname;


