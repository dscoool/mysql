-- 샘플데이터 다운로드
-- parking.csv
-- mobile.csv 

SELECT * FROM cctv.parking;

-- SELECT문으로 데이터 정렬하기 - ORDER BY문
-- parking 테이블에서 'code'열을 지정하여 오름차순(ASC)으로 정렬합니다!!  
SELECT * FROM parking ORDER BY `code`;
SELECT * FROM parking ORDER BY `code` DESC;

-- parking 테이블에서 'amount'열을 지정하여 내림차순(DESC)으로 정렬합니다!!  
SELECT * FROM parking ORDER BY `amount` DESC;
SELECT * FROM parking ORDER BY `amount` ASC;

-- 이번엔 필요한 열을 지정해 볼까요? code, name, add, tel, amount, night_open,
-- price_min, basic_fee 열을 지정해 보도록 하겠습니다!! 
-- 끝에 DESC를 붙이면 내림차순(큰 것부터 감소:DESC)로 정렬하라는 뜻입니다!!

SELECT `code`, `name`, `add`, tel, amount, 
night_open, price_min, basic_fee FROM parking 
ORDER BY `price_min` DESC ;

-- 이번엔 검색한 것 중 상위 20개의 결과만을 가져와 보도록 하겠습니다!!
-- LIMIT 20을 붙여 레코드 20개만 출력합니다!!

SELECT `code`, `name`, `add`, tel, amount, 
night_open, price_min, basic_fee FROM parking 
ORDER BY amount DESC LIMIT 15;

-- LIMIT문을 사용하여 검색된 결과 중 10번째부터 5개만을 가져와 봅니다!!
-- LIMIT 10, 5로 표기합니다!!
 
SELECT `code`, `name`, `add`, tel, amount, 
night_open, price_min, basic_fee FROM parking 
ORDER BY `price_min` DESC LIMIT 10, 5;

SELECT `code`, `name`, `add`, tel, amount, 
night_open, price_min, basic_fee FROM parking 
ORDER BY `price_min` DESC LIMIT 5, 5;
-- LIMIT문을 사용하여 검색된 결과 중 10번째부터 5개만을 가져와 봅니다!!
-- LIMIT 10, 5로 표기합니다!!

SELECT `code`, `name`, `add`, tel, amount, 
night_open, basic_fee FROM parking 
ORDER BY `basic_fee` DESC;

-- 이번에는 monthly_price (정기주차권 가격)행을 내림차순으로 
-- 20개 출력해 보겠습니다!! 
-- DESC 'monthly_price' DESC LIMIT 20 
SELECT * FROM parking ORDER BY `monthly_price` 
DESC LIMIT 20;

-- DISTINCT: 옵션값 중 중복된 것을 정리하여 종류별로 보여주는 법 
SELECT DISTINCT type_name from parking;
SELECT DISTINCT holiday_free_name from parking;

select * from parking; 
-- (50min break)
-- ------------------------------------------------------------
-- SELECT문으로 데이터 정렬하기 - GROUP BY문
SELECT type_name, SUM(amount) FROM parking 
GROUP BY type_name;

SELECT price_min, SUM(amount) FROM parking 
GROUP BY price_min ORDER BY price_min ASC;

-- 복잡하게 짜둔 쿼리를 다음에 불러오고 싶을 때!! 
-- CREATE VIEW 사용
--   
CREATE VIEW parking1 AS
SELECT `code`, `name`, `add`, tel, amount, 
night_open, basic_fee FROM parking ORDER BY `basic_fee` DESC;

-- 이와 같이 입력하고 좌측 메뉴의 'VIEW'에서 우클릭 -> 3번째 버튼 클릭!!
-- 저장되었던 VIEW가 아래 출력됩니다. :)
--   

SELECT * from cctv.parking1;
-- 즉 VIEW는 테이블을 이리저리 검색한 것을
-- 바로 불러올 수 있도록 저장해 둔 것입니다!!
 

-- mobile.csv DATA IMPORT!! 
-- DATASET url: 
-- https://www.kaggle.com/datasets/iabhishekofficial/mobile-price-classification
-- 평균값 구해 보기!!

SELECT * FROM cctv.mobile;

-- blue : 블루투스 여부 clock_speed: 마이크로프로세서 속도
-- fc: front camera
-- four_g : 4G 여부
-- m_dep : 두께 cm
-- mobile_wt : 기기 무게
-- px_height :세로 픽셀(화소) 수
-- px_width : 가로 픽셀(화소) 수  

USE CCTV;

-- 모바일폰의 크기에 따른 GROUP BY 정렬
-- 크기별로 그룹을 나누어 GROUP BY문으로
-- 사양을 정렬해 봅니다!!  
SELECT m_dep, mobile_wt, n_cores, pc, 
px_height, px_width, ram
FROM mobile GROUP BY m_dep  
ORDER BY m_dep;

-- 모바일폰의 크기에 따른 GROUP BY 정렬
-- 크기별로 그룹을 나누어 GROUP BY문으로
-- 사양을 정렬해 봅니다!! 
-- 여기에 AVG(RAM) 항목을 입력하여 평균을 
-- 구해 봅니다!! 
SELECT m_dep, mobile_wt, n_cores, pc, 
px_height, px_width, ram, AVG(RAM)
FROM mobile GROUP BY m_dep;

-- 해당 내용을 VIEW로 저장해 보겠습니다!! 
CREATE VIEW mobile1 AS
SELECT m_dep, mobile_wt, n_cores, pc, 
px_height, px_width, ram, AVG(RAM)
FROM mobile GROUP BY m_dep;

-- VIEW는 아래와 같이 불러올 수 있습니다!!
-- 좌측의 'TABLE' 탭 아래 'VIEW'에 나타나요!!
-- TABLE은 읽고 쓰기가 가능하지만 VIEW는 
-- TABLE의 해석이므로 읽기만 가능합니다!!    
SELECT * FROM mobile1;

-- AVG함수로 평균 내어 보기!!
-- 모바일의 크기(depth)별로 그룹을 나누어, 
-- RAM, px_height, px_width의 평균값을 구해 봅니다!!  
SELECT m_dep, mobile_wt, n_cores, pc, px_height, 
px_width, ram, 
AVG(RAM), AVG(px_height), AVG(px_width)

FROM mobile GROUP BY m_dep;

-- COUNT 함수로 각 그룹의 숫자 세어 보기!! 
SELECT m_dep, mobile_wt, n_cores, 
pc, px_height, px_width, ram,
COUNT(m_dep)
FROM mobile GROUP BY m_dep;


-- HAVING 함수로 조건문 검색 하기!! 
-- 아래와 같이 했을 때 WHERE 조건문으로 에러!! 
-- (AVG부분 조건이 너무 복잡!!) 
SELECT * from mobile WHERE AVG(sc_h * sc_w) > 50;-- 

-- 이럴 경우에는 HAVING 조건문 사용!! 
SELECT * from mobile GROUP BY clock_speed
HAVING AVG(clock_speed * n_cores) > 4.4;
select * from mobile;

