DROP PROCEDURE IF EXISTS func; -- 기존에 만든적이 있다면 삭제
DELIMITER $$
CREATE PROCEDURE func()
BEGIN
   IF 100 = 100 THEN  
      SELECT 'True'; #print
   ELSE
      SELECT 'False';
   END IF;
END $$
DELIMITER ;
CALL func(); #스토어드 프로시저 #sql 반복 작업 조건문 등을 실행할 때 사용합니다.