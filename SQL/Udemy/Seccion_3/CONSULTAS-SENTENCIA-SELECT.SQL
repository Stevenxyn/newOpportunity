USE Northwind
GO

--Hacer una consulta de todas las columnas de la tabla
SELECT * FROM Suppliers
GO

--Limitar la consulta a columnas especificas de la tabla
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Suppliers'
GO

SELECT CompanyName, ContactName, ContactTitle, [Address], Phone, Country 
	FROM Suppliers
	ORDER BY CompanyName ASC
GO

--Aplicando Alias a las columnas para renombrarlas y hacerlas mas entendibles
/*El siguiente Query funciona exactamente igual que el
anterior solo que aplicamos los alias a las columnas como al nombre de
la tabla que estamos consultando 
*/
SELECT S.[CompanyName] AS Compañia, 
	   S.[ContactName] AS Contacto,  
	   S.[ContactTitle] AS Titulo, 
	   S.[Address] AS Direccion, 
	   S.Phone AS Telefono, 
	   S.Country AS Pais 
FROM Suppliers as S
	ORDER BY CompanyName ASC
GO



