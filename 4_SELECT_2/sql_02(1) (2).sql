SELECT * FROM cctv.wifi;

SELECT count(*) FROM cctv.wifi;

USE CCTV;

INSERT INTO cctv.wifi (`Location`, `Loc_detail`,
  `State`, `District`, `Type`, `Provider`, `SSID`,
  `InstallDD`, `Add1`, `Add2`, `Org`, `Phone`,
  `Latitude`, `Longitude`, `DD`) VALUES ('번2동주민센터',
  '1층민원실','서울특별시', '강북구','관공서','강북구청','PublicWifi@Gangbuk',
  '2012-02', '서울특별시 강북구 솔매로49길 14','서울특별시 강북구 한전로 897','강북구청','02-902-7212',
  '37.6322163', '127.0387405', '2020-06-15');
  
  
SELECT * FROM cctv.wifi;

DELETE FROM `cctv`.`wifi` WHERE (`No`='256');

UPDATE `cctv`.`wifi` SET `add2` = '1F 민원실' WHERE (`No` = '255');

SELECT * FROM cctv.wifi WHERE (`Location` = '보건소');

SELECT * FROM cctv.wifi WHERE (`District` = '강북구');

-- SQL은 대소문자 구분 안함!! (보통 대문자를 씁니다)
select `Location`, `Loc_detail`, `SSID` from cctv.WIFI where (`Location` = '보건소');

-- SELECT * 은 한 줄을 출력할 때 모든 열(COLUMN)을 보여주라는 의미입니다.
-- SELECT `add`, `add2`, `SSID` 와 같이 3개 컬럼만 가져올 수도 있어요!! :)
  
select `Location`, `Loc_detail`, `SSID` from cctv.WIFI where (`Location` = '보건소');

-- 명령문 안에 들어가는 단어 ex: add 가 명령문과 겹치지 않는다면, 좌따옴표 ``를 생략해도 무방합니다!!
 
select `Location`, `Loc_detail`, `SSID` from cctv.WIFI where (`Location` = '보건소');

