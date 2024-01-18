SELECT 행정구역, 업소명, 주소 
FROM database.gas WHERE (지역본부_지사 = '경기동부지사');

CREATE VIEW database.수도권 AS 
SELECT 행정구역, 업소명, 주소 
FROM database.gas WHERE (지역본부_지사 = '경기동부지사');

SELECT * 
FROM database.gas 
WHERE (지역본부_지사 = '경기동부지사')
ORDER BY 순번 DESC; 

SELECT * 
FROM database.gas 
WHERE (지역본부_지사 = '경기동부지사')
ORDER BY 순번 ASC; 

SELECT * FROM database.수도권;