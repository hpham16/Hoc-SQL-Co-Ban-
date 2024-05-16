----- JOIN----
--1. L?y  thông tin khách hàng bao g?m: Mã khách hàng, H? và tên khách hàng, ??a ch?, Email, S? ?i?n tho?i 
SELECT CUST.CUSTOMER_ID,
   	NAME,
   	ADDRESS,
   	EMAIL,
   	PHONE
FROM CUSTOMERS CUST
inner JOIN CONTACTS CONT
ON cust.customer_id = cont.customer_id;
--2. L?y thông tin chi ti?t c?a s?n ph?m bao g?m: 
--Tên s?n ph?m, Tên danh m?c s?n ph?m t??ng ?ng (Ch? l?y nh?ng s?n ph?m có danh m?c s?n ph?m)
select product_name, category_name
from products p
inner join product_categories pc
on p.category_id = pc.category_id;
--3. L?y thông tin nhân viên bao g?m: Mã nhân viên, h? và tên nhân viên, Mã nhân viên qu?n lý, h? và tên nhân viên qu?n lý
select p.employee_id, p.first_name || ' ' || p.last_name, m.manager_id, m.first_name || ' ' || m.last_name
from employees p
inner join employees m
on p.manager_id = m.employee_id;
--4. L?y thông tin c?a t?t c? ??n hàng g?m các thông tin khách hàng: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên khách hàng ??t, ??a ch? khách hàng ?ã ??t  
select order_id, order_date, name, address
from orders o 
inner join customers c
on o.customer_id = c.customer_id;
--5. L?y thông tin c?a t?t c? ??n hàng g?m các thông tin nhân viên bán: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên nhân viên bán, Email, ?i?n tho?i (Ch? l?y nh?ng ??n hàng có thông tin nhân viên bán) 
select order_id, order_date, salesman_id, email, phone
from orders o
inner join employees e
on o.salesman_id = e.employee_id;
--6. L?y thông tin s?n  ph?m và t?n kho t??ng ?ng bao g?m: 
--Tên s?n ph?m, Mã kho t?n, SL t?n (Ch? l?y nh?ng s?n ph?m có t?n kho (Có trong b?ng t?n kho))
select product_name, warehouse_id, quantity
from inventories i
inner join products p 
on i.product_id = i.product_id;
----- LEFT JOIN----
--7. L?y thông tin chi ti?t c?a s?n ph?m bao g?m: Tên s?n ph?m, Tên danh m?c s?n ph?m t??ng ?ng (L?y c? nh?ng s?n ph?m không có danh m?c s?n ph?m)
select product_name, category_name
from products p
left join product_categories pc
on p.category_id = pc.category_id;
--8. L?y thông tin c?a t?t c? ??n hàng g?m các thông tin nhân viên bán: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên nhân viên bán, Email, ?i?n tho?i (L?y c? nh?ng ??n hàng không có thông tin nhân viên bán) 
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
left join employees e
on o.salesman_id = e.employee_id;
--9. L?y thông tin s?n ph?m và t?n kho t??ng ?ng bao g?m: 
--Tên s?n ph?m, Mã kho t?n, SL t?n (L?y c? nh?ng s?n ph?m không t?n kho (Không có trong b?ng t?n kho))
select product_name, warehouse_id, quantity
from products p
left join inventories i
on i.product_id = i.product_id;
----- RIGHT JOIN----
--10. L?y thông tin chi ti?t c?a s?n ph?m bao g?m: 
--Tên s?n ph?m, Tên danh m?c s?n ph?m t??ng ?ng (L?y c? nh?ng danh m?c s?n ph?m không có tên s?n ph?m)
select product_name, category_name
from products p
right join product_categories pc
on p.category_id = pc.category_id;
--11. L?y thông tin c?a t?t c? ??n hàng g?m các thông tin nhân viên bán: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên nhân viên bán, Email, ?i?n tho?i (L?y c? nh?ng nhân viên mà không có thông tin ??n bán hàng) 
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
right join employees e
on o.salesman_id = e.employee_id;
----- FULL JOIN----
--12. L?y thông tin t?ng h?p nh?ng mã ??n hàng nào ?ã có thông tin nhân viên bán 
--và mã ??n nào ch?a có thông tin nhân viên bán (Mã ??n hàng, ngày ??t hàng, H? và tên nhân viên bán)
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
full join employees e
on o.salesman_id = e.employee_id;
--13. L?y ra thông tin t?ng h?p nh?ng s?n ph?m ch?a có t?n kho và nh?ng s?n ph?m ?ã có t?n kho (Tên s?n ph?m, Mã kho t?n, SL t?n)
select product_name, warehouse_id, quantity
from products p
full join inventories i
on i.product_id = i.product_id;
----- T?NG H?P ----
--14. L?y thông tin c?a t?t c? ??n hàng g?m các thông tin khách hàng: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên khách hàng ??t, ??a ch? khách hàng ?ã ??t c?a khách hàng có h?n m?c tín d?ng >= 500
select order_id, order_date, name, address
from orders o, customers p
where o.customer_id = p.customer_id
and credit_limit >=500;
--15. L?y t?t c? thông tin ??n hàng bao g?m: Mã ??n hàng, Ngày ??t hàng, H? và Tên khách hàng, ??a ch? khách hàng, 
--H? Và Tên Nhân viên bán, S? ?T nhân viên bán, T?ng ti?n ??n hàng v?i ??n hàng có tr?ng thái = "Shipped" và Ngày ??t hàng k? t? ngày 20/1/2017
select o.order_id, o.order_date, name, c.address, e.first_name || ' ' || e.last_name, e.phone, o.total
from orders o, customers c, employees e
where o.salesman_id = e.employee_id
and c.customer_id = o.customer_id
and status = 'Shipped'
and order_date >= TO_DATE('20/01/2017', 'DD/MM/YYYY');
--16.  L?y thông tin c?a t?t c? ??n hàng g?m các thông tin nhân viên bán: 
--Mã ??n hàng, Ngày ??t hàng, H? và tên nhn viên bán, Email, ?i?n tho?i  v?i nh?ng nhân viên ký h?p ??u sau ngày 1/3/2016
select o.order_id, o.order_date, e.first_name || ' ' || e.last_name,e.email, e.phone
from orders o, employees e
where o.salesman_id = e.employee_id
and hire_date >= TO_DATE('01/03/2016', 'DD/MM/YYYY');
--17.  L?y thông tin s?n ph?m và t?n kho t??ng ?ng bao g?m: 
--Tên s?n ph?m, Mã kho t?n, SL t?n v?i nh?ng s?n ph?m có SL t?n kho >2
select product_name, warehouse_id, quantity
from inventories i, products p
where i.product_id = p.product_id
and quantity > 2;
--BÀI T?P V? NHÀ
--* Các thông tin chung c?n l?y c?a khách hàng bao g?m:  
--Mã khách hàng, H? và tên khách hàng, ??a ch?, Email, S? ?i?n tho?i
--L?y  thông tin khách hàng có ??a ch? k?t thúc = ‘MI’
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
and address LIKE '%MI';
--L?y  thông tin khách hàng có h?n m?c t? 500 ??n 700 và có s? ?i?n tho?i b?t ??u = ‘+39’
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
and phone LIKE '+39%'
and credit_limit between 500 and 700;
--L?y ra top 10  thông tin khách hàng có h?n m?c l?n nh?t. S?p x?p theo th? t? gi?m d?n. (Hàm l?y Top: FETCH FIRST n ROWS ONLY (n: S? dòng mu?n l?y))
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
order by credit_limit desc
fetch first 10 rows only;
--Tính t?ng doanh thu theo t?ng khách hàng 
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total) desc;
--Tìm ra khách hàng có t?ng doanh thu l?n nh?t trong n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and extract(year from order_date) = 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total) desc
fetch first 1 rows only;
--Tìm ra khách hàng có t?ng có doanh thu nh? nh?t trong n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and extract(year from order_date) = 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total)
fetch first 1 rows only;
--L?y ra top 10  khách hàng có m?c doanh thu trung bình c?a các ??n l?n nh?t. 
--S?p x?p theo th? t? t?ng d?n (Hàm l?y Top: FETCH FIRST n ROWS ONLY (n: S? dòng mu?n l?y))
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, avg(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by avg(total) desc
fetch first 10 rows only;
--Tính t?ng doanh thu theo t?ng khách hàng ??i v?i nh?ng 
--??n hàng có tr?ng thái = ‘Shipped’ và ngày ??t hàng l?n h?n ngày 1/1/2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and status = 'Shipped' 
and order_date >= TO_DATE('01/01/2017', 'DD/MM/YYYY')
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total);
--Tính t?ng doanh thu theo t?ng khách hàng (Làm tròn ??n s? th?p phân th? nh?t) 
--??i v?i nh?ng ??n hàng có tr?ng thái = ‘Pending’ và th?i ?i?m ??t hàng t? n?m 2015 ??n n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, round(sum(total),1) as tong
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and status = 'Pending' 
and extract(year from order_date) between 2015 and 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by tong;
--Tính t?ng doanh thu các ??n hàng ?ã mua c?a các khách hàng theo t?ng tháng, n?m. S?p x?p theo theo tên khách hàng, tháng, n?m mua hàng
select c.customer_id as ID, name as ten, extract(month from order_date) as Thang, extract(year from order_date) as Nam,  sum(total) as tong
from customers c, orders o
where o.customer_id = c.customer_id 
and status = 'Shipped'
group by c.customer_id, name, extract(month from order_date), extract(year from order_date)
order by ten, Thang, Nam;
--Tính t?ng giá tr? các ??n hàng ?ã h?y, ??n h?y l?n nh?t, ??n h?y nh? nh?t theo t?ng khách hàng,  theo t?ng n?m. S?p x?p theo theo tên khách hàng, n?m mua hàng
select c.customer_id ID, name ten, extract(year from order_date) Nam,  sum(total) tong, max(total) Lon_Nhat, min(total) Nho_Nhat
from customers c, orders o
where o.customer_id = c.customer_id 
and status = 'Canceled'
group by c.customer_id, name, extract(year from order_date)
order by ten, Nam;
