/* Syntax
SELECT column1, column2...
FROM table_name
WHERE condition1 OR condition2 OR condition3;
*/

SELECT * FROM DBO.SampleSuperstore
WHERE Quantity = 5 OR Quantity = 9
ORDER BY Quantity DESC;

/*Example*/
SELECT * FROM DBO.SampleSuperstore
WHERE City = 'Houston' AND Segment LIKE 'cor%' OR Segment LIKE 'con%'
ORDER BY Segment;
