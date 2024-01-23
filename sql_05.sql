SELECT * FROM stock.samsungelec;

select * from stock.samsungelec
where (일자 = '2023/12/21');

SELECT SUM(거래량), AVG(시가), AVG(종가) 
FROM stock.samsungelec 
WHERE (종가 >= '72700');

USE stock;

CREATE VIEW stock.calculation_2022 AS # VIEW 생성
SELECT SUM(거래량), AVG(시가), AVG(종가) # 어떤 것을 출력할 것인가
FROM stock.samsungelec #  어디 = schema.table
WHERE (일자 >= '2022/01/01') # 조건 = 일자 언제~언제
AND (일자 <= '2023/01/01');

11:08:19	USE stock CREATE VIEW stock.calculation_2022 AS # VIEW 생성 SELECT SUM(거래량), AVG(시가), AVG(종가) # 어떤 것을 출력할 것인가 FROM stock.samsungelec #  어디 = schema.table WHERE (일자 >= '2022/01/01') # 조건 = 일자 언제~언제 AND (일자 <= '2023/01/01')	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE VIEW stock.calculation_2022 AS # VIEW 생성 SELECT SUM(거래량), AVG(ì' at line 2	0.000 sec



# 각자 자신의 데이터를 사용해서
select avg(), sum() ~ from ~ where 
 query문을 작성해 보세요!!


SELECT * FROM stock.samsungelec 
WHERE (종가 = '71700');

SELECT * FROM stock.samsungelec 
WHERE (대비 > '300');


SELECT COUNT(*) FROM stock.samsungelec 
WHERE (대비 >= '1500');

SELECT AVG(대비) FROM stock.samsungelec 
WHERE (대비 >= '1500');

SELECT AVG(종가) FROM stock.samsungelec 
WHERE (종가 >= '70000');
SELECT * FROM stock.samsungelec;

