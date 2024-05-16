----- SUM, MAX, MIN, AVG, COUNT, HAVING
--L?y ra t?t c? thông tin c?a các khách hàng. 
--(Yêu c?u: Chuy?n ??i Tên c?a khách hàng thành ch? Hoa, ??a ch? thành ch? th??ng)
SELECT CUSTOMER_ID, UPPER(NAME), LOWER(ADDRESS), WEBSITE, CREDIT_LIMIT 
FROM CUSTOMERS;
--Tính t?ng giá tr?, giá tr? l?n nh?t, giá tr? nh? nh?t, giá tr? trung bình các ??n hàng
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS;
--Tính giá tr? trung bình c?a t?t c? các ??n hàng ???c bán ra trong n?m 2016 
SELECT AVG(TOTAL)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2016;
--Tính t?ng doanh thu bán hàng t? n?m 2016 ??n n?m 2017
SELECT SUM(TOTAL)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) between 2016 and 2017;
--Tính t?ng giá tr?, giá tr? l?n nh?t, giá tr? nh? nh?t, giá tr? trung bình các ??n hàng có status = "Pending"
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Pending';
--Tính t?ng giá tr?, giá tr? l?n nh?t, giá tr? nh? nh?t, giá tr? trung bình các ??n hàng có status = "Shipped" và ngày order >= 1/1/2017
SELECT SUM(TOTAL), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Shipped'
AND ORDER_DATE > TO_DATE('01/01/2017','DD/MM/YYYY');
--Tính t?ng giá tr? (Làm tròn ??n s? th?p phân th? nh?t), giá tr? l?n nh?t, giá tr? nh? nh?t, giá tr? trung bình c?a các ??n hàng có status = "Shipped" và ngày order >= 1/1/2017
SELECT ROUND(SUM(TOTAL),1), MAX(TOTAL),MIN(TOTAL), AVG(TOTAL)
FROM ORDERS
WHERE status = 'Shipped'
AND ORDER_DATE > TO_DATE('1/1/2017','DD/MM/YYYY');
--L?y ra Mã các khách hàng có trên 4 l?n mua hàng thành công (status = "Shipped"). 
SELECT CUSTOMER_ID, COUNT(ORDER_ID)
FROM ORDERS
WHERE status = 'Shipped'
GROUP BY customer_id
HAVING COUNT(ORDER_ID) > 4
--L?y ra Mã các khách hàng có t?ng s? ??n mua hàng trong n?m 2017 l?n h?n 2 ??n
SELECT CUSTOMER_ID, COUNT(ORDER_ID)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY customer_id
HAVING COUNT(ORDER_ID) > 2
--L?y ra t?ng giá bán (list_price), giá tr? bán l?n nh?t, giá tr? bán nh? nh?t, giá tr? bán trung bình theo t?ng ID danh m?c s?n ph?m (category_id)
SELECT SUM(LIST_PRICE), MAX(LIST_PRICE),MIN(LIST_PRICE), AVG(LIST_PRICE)
FROM PRODUCTS
GROUP BY CATEgory_id

--Tính t?ng doanh thu theo t?ng tháng trong n?m 2017
SELECT EXTRACT(month FROM ORDER_DATE), sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY EXTRACT(month FROM ORDER_DATE)
order by EXTRACT(month FROM ORDER_DATE);
--Tính t?ng doanh thu theo t?ng tháng, t?ng n?m t??ng ?ng. Tính t? n?m 2016 ??n n?m 2017
SELECT EXTRACT(month FROM ORDER_DATE) as Thang, EXTRACT(Year FROM ORDER_DATE) as Nam , sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) between 2016 and 2017
GROUP BY EXTRACT(month FROM ORDER_DATE), EXTRACT(Year FROM ORDER_DATE)
order by Nam, Thang;
--Tìm ra Top 3 khách hàng có doanh thu cao nh?t trong n?m 2017 (S?p x?p theo th? t? gi?m d?n)
--    G?i ý: (Hàm l?y Top: FETCH FIRST n ROWS ONLY (n: S? dòng mu?n l?y))
SELECT customer_Id , sum(total)
FROM ORDERS
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2017
GROUP BY customer_id
order by sum(total) desc
FETCH FIRST 3 ROWS ONLY
--Tìm ra Top 3 s?n ph?m có t?ng s? l??ng bán ra th?p nh?t 
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
--BÀI T?P V? NHÀ
--
--L?y ra t?t c? nh?ng s?n ph?m mà công ty ?ang bán (Chu?n hóa l?i tên s?n ph?m: Chuy?n ??i t?t c? các ký t? ??u c?a m?i t? sang hoa, các ký t? còn l?i sang ch? th??ng ). (G?i ý: S? d?ng hàm INITCAP())	
select initcap(product_name) 
from products
--L?y ra t?t c? các s?n ph?m bao g?m: Tên s?n ph?m, mô t? (Xóa t?t c? ký t? ‘Speed:’ n?m bên trái) c?a s?n ph?m có mô t? s?n ph?m (description) b?t ??u b?ng ‘Speed’  (G?i ý: Dùng Hàm LTRIM())
--     Ví d?: Speed:DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB ? DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB
select product_name, ltrim(description, 'Speed:')
from products
--L?y ra t?t c? các s?n ph?m bao g?m: Tên s?n ph?m, Hãng (C?t này ???c l?y b?ng cách C?t l?y 5 ký t? ??u c?a tên s?n ph?m) c?a s?n ph?m b?t ??u ‘Intel’ (G?i ý: Dùng Hàm SUBSTR())
--     Ví d?: Intel Xeon E5-2687W ? Intel
select product_name, substr(product_name, 1, 5)
from products
--L?y ra t?t c? thông tin s?n ph?m có ?? dài ký t? c?a tên s?n ph?m < 12 ký t? (G?i ý: Dùng Hàm LENGTH())
select product_name, length(product_name) as Length_name
from products
where length(product_name) > 12;
--L?y ra báo cáo t?ng giá tr? ??n hàng ?ã mua (status = "Shipped") c?a các khách hàng theo t?ng n?m, 
--S?p x?p theo th? t? mã khách hàng, n?m mua hàng. (G?i ý s? d?ng hàm: EXTRACT())
select customer_id, extract (year from order_date) as nam, sum(total)
from orders 
where status = 'Shipped'
group by customer_id,  extract (year from order_date)
order by customer_id,  nam;
--L?y ra báo cáo t?ng giá tr? ??n hàng ch?a giao(status = "Pending") c?a các khách hàng trong vòng 3 tháng 
--tr??c tính t? ngày ‘2017/03/14' , S?p x?p theo mã khách hàng, t?ng giá tr? ??n ch?a giao.  
--(G?i ý s? d?ng hàm: ADD_MONTHS ())
select customer_id,  sum(total)
from orders 
where status = 'Pending' and
order_date BETWEEN add_months(to_date('2017-03-14','YYYY-MM-DD'),-3) and to_date('2017-03-14','YYYY-MM-DD')
group by customer_id  
order by customer_id;
--L?y ra báo cáo t?ng giá tr? các ??n hàng ?ã h?y (status = "Canceled"), 
--??n h?y l?n nh?t, ??n h?y nh? nh?t theo t?ng mã nhân viên bán (Saleman_id)
--theo t?ng tháng và t?ng n?m (G?i ý s? d?nga hàm: EXTRACT())
select salesman_id, extract (month from order_date) as Thang, extract (year from order_date) as Nam,  max(total), min(total)
from orders 
where status = 'Canceled' 
group by salesman_id, extract (month from order_date), extract (year from order_date)
order by salesman_id, Thang, Nam