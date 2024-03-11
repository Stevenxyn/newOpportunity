/*select columns that do not repeat*/
SELECT DISTINCT ResponseName FROM gamesSteam;

SELECT DISTINCT city
 FROM station
 WHERE id % 2 = 0
