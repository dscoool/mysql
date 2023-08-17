-- cctv, wifi 데이터셋 IMPORT (가져오기)
-- 강의게시판에서 내려받기!!cctv2
-- SELECT문 실습!!
SELECT * FROM cctv.cctv; 

-- 컬럼들 중 Org, Add1, Purpose 컬럼만을 출력!! 
SELECT Org, Add1, Purpose FROM cctv.cctv;

-- WHERE문을 통한 조건 조회
-- Camera = 4 인 행을 모두 조회하기!! 
SELECT * FROM cctv.cctv WHERE Camera='4';

-- Purpose = 생활방범 인 행을 모두 조회하기!!
SELECT * FROM cctv.cctv WHERE Purpose='생활방범';

-- Purpose = 생활방범 인 행을 조회하되,
-- `No`, Add1, Add2, Longitude, Latitude 컬럼만을 출력하기!!
SELECT `No`, Add1, Add2, Longitude, Latitude FROM cctv.cctv WHERE Purpose='생활방범';

-- cctv 데이터베이스(스키마)를 사용하도록 설정!! 
USE cctv;

-- 이제 cctv.cctv를 하위 테이블인 cctv로 대체하여 사용 가능!! 
-- Org = '서울특별시 강북구청'인 행을 모두 출력!!
SELECT * FROM cctv WHERE Org = '서울특별시 강북구청';

SELECT * FROM cctv WHERE Org = '서울특별시 강북구청';
-- wifi 데이터 IMPORT
-- wifi TABLE에서 모든 데이터 조회!! 
SELECT * FROM wifi;

-- wifi TABLE에서 District = '강북구'인 모든 행 조회!! 
SELECT * FROM wifi WHERE District = '강북구';

-- wifi TABLE에서 `No`, State, District,
-- `Type`, Longitude, Latitude 컬럼만을 출력!!

SELECT `No`, State, District, `Type`, Longitude, Latitude FROM wifi;

-- wifi 테이블에서 `No` 컬럼의 값이 50 초과인 행만을 출력!!
SELECT * FROM wifi WHERE `No` > 50;

-- wifi 테이블에서 `No` 컬럼의 값이 50 초과 60 이하인 행만을 출력!!
SELECT * FROM wifi WHERE (`No` > 50 AND `No` <= 60);

-- wifi 테이블에서 `No` 컬럼의 값이 60 초과 66 이하인 행만을 출력!!
SELECT * FROM wifi WHERE (`No` > 60 AND `No` <= 66);

-- wifi 테이블에서 District = '강북구' 이고(AND)
-- Loc_detail = '1F 민원실' 인 행을 모두 조회!! 
SELECT * FROM wifi WHERE District = '강북구' AND Loc_detail = '1F 민원실';

-- wifi 테이블에서 Location = '강북문화예술회관' 이거나(OR)
-- Location = '수유문화정보도서관' 인 행을 모두 조회!! 
SELECT * FROM wifi  WHERE Location = '강북문화예술회관' OR Location = '수유문화정보도서관';

-- cctv 테이블에서 Phone = 이 아래 리스트에 있으면 모두 조회!!
-- WHERE Phone IN ('02-2094-0284', '02-2155-6098')
SELECT * FROM cctv WHERE Phone IN ('02-2094-0284', '02-2155-6098');

-- cctv 테이블에서 Add1 = 이 '서울특별시 중랑구'를 포함하고 있으면 모두 조회!!
SELECT * FROM cctv WHERE Add1 LIKE '서울특별시 중랑구';

-- cctv 테이블에서 Phone 컬럼이 '02-2094-'인 항목을 모두 조회!!
-- %는 글자수에 상관없이 쓰입니다.
SELECT * FROM cctv WHERE Phone LIKE '02-2094-%';
SELECT * FROM cctv WHERE Latitude LIKE '37.58%';

-- cctv 테이블에서 DD 컬럼이 '2020-05-??'인 항목을 모두 조회!!
-- underbar(_)는 한 글자를 나타냅니다!!
SELECT * FROM cctv WHERE DD LIKE '2020-05-__';
SELECT * FROM cctv WHERE DD LIKE '2020-05-1_';

