### 1.인덱스 생성:

CREATE INDEX idx_customer_name ON customers (customer_name);

### 2.JOIN 최적화:

SELECT 
    c.customer_id, 
    c.customer_name,
    COUNT(i.invoice_id) AS total_invoices
FROM 
    customers AS c
LEFT JOIN 
    invoices AS i 
    ON c.customer_id = i.customer_id
GROUP BY 
    c.customer_id;

###3. 부하 분산:
SELECT 
    *
FROM 
    (
        SELECT 
            customer_id, 
            customer_name
        FROM 
            customers
    ) AS subquery;

###4. 서브쿼리 최적화:
SELECT 
    e.employee_id, 
    e.first_name,
    (SELECT COUNT(*) FROM orders WHERE employee_id = e.employee_id) AS total_orders
FROM 
    employees AS e;

###5.JOIN 조건 최적화:
SELECT 
    a.album_id, 
    a.title,
    COUNT(t.track_id) AS total_tracks
FROM 
    albums AS a
LEFT JOIN 
    tracks AS t 
    ON a.album_id = t.album_id
GROUP BY 
    a.album_id;

###6. 부분 집합 선택:
SELECT 
    employee_id,
    first_name,
    last_name
FROM 
    employees;

###7. 인라인 뷰 사용:
SELECT 
    *
FROM 
    (
        SELECT 
            customer_id,
            SUM(total) AS total_sales
        FROM 
            invoices
        GROUP BY 
            customer_id
    ) AS subquery
WHERE 
    total_sales > 100;

###8. 인덱스 활용:
SELECT 
    *
FROM 
    invoices 
WHERE 
    invoice_date BETWEEN '2013-01-01' AND '2013-12-31';

###9.서브쿼리 대신 조인 사용:
SELECT 
    e.employee_id, 
    e.first_name,
    COUNT(o.order_id) AS total_orders
FROM 
    employees AS e
LEFT JOIN 
    orders AS o 
    ON e.employee_id = o.employee_id
GROUP BY 
    e.employee_id;
### 10. 중복 제거:

SELECT DISTINCT 
    country 
FROM 
    customers;
