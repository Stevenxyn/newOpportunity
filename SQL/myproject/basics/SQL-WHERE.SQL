/*The WHERE clause is used to filter records*/

/* = Equal*/
SELECT * FROM gamesSteam
	WHERE ResponseName = 'TErRaria'

/* > Greater than*/
SELECT * FROM DBO.gamesSteam
  WHERE RecommendationCount > 50000;

/* < Less that*/
SELECT * FROM DBO.gamesSteam
WHERE RecommendationCount < 200;

/* >= Greater than or equal	*/
SELECT * FROM DBO.gamesSteam
WHERE RecommendationCount >= 50000;

/* <= Less that or equal*/
SELECT * FROM DBO.gamesSteam
WHERE RecommendationCount <= 1000;

/* <> Not equal*/
SELECT * FROM DBO.gamesSteam
WHERE PriceInitial <> '9.99';

/* BETWEEN a certain range */
SELECT * FROM DBO.gamesSteam
WHERE RecommendationCount BETWEEN 100 AND 300;
 
/* LIKE search for a pattern*/
SELECT * FROM DBO.gamesSteam
WHERE ResponseName LIKE 't%';
 
/* IN search for a specific values for a column*/
SELECT * FROM dbo.SampleSuperstore
WHERE City IN ('Los Angeles','miami');


