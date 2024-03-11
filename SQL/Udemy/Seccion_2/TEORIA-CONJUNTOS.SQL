USE Northwind
GO

-- Seleccionar todo de una tabla
SELECT * FROM Customers
GO

--Retornar informacion de columnas de una tabla
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers'
GO

/*
and = que sea mas especifica la busqueda si ambas son true
or = que traiga resultados asi, sin necesidad de ser tan especifico
*/

-- Retorna ciudades de paris y buenos aires
SELECT * FROM customers 
WHERE City = 'paris' or 
	  City = 'buenos aires'
GO

-- Retorna country de USA y apparte de esa consulta la region WA
SELECT * FROM Customers
WHERE Country = 'USA' AND
	  Region = 'WA'
ORDER BY CompanyName DESC
GO

-- Retorna todas las country que sean de los dos parametros asignados
SELECT CompanyName, ContactName, Country, Phone FROM Customers
WHERE Country = 'Germany' OR
	  Country = 'USA'
ORDER BY Country
GO

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees'
GO

-- Clausula COUNT(*) SIEMPRE debe ir acompa�ada del GROUP BY
SELECT TitleOfCourtesy, COUNT(*) AS Cantidad FROM Employees
GROUP BY TitleOfCourtesy
HAVING COUNT(*) >= 3
GO

/*
El orden de consulta es el siguiente de lo contrario salta error

5: SELECT
1: FROM
2: WHERE
3: GROUP BY
4: HAVING
6: ORDER BY
*/

SELECT Country, COUNT(*) AS ContadorCountry FROM Customers
--WHERE Country IN ('USA', 'BRAZIL','FRANCE','MEXICO')
WHERE Country = 'USA' OR Country = 'BRAZIL'

GROUP BY Country
HAVING COUNT(*) > 1
ORDER BY ContadorCountry
GO

--Retornar registros donde el primer valor o ultimo de registros empiece por lo asignado

SELECT * FROM Customers
WHERE Country LIKE 'M%' OR 
	  Country LIKE 'S%'
ORDER BY Country
GO

-- Retornar los productos dentro de un rango en especifico
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Products'
GO

SELECT ProductName, UnitPrice FROM Products
WHERE UnitPrice BETWEEN 15 AND 30
ORDER BY UnitPrice
GO







