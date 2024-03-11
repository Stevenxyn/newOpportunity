/*Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
*/

SELECT * FROM DBO.SampleSuperstore
WHERE Quantity NOT IN (5,2,3,4,9,1,6)

SELECT * FROM DBO.SampleSuperstore
WHERE NOT [Postal Code] > 50000
ORDER BY [Postal Code]
