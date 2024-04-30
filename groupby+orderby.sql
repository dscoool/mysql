USE chinook;
SELECT * FROM customer;

SELECT * FROM customer 
order by Email; # 오름차순 기본 정렬
#순차정렬 - 작은거부터 큰거까지 정렬 - 오름차순(기본값)
#      4  - 1 2 3 4 오름차순 = 계단을 올라가기
#    3      ASCENDING = ASC
#  2        DESCENING = DESC
#1  - 4 3 2 1 = 내림차순 = 계단을 내려가기

SELECT * FROM customer 
order by City DESC;

SELECT * FROM chinook.invoice
ORDER BY total DESC; #오름차순 정렬 
# (ASC) 숫자의 크기가 작은 것부터 
# 큰 것까지 정렬
SELECT BillingCity, count(BillingCity)
FROM chinook.invoice #어떤 table에서 데이터를 가져올지(from) 지정
GROUP BY BillingCity; 
#같은 도시끼리 그룹으로 묶습니다. group by



SELECT city_id, count(*) FROM sakila.address group by city_id;