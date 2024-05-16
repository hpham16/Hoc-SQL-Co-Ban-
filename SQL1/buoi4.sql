----- SUM, MAX, MIN, AVG, COUNT, HAVING
--L?y ra t?t c? th�ng tin c?a c�c kh�ch h�ng. 
--(Y�u c?u: Chuy?n ??i T�n c?a kh�ch h�ng th�nh ch? Hoa, ??a ch? th�nh ch? th??ng)
SELECT CUSTOMER_ID, UPPER(NAME), LOWER(ADDRESS), WEBSITE, CREDIT_LIMIT 
FROM CUSTOMERS;
--T�nh t?ng gi� tr?, gi� tr? l?n nh?t, gi� tr? nh? nh?t, gi� tr? trung b�nh c�c ??n h�ng
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS;
--T�nh gi� tr? trung b�nh c?a t?t c? c�c ??n h�ng ???c b�n ra trong n?m 2016 
SELECT AVG(TOTAL)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2016;
--T�nh t?ng doanh thu b�n h�ng t? n?m 2016 ??n n?m 2017
SELECT SUM(TOTAL)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) between 2016 and 2017;
--T�nh t?ng gi� tr?, gi� tr? l?n nh?t, gi� tr? nh? nh?t, gi� tr? trung b�nh c�c ??n h�ng c� status = "Pending"
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Pending';
--T�nh t?ng gi� tr?, gi� tr? l?n nh?t, gi� tr? nh? nh?t, gi� tr? trung b�nh c�c ??n h�ng c� status = "Shipped" v� ng�y order >= 1/1/2017
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Shipped'
AND ORDER_DATE > TO_DATE('01/01/2017','DD/MM/YYYY');
--T�nh t?ng gi� tr? (L�m tr�n ??n s? th?p ph�n th? nh?t), gi� tr? l?n nh?t, gi� tr? nh? nh?t, gi� tr? trung b�nh c?a c�c ??n h�ng c� status = "Shipped" v� ng�y order >= 1/1/2017
SELECT ROUND(SUM(TOTAL),1), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Shipped'
AND ORDER_DATE > TO_DATE('1/1/2017','DD/MM/YYYY');
--L?y ra M� c�c kh�ch h�ng c� tr�n 4 l?n mua h�ng th�nh c�ng (status = "Shipped"). 
SELECT CUSTOMER_ID, COUNT(ORDER_ID)
FROM ORDERS
WHERE status = 'Shipped'
GROUP BY customer_id
HAVING COUNT(ORDER_ID) > 4
--L?y ra M� c�c kh�ch h�ng c� t?ng s? ??n mua h�ng trong n?m 2017 l?n h?n 2 ??n
SELECT CUSTOMER_ID, COUNT(ORDER_ID)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY customer_id
HAVING COUNT(ORDER_ID) > 2
--L?y ra t?ng gi� b�n (list_price), gi� tr? b�n l?n nh?t, gi� tr? b�n nh? nh?t, gi� tr? b�n trung b�nh theo t?ng ID danh m?c s?n ph?m (category_id)
SELECT SUM(LIST_PRICE), MAX(LIST_PRICE),MIN(LIST_PRICE), AVG(LIST_PRICE)
FROM PRODUCTS
GROUP BY CATEgory_id

--T�nh t?ng doanh thu theo t?ng th�ng trong n?m 2017
SELECT EXTRACT(month FROM ORDER_DATE), sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY EXTRACT(month FROM ORDER_DATE)
order by EXTRACT(month FROM ORDER_DATE);
--T�nh t?ng doanh thu theo t?ng th�ng, t?ng n?m t??ng ?ng. T�nh t? n?m 2016 ??n n?m 2017
SELECT EXTRACT(month FROM ORDER_DATE) as Thang, EXTRACT(Year FROM ORDER_DATE) as Nam , sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) between 2016 and 2017
GROUP BY EXTRACT(month FROM ORDER_DATE), EXTRACT(Year FROM ORDER_DATE)
order by Nam, Thang;
--T�m ra Top 3 kh�ch h�ng c� doanh thu cao nh?t trong n?m 2017 (S?p x?p theo th? t? gi?m d?n)
--    G?i �: (H�m l?y Top: FETCH FIRST n ROWS ONLY (n: S? d�ng mu?n l?y))
SELECT customer_Id , sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY customer_id
order by sum(total) desc
FETCH FIRST 3 ROWS ONLY
--T�m ra Top 3 s?n ph?m c� t?ng s? l??ng b�n ra th?p nh?t 
SELECT customer_Id , sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY customer_id
order by sum(total) 
FETCH FIRST 3 ROWS ONLY
--
--
--
--
--B�I T?P V? NH�
--
--L?y ra t?t c? nh?ng s?n ph?m m� c�ng ty ?ang b�n (Chu?n h�a l?i t�n s?n ph?m: Chuy?n ??i t?t c? c�c k� t? ??u c?a m?i t? sang hoa, c�c k� t? c�n l?i sang ch? th??ng ). (G?i �: S? d?ng h�m INITCAP())	
select initcap(product_name) 
from products
--L?y ra t?t c? c�c s?n ph?m bao g?m: T�n s?n ph?m, m� t? (X�a t?t c? k� t? �Speed:� n?m b�n tr�i) c?a s?n ph?m c� m� t? s?n ph?m (description) b?t ??u b?ng �Speed�  (G?i �: D�ng H�m LTRIM())
--     V� d?: Speed:DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB ? DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB
select product_name, ltrim(description, 'Speed:')
from products
--L?y ra t?t c? c�c s?n ph?m bao g?m: T�n s?n ph?m, H�ng (C?t n�y ???c l?y b?ng c�ch C?t l?y 5 k� t? ??u c?a t�n s?n ph?m) c?a s?n ph?m b?t ??u �Intel� (G?i �: D�ng H�m SUBSTR())
--     V� d?: Intel Xeon E5-2687W ? Intel
select product_name, substr(product_name, 1, 5)
from products
--L?y ra t?t c? th�ng tin s?n ph?m c� ?? d�i k� t? c?a t�n s?n ph?m < 12 k� t? (G?i �: D�ng H�m LENGTH())
select product_name, length(product_name) as Length_name
from products
where length(product_name) > 12;
--L?y ra b�o c�o t?ng gi� tr? ??n h�ng ?� mua (status = "Shipped") c?a c�c kh�ch h�ng theo t?ng n?m, 
--S?p x?p theo th? t? m� kh�ch h�ng, n?m mua h�ng. (G?i � s? d?ng h�m: EXTRACT())
select customer_id, extract (year from order_date) as nam, sum(total)
from orders 
where status = 'Shipped'
group by customer_id,  extract (year from order_date)
order by customer_id,  nam;
--L?y ra b�o c�o t?ng gi� tr? ??n h�ng ch?a giao(status = "Pending") c?a c�c kh�ch h�ng trong v�ng 3 th�ng 
--tr??c t�nh t? ng�y �2017/03/14' , S?p x?p theo m� kh�ch h�ng, t?ng gi� tr? ??n ch?a giao.  
--(G?i � s? d?ng h�m: ADD_MONTHS ())
select customer_id,  sum(total)
from orders 
where status = 'Pending' and
order_date BETWEEN add_months(to_date('2017-03-14','YYYY-MM-DD'),-3) and to_date('2017-03-14','YYYY-MM-DD')
group by customer_id  
order by customer_id;
--L?y ra b�o c�o t?ng gi� tr? c�c ??n h�ng ?� h?y (status = "Canceled"), 
--??n h?y l?n nh?t, ??n h?y nh? nh?t theo t?ng m� nh�n vi�n b�n (Saleman_id)
--theo t?ng th�ng v� t?ng n?m (G?i � s? d?nga h�m: EXTRACT())
select salesman_id, extract (month from order_date) as Thang, extract (year from order_date) as Nam,  max(total), min(total)
from orders 
where status = 'Canceled' 
group by salesman_id, extract (month from order_date), extract (year from order_date)
order by salesman_id, Thang, Nam