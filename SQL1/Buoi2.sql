--1. L?y t?t c? thông tin có trong b?ng EMPLOYEES
select * from EMPLOYEES
--2. L?y t?t c? thông tin có trong b?ng CUSTOMERS
select * from CUSTOMERS
--3. L?y t?t c? thông tin có trong b?ng ORDERS
select * from ORDERS
--4. L?y t?t c? thông tin có trong b?ng PRODUCTS
select * from PRODUCTS

--1. L?y thông tin EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE trong b?ng EMPLOYEES
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE from EMPLOYEES
--2. L?y thông tin CUSTOMER_ID, NAME, ADDRESS trong b?ng CUSTOMERS
select CUSTOMER_ID, NAME, ADDRESS from CUSTOMERS
--3. L?y thông tin ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN_ID trong b?ng ORDERS
select ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN from ORDERS
--4. L?y thông tin PRODUCT_ID, PRODUCT_NAME, DESCRIPTION trong b?ng PRODUCTS
select PRODUCT_ID, PRODUCT_NAME, DESCRIPTION from PRODUCTS


--1. L?y thông tin EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRING_DATE và ??i tên thành ti?ng vi?t là MA_NHAN_VIEN, TEN_GOI, TEN_HO, THU_DIEN_TU, NGAY_NHAN_VIEC trong b?ng EMPLOYEES
SELECT EMPLOYEE_ID AS "MA_NHAN_VIEN",
FIRST_NAME AS "TEN_GOI",
LAST_NAME AS "TEN_HO",
EMAIL AS 'THU_DIEN_TU',
HIRE_DATE AS 'NGAY_NHAN_VIEC'
FROM EMPLOYEES
--2. L?y thông tin CUSTOMER_ID, NAME, ADDRESS và ??i tên thành ti?ng Vi?t là MA_KHACH_HANG, TEN_KHACH_HANG, DIA_CHI_KHACH_HANG trong b?ng CUSTOMERS
SELECT
CUSTOMER_ID AS "MA_KHACH_HANG",
 NAME "TEN_KHACH_HANG",
ADDRESS "DIA_CHI_KHACH_HANG"
FROM CUSTOMERS
 
--3. L?y thông tin ORDER_ID, CUSTOMER_ID, ORDER_DATE, SALE_MAN và ??i tên thành ti?ng Vi?t là MA_DON_HANG, MA_KHACH_HANG, NGAY_DAT_HANG, NGUOI_BAN trong b?ng ORDERS
SELECT
ORDER_ID AS "MA_DON_HANG",
CUSTOMER_ID AS "MA_KHACH_HANG",
ORDER_DATE AS "NGAY_DAT_HANG",
SALESMAN_ID AS "NGUOI_BAN"
FROM ORDERS
 
 
--4. L?y thông tin PRODUCT_ID, PRODUCT_NAME, DESCRIPTION và ??i tên thành ti?ng Vi?t là MA_SAN_PHAM, TEN_SAN_PHAM, MO_TA trong b?ng PRODUCTS
SELECT
PRODUCT_ID AS "MA_SAN_PHAM",
PRODUCT_NAME "TEN_SAN_PHAM",
DESCRIPTION "MO_TA"
FROM PRODUCTS
 
------------ SELECT DISTINCT -----------------
--1. L?y ra danh sách t?t c? JOB_TITLE trong b?ng EMPLOYEE, m?i JOB_TITLE ch? xu?t hi?n 1 l?n
SELECT DISTINCT JOB_TITLE
FROM EMPLOYEE
 
--2. L?y ra danh sách t?t c? FIRST_NAME trong b?ng EMPLOYEE và ??m b?o m?i FIRST_NAME ch? xu?t hi?n 1 l?n
SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES
 
------------- WHERE Clause AND OR BETWEEN EQUAL, GREATER, LESS--------------------------
--1. Tìm thông tin nhân viên có mã nhân viên là 28
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 28
 
--2. Tìm thông tin nhân viên có email nhân viên là "abigail.palmer@example.com" và S?T là "650.505.4876"
SELECT *
FROM EMPLOYEES
WHERE EMAIL = 'abigail.palmer@example.com'
AND PHONE = '650.505.4876'
 
--3. Tìm thông tin nhân viên có tên là Elliot ho?c H? là Cooper
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'Elliot'
OR LAST_NAME = 'Cooper'
 
--4. Tìm thông tin khách hàng có CREDIT_LIMIT > 1000
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT > 1000
 
--5. Tìm thông tin khách hàng có CREDIT_LIMIT >= 2000
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT >=2000
 
 
--6. Tìm thông tin khách hàng có CREDIT_LIMIT < 3200
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT <3200
 
--7. Tìm thông tin khách hàng có CREDIT_LIMIT <=2400
SELECT *
FROM CUSTOMERS
WHERE CREDIT_LIMIT <= 2400
 
--8. Tìm thông tin Order có ORDER_DATE sau ngày 1/1/2017
-- TO_DATE('2017-01-01', 'YYYY-MM-DD')
SELECT *
FROM ORDERS
WHERE ORDER_DATE > TO_DATE('2017-01-01', 'YYYY-MM-DD')
 
--9. Tìm thông tin Order có ORDER trong kho?ng 1/1/2017 và 1/1/2019 (Dùng 2 cách)
SELECT *
FROM ORDERS
WHERE ORDER_DATE >= TO_DATE('2017-01-01', 'YYYY-MM-DD')
AND ORDER_DATE <= TO_DATE('2019-01-01', 'YYYY-MM-DD')
 
SELECT *
FROM ORDERS
WHERE ORDER_DATE BETWEEN TO_DATE('2017-01-01', 'YYYY-MM-DD')
AND TO_DATE('2019-01-01', 'YYYY-MM-DD')
 
 
----------------- WILDCARD/ UPPER/ LOWER--------------------------
--1. Tìm thông tin khách hàng có tên b?t ??u chính xác b?ng "American"
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE 'American%'
 
--2. Tìm thông tin khách hàng có tên k?t thúc chính xác b?ng "Corp."
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '%Corp.'
 
--3. Tìm thông tin khách hàng có tên ch?a  "bank" ho?c "america"
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '%bank%'
   Or name like'%america%'
 
--4. Tìm thông tin khách hàng có tên b?t ??u b?ng "I" và có 3 ký t? (3 ký t? bao g?m c? I)
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE 'I__'
 
--5. Tìm thông tin khách hàng có tên k?t thúc b?ng "P" và có 2 ký t? (2 ký t? bao g?m c? P)
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '_P'
 
--6. Tìm thông tin khách hàng có tên ch?a "n" ? v? trí th? 2
SELECT *
FROM CUSTOMERS
WHERE NAME LIKE '_n%'
 
 
------------------ IN-------------------------------
--1. Tìm thông tin s?n ph?m có tên trong list
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
 
--2. Tìm thông tin s?n ph?m không có trong list
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



--BÀI T?P V? NHÀ
--Công ty A ?ang  c?n xây d?ng báo cáo cho quý 1/2021. S? d?ng l?nh SQL ?? l?y ra các báo cáo sau:
--
--L?y ra t?t c? các s?n ph?m mà công ty ?ang có
select * from  products
--L?y ra tên c?a s?n ph?m có ID s?n ph?m (PRODUCT_ID) = 225
select product_name from products where product_id = 225
--L?y ra t?t c? các s?n ph?m có chi phi ??nh m?c (STANDARD_COST) l?n h?n 300
select * from products where standard_cost > 300
--L?y ra t?t c? các s?n ph?m có chi phi ??nh m?c (STANDARD_COST) khác 500
select * from products where standard_cost >< 500
--L?y ra t?t c? các s?n ph?m có giá niêm y?t (LIST_PRICE) trong kho?ng t? 300 t?i 700
select * from products where list_price > 300 and list_price < 700
select * from products where list_price between 300 and 700
--L?y ra t?t c? các s?n ph?m có tên là ‘G.Skill Trident Z’ và có chi phi ??nh m?c (STANDARD_COST) l?n h?n 500 
select * from products where product_name = 'G.Skill Trident Z' 
                        and standard_cost > 500
--L?y ra t?t c? các s?n ph?m có tên là ‘Corsair Dominator Platinum’ và có chi phi ??nh m?c (STANDARD_COST) l?n h?n ho?c b?ng  600 và giá niêm y?t (LIST_PRICE) > 700
select * from products where product_name = 'Corsair Dominator Platinum' 
                        and standard_cost >= 600
                        and list_price > 700
--L?y ra t?t c? các s?n ph?m có mã s?n ph?m có giá nh? h?n 500 
select * from products where product_id < 500
--L?y ra các s?n ph?m có tên s?n ph?m có ch?a t? khóa là ‘Kingston’
select * from products where product_name LIKE '%Kingston%'                                  
--L?y ra các s?n ph?m có tên b?t ??u b?ng ‘G.Skill’ và giá niêm y?t (LIST_PRICE) > 650
select * from products where product_name LIKE '%G.Skill' and LIST_PRICE > 650                                
--L?y ra các s?n ph?m có tên k?t thúc b?ng ‘Series’ và có mô t? s?n ph?m (DESCRIPTION) có ch?a t? khóa là ‘128GB’
select * from products where product_name LIKE '%Series' 
                        and DESCRIPTION LIKE '%128GB%'
--L?y ra t?t c? các s?n ph?m b?t ??u b?ng ch? ‘C’ và có 7 ký t? (Bao g?m c? ch? C) và giá niêm y?t (LIST_PRICE) khác 700
select * from products where product_name LIKE 'C_______' 
                        and List_price >< 700
--L?y ra t?t c? các s?n ph?m có giá niêm y?t (LIST_PRICE) l?n l??t là 2200, 1850, 1756, 1249
select * from products where List_price in (2200, 1850, 1756, 1249)
--
---- S? d?ng b?ng ORDER
--L?y ra t?t c? nh?ng ??n hàng ?ã bán trong n?m 2017
select * from orders where extract(year from order_date) = 2017
--L?y ra t?t c? nh?ng ??n hàng ?ã bán t? n?m 2016 ??n n?m 2017	
select * from orders where extract(year from order_date) between 2016 and 2017
--L?y t?t c? nh?ng ??n hàng có ngày ??t hàng (ORDER_DATE) l?n h?n ngày ‘2017-02-17’
select * 
from orders 
where order_date > to_date('2017-02-17', 'YYYY-MM-DD')

SELECT *
FROM orders
WHERE order_date > DATE '2017-02-17';
--L?y t?t c? nh?ng ??n hàng có ngày ??t hàng (ORDER_DATE) là ngày ‘2017-02-17’ và tr?ng thái ??n hàng (STATUS) là ‘Shipped’
SELECT *
FROM ORDERS
WHERE ORDER_DATE = TO_DATE('2017-02-17','yyyy-mm-dd')
AND STATUS = 'Shipped'
--
--L?y t?t c? nh?ng ??n hàng có ngày ??t hàng (ORDER_DATE) là ngày ‘2017-02-17’ s?p x?p theo t?ng ti?n hàng (TOTAL) theo th? t? t?ng d?n 
SELECT *
FROM ORDERS
WHERE ORDER_DATE = TO_DATE('2017-02-17','yyyy-mm-dd')
order by total asc
--L?y t?t c? nh?ng ??n hàng có ngày ??t hàng (ORDER_DATE) khác ngày ‘2017-08-15’ s?p x?p theo t?ng ti?n hàng (TOTAL) theo th? t? gi?m d?n 
SELECT *
FROM ORDERS
WHERE ORDER_DATE >< TO_DATE('2017-08-15','yyyy-mm-dd')
order by total desc
--L?y t?t c? nh?ng ??n hàng mà có tr?ng thái ??n hàng (STATUS)  là ‘Pending’ và ‘Shipped’ và có t?ng ti?n hàng (TOTAL) l?n h?n 400000. S?p x?p theo th? t? t?ng d?n c?a ngày ??t hàng (ORDER_DATE).
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