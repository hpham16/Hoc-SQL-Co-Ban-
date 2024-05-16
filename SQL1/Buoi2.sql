--1. L?y t?t c? th�ng tin c� trong b?ng EMPLOYEES
select * from EMPLOYEES
--2. L?y t?t c? th�ng tin c� trong b?ng CUSTOMERS
select * from CUSTOMERS
--3. L?y t?t c? th�ng tin c� trong b?ng ORDERS
select * from ORDERS
--4. L?y t?t c? th�ng tin c� trong b?ng PRODUCTS
select * from PRODUCTS

--1. L?y th�ng tin EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE trong b?ng EMPLOYEES
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE from EMPLOYEES
--2. L?y th�ng tin CUSTOMER_ID, NAME, ADDRESS trong b?ng CUSTOMERS
select CUSTOMER_ID, NAME, ADDRESS from CUSTOMERS
--3. L?y th�ng tin ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN_ID trong b?ng ORDERS
select ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN from ORDERS
--4. L?y th�ng tin PRODUCT_ID, PRODUCT_NAME, DESCRIPTION trong b?ng PRODUCTS
select PRODUCT_ID, PRODUCT_NAME, DESCRIPTION from PRODUCTS


--1. L?y th�ng tin EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRING_DATE v� ??i t�n th�nh ti?ng vi?t l� MA_NHAN_VIEN, TEN_GOI, TEN_HO, THU_DIEN_TU, NGAY_NHAN_VIEC trong b?ng EMPLOYEES
SELECT EMPLOYEE_ID AS "MA_NHAN_VIEN",
FIRST_NAME AS "TEN_GOI",
LAST_NAME AS "TEN_HO",
EMAIL AS 'THU_DIEN_TU',
HIRE_DATE AS 'NGAY_NHAN_VIEC'
FROM EMPLOYEES
--2. L?y th�ng tin CUSTOMER_ID, NAME, ADDRESS v� ??i t�n th�nh ti?ng Vi?t l� MA_KHACH_HANG, TEN_KHACH_HANG, DIA_CHI_KHACH_HANG trong b?ng CUSTOMERS
SELECT
CUSTOMER_ID AS "MA_KHACH_HANG",
 NAME "TEN_KHACH_HANG",
ADDRESS "DIA_CHI_KHACH_HANG"
FROM CUSTOMERS
 
--3. L?y th�ng tin ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN v� ??i t�n th�nh ti?ng Vi?t l� MA_DON_HANG, MA_KHACH_HANG, NGAY_DAT_HANG, NGUOI_BAN trong b?ng ORDERS
SELECT
ORDER_ID AS "MA_DON_HANG",
CUSTOMER_ID AS "MA_KHACH_HANG",
ORDER_DATE AS "NGAY_DAT_HANG",
SALESMAN_ID AS "NGUOI_BAN"
FROM ORDERS
 
 
--4. L?y th�ng tin PRODUCT_ID, PRODUCT_NAME, DESCRIPTION v� ??i t�n th�nh ti?ng Vi?t l� MA_SAN_PHAM, TEN_SAN_PHAM, MO_TA trong b?ng PRODUCTS
SELECT
PRODUCT_ID AS "MA_SAN_PHAM",
PRODUCT_NAME "TEN_SAN_PHAM",
DESCRIPTION "MO_TA"
FROM PRODUCTS
 
------------ SELECT DISTINCT -----------------
--1. L?y ra danh s�ch t?t c? JOB_TITLE trong b?ng EMPLOYEE, m?i JOB_TITLE ch? xu?t hi?n 1 l?n
SELECT DISTINCT JOB_TITLE
FROM EMPLOYEE
 
--2. L?y ra danh s�ch t?t c? FIRST_NAME trong b?ng EMPLOYEE v� ??m b?o m?i FIRST_NAME ch? xu?t hi?n 1 l?n
SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES
 
------------- WHERE Clause AND OR BETWEEN EQUAL, GREATER, LESS--------------------------
--1. T�m th�ng tin nh�n vi�n c� m� nh�n vi�n l� 28
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 28
 
--2. T�m th�ng tin nh�n vi�n c� email nh�n vi�n l� "abigail.palmer@example.com" v� S?T l� "650.505.4876"
SELECT *
FROM EMPLOYEES
WHERE EMAIL = 'abigail.palmer@example.com'
AND PHONE = '650.505.4876'
 
--3. T�m th�ng tin nh�n vi�n c� t�n l� Elliot ho?c H? l� Cooper
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'Elliot'
OR LAST_NAME = 'Cooper'
 
--4. T�m th�ng tin kh�ch h�ng c� CREDIT_LIMIT > 1000
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT > 1000
 
--5. T�m th�ng tin kh�ch h�ng c� CREDIT_LIMIT >= 2000
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT >=2000
 
 
--6. T�m th�ng tin kh�ch h�ng c� CREDIT_LIMIT < 3200
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT <3200
 
--7. T�m th�ng tin kh�ch h�ng c� CREDIT_LIMIT <=2400
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT <= 2400
 
--8. T�m th�ng tin Order c� ORDER_DATE sau ng�y 1/1/2017
-- TO_DATE('2017-01-01', 'YYYY-MM-DD')
SELECT *
FROM ORDERS
WHERE ORDER_DATE > TO_DATE('2017-01-01', 'YYYY-MM-DD')
 
--9. T�m th�ng tin Order c� ORDER trong kho?ng 1/1/2017 v� 1/1/2019 (D�ng 2 c�ch)
SELECT *
FROM ORDERS
WHERE ORDER_DATE >= TO_DATE('2017-01-01', 'YYYY-MM-DD')
AND ORDER_DATE <= TO_DATE('2019-01-01', 'YYYY-MM-DD')
 
SELECT *
FROM ORDERS
WHERE ORDER_DATE BETWEEN TO_DATE('2017-01-01', 'YYYY-MM-DD')
AND TO_DATE('2019-01-01', 'YYYY-MM-DD')
 
 
----------------- WILDCARD/ UPPER/ LOWER--------------------------
--1. T�m th�ng tin kh�ch h�ng c� t�n b?t ??u ch�nh x�c b?ng "American"
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE 'American%'
 
--2. T�m th�ng tin kh�ch h�ng c� t�n k?t th�c ch�nh x�c b?ng "Corp."
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '%Corp.'
 
--3. T�m th�ng tin kh�ch h�ng c� t�n ch?a  "bank" ho?c "america"
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '%bank%'
   Or name like'%america%'
 
--4. T�m th�ng tin kh�ch h�ng c� t�n b?t ??u b?ng "I" v� c� 3 k� t? (3 k� t? bao g?m c? I)
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE 'I__'
 
--5. T�m th�ng tin kh�ch h�ng c� t�n k?t th�c b?ng "P" v� c� 2 k� t? (2 k� t? bao g?m c? P)
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '_P'
 
--6. T�m th�ng tin kh�ch h�ng c� t�n ch?a "n" ? v? tr� th? 2
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '_n%'
 
 
------------------ IN-------------------------------
--1. T�m th�ng tin s?n ph?m c� t�n trong list
--(
--G.Skill Ripjaws V Series,
--ASRock X99 Extreme11,
--Intel Xeon E5-2697 V2
--)
 
SELECT *
FROM PRODUCTS
WHERE PRODUCT_NAME IN
(
'G.Skill Ripjaws V Series',
'ASRock X99 Extreme11',
'Intel Xeon E5-2697 V2')
 
--2. T�m th�ng tin s?n ph?m kh�ng c� trong list
--(
--Corsair Vengeance LPX
--Corsair Dominator Platinum
--G.Skill Ripjaws V Series
--Kingston
--Supermicro X10SDV-8C-TLN4F
--Intel DP35DPM
--Asus X99-E-10G WS
--Asus ROG MAXIMUS IX EXTREME
SELECT *
FROM PRODUCTS
WHERE PRODUCT_NAME IN
(
'Corsair Dominator Platinum',
'G.Skill Ripjaws V Series',
'Corsair Vengeance LPX',
'Kingston',
'Supermicro X10SDV-8C-TLN4F',
'Intel DP35DPM',
'Asus X99-E-10G WS',
'Asus ROG MAXIMUS IX EXTREME'
)



--B�I T?P V? NH�
--C�ng ty A ?ang  c?n x�y d?ng b�o c�o cho qu� 1/2021. S? d?ng l?nh SQL ?? l?y ra c�c b�o c�o sau:
--
--L?y ra t?t c? c�c s?n ph?m m� c�ng ty ?ang c�
select * from  products
--L?y ra t�n c?a s?n ph?m c� ID s?n ph?m (PRODUCT_ID) = 225
select product_name from products where product_id = 225
--L?y ra t?t c? c�c s?n ph?m c� chi phi ??nh m?c (STANDARD_COST) l?n h?n 300
select * from products where standard_cost > 300
--L?y ra t?t c? c�c s?n ph?m c� chi phi ??nh m?c (STANDARD_COST) kh�c 500
select * from products where standard_cost >< 500
--L?y ra t?t c? c�c s?n ph?m c� gi� ni�m y?t (LIST_PRICE) trong kho?ng t? 300 t?i 700
select * from products where list_price > 300 and list_price < 700
select * from products where list_price between 300 and 700
--L?y ra t?t c? c�c s?n ph?m c� t�n l� �G.Skill Trident Z� v� c� chi phi ??nh m?c (STANDARD_COST) l?n h?n 500 
select * from products where product_name = 'G.Skill Trident Z' 
                        and standard_cost > 500
--L?y ra t?t c? c�c s?n ph?m c� t�n l� �Corsair Dominator Platinum� v� c� chi phi ??nh m?c (STANDARD_COST) l?n h?n ho?c b?ng  600 v� gi� ni�m y?t (LIST_PRICE) > 700
select * from products where product_name = 'Corsair Dominator Platinum' 
                        and standard_cost >= 600
                        and list_price > 700
--L?y ra t?t c? c�c s?n ph?m c� m� s?n ph?m c� gi� nh? h?n 500 
select * from products where product_id < 500
--L?y ra c�c s?n ph?m c� t�n s?n ph?m c� ch?a t? kh�a l� �Kingston�
select * from products where product_name LIKE '%Kingston%'                                  
--L?y ra c�c s?n ph?m c� t�n b?t ??u b?ng �G.Skill� v� gi� ni�m y?t (LIST_PRICE) > 650
select * from products where product_name LIKE '%G.Skill' and LIST_PRICE > 650                                
--L?y ra c�c s?n ph?m c� t�n k?t th�c b?ng �Series� v� c� m� t? s?n ph?m (DESCRIPTION) c� ch?a t? kh�a l� �128GB�
select * from products where product_name LIKE '%Series' 
                        and DESCRIPTION LIKE '%128GB%'
--L?y ra t?t c? c�c s?n ph?m b?t ??u b?ng ch? �C� v� c� 7 k� t? (Bao g?m c? ch? C) v� gi� ni�m y?t (LIST_PRICE) kh�c 700
select * from products where product_name LIKE 'C_______' 
                        and List_price >< 700
--L?y ra t?t c? c�c s?n ph?m c� gi� ni�m y?t (LIST_PRICE) l?n l??t l� 2200, 1850, 1756, 1249
select * from products where List_price in (2200, 1850, 1756, 1249)
--
---- S? d?ng b?ng ORDER
--L?y ra t?t c? nh?ng ??n h�ng ?� b�n trong n?m 2017
select * from orders where extract(year from order_date) = 2017
--L?y ra t?t c? nh?ng ??n h�ng ?� b�n t? n?m 2016 ??n n?m 2017	
select * from orders where extract(year from order_date) between 2016 and 2017
--L?y t?t c? nh?ng ??n h�ng c� ng�y ??t h�ng (ORDER_DATE) l?n h?n ng�y �2017-02-17�
select * 
from orders 
where order_date > to_date('2017-02-17', 'YYYY-MM-DD')

SELECT *
FROM orders
WHERE order_date > DATE '2017-02-17';
--L?y t?t c? nh?ng ??n h�ng c� ng�y ??t h�ng (ORDER_DATE) l� ng�y �2017-02-17� v� tr?ng th�i ??n h�ng (STATUS) l� �Shipped�
SELECT *
FROM ORDERS
WHERE ORDER_DATE = TO_DATE('2017-02-17','yyyy-mm-dd')
AND STATUS = 'Shipped'
--
--L?y t?t c? nh?ng ??n h�ng c� ng�y ??t h�ng (ORDER_DATE) l� ng�y �2017-02-17� s?p x?p theo t?ng ti?n h�ng (TOTAL) theo th? t? t?ng d?n 
SELECT *
FROM ORDERS
WHERE ORDER_DATE = TO_DATE('2017-02-17','yyyy-mm-dd')
order by total asc
--L?y t?t c? nh?ng ??n h�ng c� ng�y ??t h�ng (ORDER_DATE) kh�c ng�y �2017-08-15� s?p x?p theo t?ng ti?n h�ng (TOTAL) theo th? t? gi?m d?n 
SELECT *
FROM ORDERS
WHERE ORDER_DATE >< TO_DATE('2017-08-15','yyyy-mm-dd')
order by total desc
--L?y t?t c? nh?ng ??n h�ng m� c� tr?ng th�i ??n h�ng (STATUS)  l� �Pending� v� �Shipped� v� c� t?ng ti?n h�ng (TOTAL) l?n h?n 400000. S?p x?p theo th? t? t?ng d?n c?a ng�y ??t h�ng (ORDER_DATE).
SELECT *
FROM ORDERS
WHERE status in ('Pending','Shipped')
and total > 400000
order by order_date asc

SELECT *
FROM ORDERS
WHERE (STATUS = 'Pending' OR STATUS = 'Shipped')
AND TOTAL > 400000
ORDER BY ORDER_DATE ASC