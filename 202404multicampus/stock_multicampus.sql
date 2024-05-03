SELECT * FROM db.stock;

#select 문 조회하기

SELECT *
FROM db.stock
WHERE 종가 < 26000;

SELECT *
FROM db.stock
WHERE 시가 > 70000;

SELECT *
FROM db.stock
WHERE 등락률 > 4;

# COUNT = 조건에 맞는 레코드의 개수를 세는 쿼리문
# 등락률이 4 이상인 레코드의 개수를 출력
SELECT COUNT(*)
FROM db.stock
WHERE 등락률 >= 4;

# 합계 - sum
SELECT SUM(종가)
FROM db.stock
WHERE 등락률 >= 4;

# 평균 - avg
SELECT AVG(종가)
FROM db.stock
WHERE 등락률 >= 4;
#등락률이 3 이상인 레코드를 필터링해서
#그 레코드들의 종가의 평균 
# / 레코드의 개수 / 종가의 합계
CREATE VIEW multicampus1 AS
SELECT AVG(종가), 
COUNT(*), SUM(종가)
FROM db.stock
WHERE 등락률 >= 3;