SELECT Products.Name AS ProductName, COALESCE(Categories.Name, 'Без категории') AS CategoryName
FROM Products
LEFT JOIN ProductCategories ON Products.ProductID = ProductCategories.ProductID
LEFT JOIN Categories ON ProductCategories.CategoryID = Categories.CategoryID;
