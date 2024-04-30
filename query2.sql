SELECT * FROM db.table05;
use db;
select * from table05; #테이블 생성

CREATE TABLE `db`.`table05` (
  `Country_id` INT NOT NULL AUTO_INCREMENT,
  `Country_name` VARCHAR(45) NULL,
  `Capital` VARCHAR(100) NULL,
  `Official_native_language` VARCHAR(250) NULL,
  PRIMARY KEY (`Country_id`))
COMMENT = 'INT - 숫자\nVARCHAR - 문자(45 byte 미만)\n한글의 경우 2byte - VARCHAR(100) - 한글은 50자까지 수용가능\n45byte - 22.5자 - 22자 정도 limit';

INSERT INTO table05 
(Country_name, Capital, 
Official_native_language) 
VALUES 
('미국', '워싱턴', '영어');

UPDATE table05
SET Official_native_language = '로만시어, 
독일어, 프랑스어, 이탈리아어'
WHERE (Country_id = '4');

INSERT INTO `db`.`table05` (`Country_name`, `Capital`, `Official_native_language`) VALUES ('독일', '베를린', '독일어');
INSERT INTO `db`.`table05` (`Country_name`, `Capital`, `Official_native_language`) VALUES ('프랑스', '파리', '프랑스어');
INSERT INTO `db`.`table05` (`Country_name`, `Capital`, `Official_native_language`) VALUES ('스위스', '베른', '스위스어, 독일어, 프랑스어, 로만어');
