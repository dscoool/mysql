DROP PROCEDURE IF EXISTS function_if; -- 기존에 만든적이 있다면 삭제
DELIMITER $$
CREATE PROCEDURE function_if()
BEGIN
   IF 100 = 100 THEN  
      SELECT 'True';
   END IF;
END $$
DELIMITER ;

CALL function_if();