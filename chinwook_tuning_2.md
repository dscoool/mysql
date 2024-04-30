### 11. 부분 인덱스 생성:
```
CREATE INDEX idx_album_title ON albums (title(20));
```

### 12. 인덱스 추가:
```
ALTER TABLE 
    customers
ADD INDEX 
    idx_country (country);
```
### 13. UNION 대신 UNION ALL 사용:
```
SELECT 
    customer_id, 
    customer_name 
FROM 
    customers
UNION ALL
SELECT 
    employee_id, 
    first_name 
FROM 
    employees;
````
### 14. 가상 테이블 생성:
```
WITH 
    top_customers AS (
        SELECT 
            customer_id, 
            COUNT(*) AS total_invoices
        FROM 
            invoices
        GROUP BY 
            customer_id
        ORDER BY 
            total_invoices DESC
        LIMIT 10
    )
SELECT 
    c.customer_id, 
    c.customer_name
FROM 
    top_customers AS tc
JOIN 
    customers AS c 
    ON tc.customer_id = c.customer_id;
```
### 15. 조건 분해:
```
SELECT 
    *
FROM 
    invoices
WHERE 
    billing_country = 'USA' OR billing_country = 'Canada';
```
### 16. LIMIT 사용:
```
SELECT 
    *
FROM 
    invoices
ORDER BY 
    invoice_date DESC
LIMIT 10;
```
### 17. COUNT 대신 EXISTS 사용:
```
SELECT 
    *
FROM 
    customers AS c
WHERE 
    EXISTS (SELECT * FROM invoices AS i WHERE i.customer_id = c.customer_id);
```
### 18. 부분집합 선택 및 인덱스 활용:
```
SELECT 
    *
FROM 
    customers
WHERE 
    customer_name LIKE 'A%'
    AND country = 'USA';
```
### 19. 계산 최소화:
```
SELECT 
    customer_id, 
    SUM(total) AS total_spent
FROM 
    invoices
GROUP BY 
    customer_id;
```
### 19. GROUP BY 최적화:
```
SELECT 
    album_id, 
    MAX(unit_price) AS max_price
FROM 
    invoice_items
GROUP BY 
    album_id;
```
