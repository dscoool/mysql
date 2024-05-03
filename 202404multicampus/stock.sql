SELECT * FROM db.stock;

select * from db.stock
where (일자 = '2023/12/21');

SELECT SUM(거래량), AVG(시가), AVG(종가) 
FROM db.stock 
WHERE (종가 >= '52000');

USE stock;

CREATE VIEW db.stock_view AS # VIEW 생성
SELECT SUM(거래량), AVG(시가), AVG(종가) # 어떤 것을 출력할 것인가
FROM db.stock #  어디 = schema.table
WHERE (일자 >= '2022/01/01') # 조건 = 일자 언제~언제
AND (일자 <= '2023/01/01');


USE db;

# 각자 자신의 데이터를 사용해서
select avg(), sum() ~ from ~ where 
 query문을 작성해 보세요!!


SELECT * FROM db.stock
WHERE (종가 = '71700');

SELECT * FROM db.stock
WHERE (대비 > '300');


SELECT COUNT(*) FROM stock.samsungelec 
WHERE (대비 >= '1500');

SELECT AVG(대비) FROM stock.samsungelec 
WHERE (대비 >= '1500');

SELECT AVG(종가) FROM stock.samsungelec 
WHERE (종가 >= '70000');
SELECT * FROM stock.samsungelec;