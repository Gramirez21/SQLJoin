SELECT P.Name , C.Name AS category 
FROM products as P
INNER JOIN categories AS C ON C.CategoryID = P.CategoryID
WHERE C.Name = 'Computers';

SELECT P.Name , P.Price , R.rating FROM products as P
INNER JOIN reviews as R on r.ProductID = p.ProductID
WHERE r.Rating = 5;

SELECT e.FirstName, e.LastName, sum(s.Quantity) AS Total FROM sales AS s 
INNER JOIN employees AS e on e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
limit 2;




SELECT d.Name AS 'Department Name' , c.Name AS 'Category Name' FROM departments as d
INNER JOIN categories as c ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances ' OR c.Name = 'Game';

   SELECT p.Name , Sum(s.Quantity) AS 'Total Sold' , Sum(s.Quantity * s.PricePerUnit) As 'Total Price'
   FROM products AS p 
   INNER JOIN sales AS s ON s.ProductID = p.ProductID
   WHERE p.ProductID = 97;
   
   
   SELECT p.Name , r.reviewer, r.Rating, r.Comment
   FROM products AS p 
   INNER JOIN reviews AS r ON r.ProductID = p.ProductID 
   WHERE p.ProductID = 857 AND r.Rating = 1;
   


