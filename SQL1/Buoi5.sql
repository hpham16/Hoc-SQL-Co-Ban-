----- JOIN----
--1. L?y  th�ng tin kh�ch h�ng bao g?m: M� kh�ch h�ng, H? v� t�n kh�ch h�ng, ??a ch?, Email, S? ?i?n tho?i 
SELECT CUST.CUSTOMER_ID,
   	NAME,
   	ADDRESS,
   	EMAIL,
   	PHONE
FROM CUSTOMERS CUST
inner JOIN CONTACTS CONT
ON cust.customer_id = cont.customer_id;
--2. L?y th�ng tin chi ti?t c?a s?n ph?m bao g?m: 
--T�n s?n ph?m, T�n danh m?c s?n ph?m t??ng ?ng (Ch? l?y nh?ng s?n ph?m c� danh m?c s?n ph?m)
select product_name, category_name
from products p
inner join product_categories pc
on p.category_id = pc.category_id;
--3. L?y th�ng tin nh�n vi�n bao g?m: M� nh�n vi�n, h? v� t�n nh�n vi�n, M� nh�n vi�n qu?n l�, h? v� t�n nh�n vi�n qu?n l�
select p.employee_id, p.first_name || ' ' || p.last_name, m.manager_id, m.first_name || ' ' || m.last_name
from employees p
inner join employees m
on p.manager_id = m.employee_id;
--4. L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin kh�ch h�ng: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n kh�ch h�ng ??t, ??a ch? kh�ch h�ng ?� ??t  
select order_id, order_date, name, address
from orders o 
inner join customers c
on o.customer_id = c.customer_id;
--5. L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin nh�n vi�n b�n: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n nh�n vi�n b�n, Email, ?i?n tho?i (Ch? l?y nh?ng ??n h�ng c� th�ng tin nh�n vi�n b�n) 
select order_id, order_date, salesman_id, email, phone
from orders o
inner join employees e
on o.salesman_id = e.employee_id;
--6. L?y th�ng tin s?n  ph?m v� t?n kho t??ng ?ng bao g?m: 
--T�n s?n ph?m, M� kho t?n, SL t?n (Ch? l?y nh?ng s?n ph?m c� t?n kho (C� trong b?ng t?n kho))
select product_name, warehouse_id, quantity
from inventories i
inner join products p 
on i.product_id = i.product_id;
----- LEFT JOIN----
--7. L?y th�ng tin chi ti?t c?a s?n ph?m bao g?m: T�n s?n ph?m, T�n danh m?c s?n ph?m t??ng ?ng (L?y c? nh?ng s?n ph?m kh�ng c� danh m?c s?n ph?m)
select product_name, category_name
from products p
left join product_categories pc
on p.category_id = pc.category_id;
--8. L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin nh�n vi�n b�n: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n nh�n vi�n b�n, Email, ?i?n tho?i (L?y c? nh?ng ??n h�ng kh�ng c� th�ng tin nh�n vi�n b�n) 
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
left join employees e
on o.salesman_id = e.employee_id;
--9. L?y th�ng tin s?n ph?m v� t?n kho t??ng ?ng bao g?m: 
--T�n s?n ph?m, M� kho t?n, SL t?n (L?y c? nh?ng s?n ph?m kh�ng t?n kho (Kh�ng c� trong b?ng t?n kho))
select product_name, warehouse_id, quantity
from products p
left join inventories i
on i.product_id = i.product_id;
----- RIGHT JOIN----
--10. L?y th�ng tin chi ti?t c?a s?n ph?m bao g?m: 
--T�n s?n ph?m, T�n danh m?c s?n ph?m t??ng ?ng (L?y c? nh?ng danh m?c s?n ph?m kh�ng c� t�n s?n ph?m)
select product_name, category_name
from products p
right join product_categories pc
on p.category_id = pc.category_id;
--11. L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin nh�n vi�n b�n: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n nh�n vi�n b�n, Email, ?i?n tho?i (L?y c? nh?ng nh�n vi�n m� kh�ng c� th�ng tin ??n b�n h�ng) 
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
right join employees e
on o.salesman_id = e.employee_id;
----- FULL JOIN----
--12. L?y th�ng tin t?ng h?p nh?ng m� ??n h�ng n�o ?� c� th�ng tin nh�n vi�n b�n 
--v� m� ??n n�o ch?a c� th�ng tin nh�n vi�n b�n (M� ??n h�ng, ng�y ??t h�ng, H? v� t�n nh�n vi�n b�n)
select order_id, order_date, first_name || ' ' || last_name, email, phone
from orders o
full join employees e
on o.salesman_id = e.employee_id;
--13. L?y ra th�ng tin t?ng h?p nh?ng s?n ph?m ch?a c� t?n kho v� nh?ng s?n ph?m ?� c� t?n kho (T�n s?n ph?m, M� kho t?n, SL t?n)
select product_name, warehouse_id, quantity
from products p
full join inventories i
on i.product_id = i.product_id;
----- T?NG H?P ----
--14. L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin kh�ch h�ng: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n kh�ch h�ng ??t, ??a ch? kh�ch h�ng ?� ??t c?a kh�ch h�ng c� h?n m?c t�n d?ng >= 500
select order_id, order_date, name, address
from orders o, customers p
where o.customer_id = p.customer_id
and credit_limit >=500;
--15. L?y t?t c? th�ng tin ??n h�ng bao g?m: M� ??n h�ng, Ng�y ??t h�ng, H? v� T�n kh�ch h�ng, ??a ch? kh�ch h�ng, 
--H? V� T�n Nh�n vi�n b�n, S? ?T nh�n vi�n b�n, T?ng ti?n ??n h�ng v?i ??n h�ng c� tr?ng th�i = "Shipped" v� Ng�y ??t h�ng k? t? ng�y 20/1/2017
select o.order_id, o.order_date, name, c.address, e.first_name || ' ' || e.last_name, e.phone, o.total
from orders o, customers c, employees e
where o.salesman_id = e.employee_id
and c.customer_id = o.customer_id
and status = 'Shipped'
and order_date >= TO_DATE('20/01/2017', 'DD/MM/YYYY');
--16.  L?y th�ng tin c?a t?t c? ??n h�ng g?m c�c th�ng tin nh�n vi�n b�n: 
--M� ??n h�ng, Ng�y ??t h�ng, H? v� t�n nhn vi�n b�n, Email, ?i?n tho?i  v?i nh?ng nh�n vi�n k� h?p ??u sau ng�y 1/3/2016
select o.order_id, o.order_date, e.first_name || ' ' || e.last_name,e.email, e.phone
from orders o, employees e
where o.salesman_id = e.employee_id
and hire_date >= TO_DATE('01/03/2016', 'DD/MM/YYYY');
--17.  L?y th�ng tin s?n ph?m v� t?n kho t??ng ?ng bao g?m: 
--T�n s?n ph?m, M� kho t?n, SL t?n v?i nh?ng s?n ph?m c� SL t?n kho >2
select product_name, warehouse_id, quantity
from inventories i, products p
where i.product_id = p.product_id
and quantity > 2;
--B�I T?P V? NH�
--* C�c th�ng tin chung c?n l?y c?a kh�ch h�ng bao g?m:  
--M� kh�ch h�ng, H? v� t�n kh�ch h�ng, ??a ch?, Email, S? ?i?n tho?i
--L?y  th�ng tin kh�ch h�ng c� ??a ch? k?t th�c = �MI�
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
and address LIKE '%MI';
--L?y  th�ng tin kh�ch h�ng c� h?n m?c t? 500 ??n 700 v� c� s? ?i?n tho?i b?t ??u = �+39�
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
and phone LIKE '+39%'
and credit_limit between 500 and 700;
--L?y ra top 10  th�ng tin kh�ch h�ng c� h?n m?c l?n nh?t. S?p x?p theo th? t? gi?m d?n. (H�m l?y Top: FETCH FIRST n ROWS ONLY (n: S? d�ng mu?n l?y))
select c.customer_id, first_name || ' ' || last_name, address, email, phone
from customers c, contacts co
where c.customer_id = co.customer_id
order by credit_limit desc
fetch first 10 rows only;
--T�nh t?ng doanh thu theo t?ng kh�ch h�ng 
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total) desc;
--T�m ra kh�ch h�ng c� t?ng doanh thu l?n nh?t trong n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and extract(year from order_date) = 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total) desc
fetch first 1 rows only;
--T�m ra kh�ch h�ng c� t?ng c� doanh thu nh? nh?t trong n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and extract(year from order_date) = 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total)
fetch first 1 rows only;
--L?y ra top 10  kh�ch h�ng c� m?c doanh thu trung b�nh c?a c�c ??n l?n nh?t. 
--S?p x?p theo th? t? t?ng d?n (H�m l?y Top: FETCH FIRST n ROWS ONLY (n: S? d�ng mu?n l?y))
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, avg(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by avg(total) desc
fetch first 10 rows only;
--T�nh t?ng doanh thu theo t?ng kh�ch h�ng ??i v?i nh?ng 
--??n h�ng c� tr?ng th�i = �Shipped� v� ng�y ??t h�ng l?n h?n ng�y 1/1/2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, sum(total)
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and status = 'Shipped' 
and order_date >= TO_DATE('01/01/2017', 'DD/MM/YYYY')
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by sum(total);
--T�nh t?ng doanh thu theo t?ng kh�ch h�ng (L�m tr�n ??n s? th?p ph�n th? nh?t) 
--??i v?i nh?ng ??n h�ng c� tr?ng th�i = �Pending� v� th?i ?i?m ??t h�ng t? n?m 2015 ??n n?m 2017
select c.customer_id, first_name || ' ' || last_name as fullname, address, email, phone, round(sum(total),1) as tong
from customers c, contacts co, orders o
where c.customer_id = co.customer_id
and o.customer_id = c.customer_id
and status = 'Pending' 
and extract(year from order_date) between 2015 and 2017
group by c.customer_id, first_name || ' ' || last_name, address, email, phone
order by tong;
--T�nh t?ng doanh thu c�c ??n h�ng ?� mua c?a c�c kh�ch h�ng theo t?ng th�ng, n?m. S?p x?p theo theo t�n kh�ch h�ng, th�ng, n?m mua h�ng
select c.customer_id as ID, name as ten, extract(month from order_date) as Thang, extract(year from order_date) as Nam,  sum(total) as tong
from customers c, orders o
where o.customer_id = c.customer_id 
and status = 'Shipped'
group by c.customer_id, name, extract(month from order_date), extract(year from order_date)
order by ten, Thang, Nam;
--T�nh t?ng gi� tr? c�c ??n h�ng ?� h?y, ??n h?y l?n nh?t, ??n h?y nh? nh?t theo t?ng kh�ch h�ng,  theo t?ng n?m. S?p x?p theo theo t�n kh�ch h�ng, n?m mua h�ng
select c.customer_id ID, name ten, extract(year from order_date) Nam,  sum(total) tong, max(total) Lon_Nhat, min(total) Nho_Nhat
from customers c, orders o
where o.customer_id = c.customer_id 
and status = 'Canceled'
group by c.customer_id, name, extract(year from order_date)
order by ten, Nam;
