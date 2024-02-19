/* AND: operator is used to filter records based on more that one condition*/
SELECT * FROM dbo.SampleSuperstore
WHERE City = 'Henderson' AND Quantity > 5;

/* Example*/
SELECT * FROM dbo.SampleSuperstore
WHERE State = 'Kentucky'
AND Category = 'Technology'
AND Quantity > 1;

/* Combining AND and OR*/

