--1. L?y ra thông tin s?n ph?m và giá bán trung bình c?a nh?ng s?n ph?m ?ó.
select product_id, product_name,
(select avg(unit_price)
from order_items o 
where o.product_id = p.product_id) as AVG
from products p;

--2. L?y ra nh?ng s?n ph?m ch?a t?ng ???c bán
select p.product_id, p.product_name
from products p
where not exists (
    select p.product_id, p.product_name
    from order_items oi
    where oi.product_id = p.product_id
);
--3. L?y ra nh?ng s?n ph?m ?ang không t?n kho
select p.product_id, p.product_name
from products p
where not exists (
    select p.product_id, p.product_name
    from inventories i
    where i.product_id = p.product_id
);
--4. L?y ra nh?ng khách hàng ?ã t?ng mua hàng trong n?m 2016 ??n 2017
select c.customer_id, c.name
from customers c
where exists (
    select c.customer_id, c.name
    from orders o
    where c.customer_id = o.customer_id
    and extract(year from order_date) between 2016 and 2017
);

--5. L?y ra nh?ng khách hàng ch?a t?ng mua hàng trong n?m 2017
select c.customer_id, c.name
from customers c
where not exists (
    select c.customer_id, c.name
    from orders o
    where c.customer_id = o.customer_id
    and extract(year from order_date) = 2017
);

--6. Tìm t?t c? các khách hàng có h?n m?c tín d?ng nhi?u h?n h?n m?c trung bình c?a t?t c? các khách hàng
select c.customer_id, c.name, c.credit_limit
from customers c
where credit_limit > ( select avg(credit_limit) from customers);

--7. S? d?ng With ?? th?c hi?n yêu c?u sau:
--L?y ra thông tin khách hàng (Mã khách hàng, Tên khách hàng) ?ã t?ng mua hàng và có t?ng s? l??ng s?n ph?m/??n > 50 ??n v? 
--và ngày ??t hàng l?n h?n 10/02/2017  
--             -         Tìm ra khách hàng có t?ng s? l??ng sp l?n nh?t trong list khách hàng trên
with HuyHung_with as (
    select c.customer_id, c.name, sum(oi.quantity) SoLuong
    from customers c
    inner join orders o
    on c.customer_id = o.customer_id
    inner join order_items oi
    on oi.order_id = o.order_id
    where o.order_date > to_date('10/02/2017','DD/MM/YYYY')
    group by c.customer_id, c.name
    having sum(oi.quantity) > 50
    order by c.customer_id
)
select c.customer_id, c.name, c.SoLuong
from huyhung_with c
fetch first 1 rows only;

--8. S? d?ng l?nh With ?? th?c hi?n yêu c?u sau:
---	1 truy v?n Doanh_thu_SP: Mã s?n ph?m, tên s?n ph?m, Doanh thu (t?ng ti?n mà s?n ph?m ?ó bán ???c)
---	1 truy v?n tính t?ng doanh thu toàn b? các s?n ph?m
--Tr? v? k?t qu? sau: Mã s?n ph?m, tên s?n ph?m, Doanh thu, % doanh thu ( = doanh thu / t?ng doanh thu)
with Doanh_Thu_SP as (
    select p.product_id, p.product_name, sum(o.total) as DoanhThu
    from products p
    join order_items oi
    on p.product_id = oi.product_id
    join orders o
    on o.order_id = oi.order_id
    group by p.product_id, p.product_name
),
TongDoanhThu as (
    select sum(DoanhThu) as TongDoanhThu
    from Doanh_Thu_SP 
)
select product_id,product_name, a.DoanhThu, round((a.DoanhThu / b.TongDoanhThu) * 100,3)
from Doanh_Thu_SP a, TongDoanhThu b;

--
--9. T?o 1 View có tên Cst_Order ch?a n?i dung sau:L?y ra thông tin khách hàng 
--(Mã khách hàng, Tên khách hàng) và nh?ng ??n hàng ??n ?ang ch? giao và có t?ng s? l??ng s?n ph?m/??n > 50 ??n v? 
--và ngày ??t hàng l?n h?n 10/02/2017. S?p x?p theo khách hàng
CREATE VIEW hung_Cst_Order AS
select c.customer_id, c.name, sum(oi.quantity)
from customers c, orders o, order_items oi
where c.customer_id = o.customer_id
and oi.order_id = o.order_id
and o.status = 'Pending'
and o.order_date > to_date('10/02/2017','DD/MM/YYYY')
group by  c.customer_id, c.name
having sum(oi.quantity) > 50
order by c.customer_id,  c.name;

--10. T?o 1 View có tên Cst_Order ch?a n?i dung sau: 
--L?y ra top 100 s?n ph?m ?ang t?n ít nh?t theo t?t c? qu?c gia 
--( Mã s?n ph?m, Tên s?n ph?m, tên kho t?n,  qu?c gia kho, t?ng sl t?n t?i kho)
CREATE VIEW CBCst_Order1 AS
SELECT p.product_id, p.product_name, wh.warehouse_names, c.country_name, sum(i.quantity) as SL
FROM products p 
join inventories i ON p.product_id = i.product_id
join warehouses wh ON i.warehouse_id = wh.warehouse_id
join locations lo ON wh.location_id = lo.location_id
join countries c ON c.country_id = lo.country_id
group by p.product_id, p.product_name,wh.warehouse_names, c.country_name
order by SL
fetch first 100 rows only;
