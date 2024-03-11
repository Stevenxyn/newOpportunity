/* ORDER BY  ascending - alphabetically*/
SELECT * FROM dbo.SampleSuperstore
ORDER BY City;

/* ORDER BY descending - Alphabetically desc*/
SELECT * FROM dbo.SampleSuperstore
ORDER BY City DESC;

/* Example */
SELECT "Ship Mode", "Postal Code" FROM dbo.SampleSuperstore
ORDER BY "Ship Mode" DESC, "Postal Code" ASC ;

/*Example #2*/
SELECT State, [Postal Code], Region, Sales, Quantity, Discount, Profit FROM dbo.SampleSuperstore
WHERE [State] = 'California'
AND ( [Postal Code] LIKE '90%' OR  [Postal Code] LIKE '93%')
AND Quantity > 10
ORDER BY Quantity DESC ;

/*Para ser mas especifico las clausulas de consulta deben ir con ( )*/
SELECT * FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
