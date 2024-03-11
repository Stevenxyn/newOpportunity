/* AND: operator is used to filter records based on more that one condition*/
SELECT * FROM dbo.SampleSuperstore
WHERE City = 'Henderson' AND Quantity > 5;

/* Example*/
SELECT * FROM dbo.SampleSuperstore
WHERE State = 'Kentucky'
AND Category = 'Technology'
AND Quantity > 1;

/* Combining AND and OR*/
SELECT State, [Postal Code], Region, Sales, Quantity, Discount, Profit FROM dbo.SampleSuperstore
WHERE [State] = 'California'
AND ( [Postal Code] LIKE '90%' OR  [Postal Code] LIKE '93%')
AND Quantity > 10
ORDER BY Quantity DESC ;
