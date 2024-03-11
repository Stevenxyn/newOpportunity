SELECT * FROM Products
GO

--Realizando calculo, consultando la tabla productos
SELECT ProductName, UnitPrice, UnitPrice * .12 AS ImpuestoIVA
	FROM Products
GO


--Relizar consulta detallada desglosando los datos resultantes
SELECT * FROM Orders
SELECT * FROM [Order Details]

SELECT CustomerID, OrderID, OrderDate,
	   Day(OrderDate) AS Dia,
	   Month(OrderDate) AS Mes,
       Year(OrderDate) AS Anio
FROM Orders
GO

--Realizamos el calculo de sumar el precio total del pedido y descontar el descuento
SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,
	(UnitPrice * Quantity) - Discount AS Parcial
	FROM [Order Details]
	ORDER BY UnitPrice DESC
GO



--Valores unicos
SELECT * FROM Customers
GO

--Organizar los valores
SELECT CustomerID, CompanyName, Country FROM Customers
	ORDER BY Country
GO

--DISTINCT se encarga de poner el valor sin repetir eliminando duplicados dando exclusividad
SELECT DISTINCT Country FROM Customers
	ORDER BY Country
GO


--No se pueden aplicar alias para los Where pero con los ORDER BY funciona
SELECT CustomerID AS Identificador,
	   CompanyName AS Compañia,
	   City AS Ciudad
	FROM Customers
	ORDER BY Ciudad
/*WHERE Ciudad = 'Berlin'  MARCA ERROR*/ 
GO



--Funcion Case
SELECT DISTINCT CategoryID FROM Products

SELECT  ProductName, CategoryID FROM Products
ORDER BY ProductName


--Usando sentencia CASE
SELECT ProductName, CategoryID, 
	CASE CategoryID
		WHEN 1 THEN 'Bebidas'
		WHEN 2 THEN 'Lacteos'
		WHEN 3 THEN 'Carnes'
		WHEN 4 THEN 'Condimentos'
		WHEN 5 THEN 'Abarrotes'
		WHEN 6 THEN 'Juguetes'
		WHEN 7 THEN 'Otros'
	ELSE 'No en venta'
	END AS  Categoria  
FROM Products
ORDER BY ProductName
GO


