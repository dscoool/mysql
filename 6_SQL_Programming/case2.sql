## 예제 - 교재 '혼자공부하는 SQL' p.206

SELECT mem_id, SUM(price*amount) "총구매액"
   FROM buy
   GROUP BY mem_id;
   
SELECT mem_id, SUM(price*amount) "총구매액"
   FROM buy
   GROUP BY mem_id
   ORDER BY SUM(price*amount) DESC ;

SELECT B.mem_id, M.mem_name, SUM(price*amount) "총구매액"
   FROM buy B
         INNER JOIN member M
         ON B.mem_id = M.mem_id
   GROUP BY B.mem_id
   ORDER BY SUM(price*amount) DESC ;


SELECT M.mem_id, M.mem_name, SUM(price*amount) "총구매액"
   FROM buy B
         RIGHT OUTER JOIN member M
         ON B.mem_id = M.mem_id
   GROUP BY M.mem_id
   ORDER BY SUM(price*amount) DESC ;
   

SELECT M.mem_id, M.mem_name, SUM(price*amount) "총구매액",
        CASE  
           WHEN (SUM(price*amount)  >= 1500) THEN '최우수고객'
           WHEN (SUM(price*amount)  >= 1000) THEN '우수고객'
           WHEN (SUM(price*amount) >= 1 ) THEN '일반고객'
           ELSE '유령고객'
        END "회원등급"
   FROM buy B
         RIGHT OUTER JOIN member M
         ON B.mem_id = M.mem_id
   GROUP BY M.mem_id
   ORDER BY SUM(price*amount) DESC ;
