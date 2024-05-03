SELECT * FROM db.enroll_info;

DELETE FROM db.enroll_info
WHERE (`연번` = '22919');

DELETE FROM db.enroll_info
WHERE (연번 = '22920');

SELECT * FROM db.enroll_info
WHERE (연번 >= 22910); #조건문 WHERE (A>B)

SELECT * FROM db.enroll_info
WHERE (`총공사금액(억원)` = 3364.2); #조건문 WHERE (A>B)

-- CREATE VIEW construction AS
CREATE VIEW construction AS # VIEW 생성 
SELECT * FROM db.enroll_info
WHERE (`총공사금액(억원)` >= 3000); #조건문 WHERE (A>B)

-- -> 결과를  VIEW로 저장

SELECT * FROM db.enroll_info
WHERE (`총공사금액(억원)` >= 3000) 
AND (`총공사금액(억원)` <= 5000); #조건문 WHERE (A>B)


SELECT * FROM db.enroll_info
WHERE (총공사금액 >= 10); #조건문 WHERE (A>B)

SELECT * FROM db.enroll_info
WHERE (총공사금액 >= 10 and 총공사금액 <= 20); #조건문 WHERE (A>B)
