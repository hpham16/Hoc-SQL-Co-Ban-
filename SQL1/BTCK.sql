--T?o b?ng theo c?u tr�c
-- b?ng kh�ch h�ng
Create table HuyHung_KHACHHANG (
    MAKH char(4),
    HOTEN varchar(40),
    DCHI varchar(50),
    SODT varchar(20),
    ngsinh date,
    ngdk date,
    doanhso number
);
-- b?ng nhan vien
Create table HuyHung_NHANVIEN (
    MANV char(4),
    HOTEN varchar(40),
    SODT varchar(20),
    NGVL DATE
);
--B?ng s?n ph?m
Create table HuyHung_sanpham (
    masp char(4),
    tensp varchar(40),
    dvt varchar(20),
    nuocsx varchar(40),
    gia number
);
--B?ng H�a ??n
Create table HuyHung_hoadon (
    sohd number,
    nghd date,
    makh char(4),
    manv char(4),
    trigia number
);
--B?ng CTHD 
Create table HuyHung_cthd (
    sohd number,
    masp char(4),
    sl number
);
drop table HuyHung_KHACHHANG;
drop table HuyHung_NHANVIEN;
drop table HuyHung_sanpham;
drop table HuyHung_hoadon;
drop table HuyHung_cthd;
insert into HUYHUNG_KHACHHANG values ('KH01','Nguyen Van A','731,Tran Hung Dao, Q 5 ,Tp HCM','08823451',TO_DATE('22/10/1960','DD/MM/YYYY'),TO_DATE('22/10/2006','DD/MM/YYYY'),13000000);

insert into HUYHUNG_KHACHHANG values ('KH02','Tran Ngoc Han','23/5, Nguyen Trai, Q 5, Tp HCM','0908256478',TO_DATE('03/04/1974','DD/MM/YYYY'),TO_DATE('30/07/2006','DD/MM/YYYY'),280000);

insert into HUYHUNG_KHACHHANG values ('KH03','Tran Ngoc Linh','45, Nguyen Canh Chan, Q 1, Tp HCM','0938776266',TO_DATE('12/06/1980','DD/MM/YYYY'),TO_DATE('05/08/2006','DD/MM/YYYY'),3860000);

insert into HUYHUNG_KHACHHANG values ('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q 10, Tp HCM','0917325476',TO_DATE('09/03/1965','DD/MM/YYYY'),TO_DATE('02/10/2006','DD/MM/YYYY'),250000);

insert into HUYHUNG_KHACHHANG values ('KH05','Le Nhat Minh','34, Truong Dinh, Q 3, Tp HCM','08246108',TO_DATE('10/03/1950','DD/MM/YYYY'),TO_DATE('28/10/2006','DD/MM/YYYY'),21000);

insert into HUYHUNG_KHACHHANG values ('KH06','Le Hoai Thuong','227, Nguyen Van Cu, Q 5, Tp HCM','08631738',TO_DATE('31/12/1981','DD/MM/YYYY'),TO_DATE('24/11/2006','DD/MM/YYYY'),915000);

insert into HUYHUNG_KHACHHANG values ('KH07','Nguyen Van Tam','32/3, Tran Binh Trong, Q 5, Tp HCM','0916783565',TO_DATE('06/04/1971','DD/MM/YYYY'),TO_DATE('01/12/2006','DD/MM/YYYY'),12500);

insert into HUYHUNG_KHACHHANG values ('KH08','Phan Thi Thanh','45/2, An Duong Vuong, Q 5, Tp HCM','0938435756',TO_DATE('10/01/1971','DD/MM/YYYY'),TO_DATE('13/12/2006','DD/MM/YYYY'),365000);

insert into HUYHUNG_KHACHHANG values ('KH09','Le Ha Vinh','873, Le Hong Phong, Q 5, Tp HCM','08654763',TO_DATE('03/09/1979','DD/MM/YYYY'),TO_DATE('14/01/2007','DD/MM/YYYY'),70000);

insert into HUYHUNG_KHACHHANG values ('KH10','Ha Duy Lap','34/34B, Nguyen Trai, Q 1, Tp HCM','08768904',TO_DATE('02/05/1983','DD/MM/YYYY'),TO_DATE('16/01/2007','DD/MM/YYYY'),67500);

insert into HUYHUNG_NHANVIEN values ('NV01','Nguyen Nhu Nhut','0927345678',TO_DATE('13/04/2006','DD/MM/YYYY'));

insert into HUYHUNG_NHANVIEN values ('NV02','Le Thi Phi Yen','0987567390',TO_DATE('21/04/2006','DD/MM/YYYY'));

insert into HUYHUNG_NHANVIEN values ('NV03','Nguyen Van B','0997047382',TO_DATE('27/04/2006','DD/MM/YYYY'));

insert into HUYHUNG_NHANVIEN values ('NV04','Ngo Thanh Tuan','0913758498',TO_DATE('24/06/2006','DD/MM/YYYY'));

insert into HUYHUNG_NHANVIEN values ('NV05','Nguyen Thi Truc Thanh','0918590387',TO_DATE('20/07/2006','DD/MM/YYYY'));

insert into HUYHUNG_SANPHAM values ('BC01','But chi','cay','Singapore',3000);
insert into HUYHUNG_SANPHAM values ('BC02','But chi','cay','Singapore',5000);
insert into HUYHUNG_SANPHAM values ('BC03','But chi','cay','Viet Nam',3500);
insert into HUYHUNG_SANPHAM values ('BC04','But chi','hop','Viet Nam',30000);
insert into HUYHUNG_SANPHAM values ('BB01','But bi','cay','Viet Nam',5000);
insert into HUYHUNG_SANPHAM values ('BB02','But bi','cay','Trung Quoc',7000);
insert into HUYHUNG_SANPHAM values ('BB03','But bi','hop','Thai Lan',100000);
insert into HUYHUNG_SANPHAM values ('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500);
insert into HUYHUNG_SANPHAM values ('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500);
insert into HUYHUNG_SANPHAM values ('TV03','Tap 100 giay tot','quyen','Viet Nam',3000);
insert into HUYHUNG_SANPHAM values ('TV04','Tap 200 giay tot','quyen','Viet Nam',5500);
insert into HUYHUNG_SANPHAM values ('TV05','Tap 100 trang','chuc','Viet Nam',23000);
insert into HUYHUNG_SANPHAM values ('TV06','Tap 200 trang','chuc','Viet Nam',53000);
insert into HUYHUNG_SANPHAM values ('TV07','Tap 100 trang','chuc','Trung Quoc',34000);
insert into HUYHUNG_SANPHAM values ('ST01','So tay 500 trang','quyen','Trung Quoc',40000);
insert into HUYHUNG_SANPHAM values ('ST02','So tay loai 1','quyen','Viet Nam',55000);
insert into HUYHUNG_SANPHAM values ('ST03','So tay loai 2','quyen','Viet Nam',51000);
insert into HUYHUNG_SANPHAM values ('ST04','So tay ','quyen','Thai Lan',55000);
insert into HUYHUNG_SANPHAM values ('ST05','So tay mong','quyen','Thai Lan',20000);
insert into HUYHUNG_SANPHAM values ('ST06','Phan viet bang','hop','Viet Nam',5000);
insert into HUYHUNG_SANPHAM values ('ST07','Phan khong bui','hop','Viet Nam',7000);
insert into HUYHUNG_SANPHAM values ('ST08','Bong bang','cai','Viet Nam',1000);
insert into HUYHUNG_SANPHAM values ('ST09','But long','cay','Viet Nam',5000);
insert into HUYHUNG_SANPHAM values ('ST10','But long','cay','Trung Quoc',7000);

insert into HUYHUNG_HOADON values (1001,TO_DATE('23/07/2006','DD/MM/YYYY'),'KH01','NV01',320000);
insert into HUYHUNG_HOADON values (1002,TO_DATE('12/08/2006','DD/MM/YYYY'),'KH01','NV02',840000);
insert into HUYHUNG_HOADON values (1003,TO_DATE('23/08/2006','DD/MM/YYYY'),'KH02','NV01',100000);
insert into HUYHUNG_HOADON values (1004,TO_DATE('01/09/2006','DD/MM/YYYY'),'KH02','NV01',180000);
insert into HUYHUNG_HOADON values (1005,TO_DATE('20/10/2006','DD/MM/YYYY'),'KH01','NV02',3800000);
insert into HUYHUNG_HOADON values (1006,TO_DATE('16/10/2006','DD/MM/YYYY'),'KH01','NV03',2430000);
insert into HUYHUNG_HOADON values (1007,TO_DATE('28/10/2006','DD/MM/YYYY'),'KH03','NV03',510000);
insert into HUYHUNG_HOADON values (1008,TO_DATE('28/10/2006','DD/MM/YYYY'),'KH01','NV03',440000);
insert into HUYHUNG_HOADON values (1009,TO_DATE('28/10/2006','DD/MM/YYYY'),'KH03','NV04',200000);
insert into HUYHUNG_HOADON values (1010,TO_DATE('01/11/2006','DD/MM/YYYY'),'KH01','NV01',5200000);
insert into HUYHUNG_HOADON values (1011,TO_DATE('04/11/2006','DD/MM/YYYY'),'KH04','NV03',250000);
insert into HUYHUNG_HOADON values (1012,TO_DATE('30/11/2006','DD/MM/YYYY'),'KH05','NV03',21000);
insert into HUYHUNG_HOADON values (1013,TO_DATE('12/12/2006','DD/MM/YYYY'),'KH06','NV01',5000);
insert into HUYHUNG_HOADON values (1014,TO_DATE('31/12/2006','DD/MM/YYYY'),'KH03','NV02',3150000);
insert into HUYHUNG_HOADON values (1015,TO_DATE('01/01/2007','DD/MM/YYYY'),'KH06','NV01',910000);
insert into HUYHUNG_HOADON values (1016,TO_DATE('01/01/2007','DD/MM/YYYY'),'KH07','NV02',12500);
insert into HUYHUNG_HOADON values (1017,TO_DATE('02/01/2007','DD/MM/YYYY'),'KH08','NV03',35000);
insert into HUYHUNG_HOADON values (1018,TO_DATE('13/01/2007','DD/MM/YYYY'),'KH08','NV03',330000);
insert into HUYHUNG_HOADON values (1019,TO_DATE('13/01/2007','DD/MM/YYYY'),'KH01','NV03',30000);
insert into HUYHUNG_HOADON values (1020,TO_DATE('14/01/2007','DD/MM/YYYY'),'KH09','NV04',70000);
insert into HUYHUNG_HOADON values (1021,TO_DATE('16/01/2007','DD/MM/YYYY'),'KH10','NV03',67500);
insert into HUYHUNG_HOADON values (1022,TO_DATE('16/01/2007','DD/MM/YYYY'),null,'NV03',7000);
insert into HUYHUNG_HOADON values (1023,TO_DATE('17/01/2007','DD/MM/YYYY'),null,'NV01',330000);

insert into HUYHUNG_CTHD values (1001,'TV02',10);
insert into HUYHUNG_CTHD values (1001,'ST01',5);
insert into HUYHUNG_CTHD values (1001,'BC01',5);
insert into HUYHUNG_CTHD values (1001,'BC02',10);
insert into HUYHUNG_CTHD values (1001,'ST08',10);
insert into HUYHUNG_CTHD values (1002,'BC04',20);
insert into HUYHUNG_CTHD values (1002,'BB01',20);
insert into HUYHUNG_CTHD values (1002,'BB02',20);
insert into HUYHUNG_CTHD values (1003,'BB03',10);
insert into HUYHUNG_CTHD values (1004,'TV01',20);
insert into HUYHUNG_CTHD values (1004,'TV02',20);
insert into HUYHUNG_CTHD values (1004,'TV03',20);
insert into HUYHUNG_CTHD values (1004,'TV04',20);
insert into HUYHUNG_CTHD values (1005,'TV05',50);
insert into HUYHUNG_CTHD values (1005,'TV06',50);
insert into HUYHUNG_CTHD values (1006,'TV07',20);
insert into HUYHUNG_CTHD values (1006,'ST01',30);
insert into HUYHUNG_CTHD values (1006,'ST02',10);
insert into HUYHUNG_CTHD values (1007,'ST03',10);
insert into HUYHUNG_CTHD values (1008,'ST04',8);
insert into HUYHUNG_CTHD values (1009,'ST05',10);
insert into HUYHUNG_CTHD values (1010,'TV07',50);
insert into HUYHUNG_CTHD values (1010,'ST07',50);
insert into HUYHUNG_CTHD values (1010,'ST08',100);
insert into HUYHUNG_CTHD values (1010,'ST04',50);
insert into HUYHUNG_CTHD values (1010,'TV03',100);
insert into HUYHUNG_CTHD values (1011,'ST06',50);
insert into HUYHUNG_CTHD values (1012,'ST07',3);
insert into HUYHUNG_CTHD values (1013,'ST08',5);
insert into HUYHUNG_CTHD values (1014,'BC02',80);
insert into HUYHUNG_CTHD values (1014,'BB02',100);
insert into HUYHUNG_CTHD values (1014,'BC04',60);
insert into HUYHUNG_CTHD values (1014,'BB01',50);
insert into HUYHUNG_CTHD values (1015,'BB02',30);
insert into HUYHUNG_CTHD values (1015,'BB03',7);
insert into HUYHUNG_CTHD values (1016,'TV01',5);
insert into HUYHUNG_CTHD values (1017,'TV02',1);
insert into HUYHUNG_CTHD values (1017,'TV03',1);
insert into HUYHUNG_CTHD values (1017,'TV04',5);
insert into HUYHUNG_CTHD values (1018,'ST04',6);
insert into HUYHUNG_CTHD values (1019,'ST05',1);
insert into HUYHUNG_CTHD values (1019,'ST06',2);
insert into HUYHUNG_CTHD values (1020,'ST07',10);
insert into HUYHUNG_CTHD values (1021,'ST08',5);
insert into HUYHUNG_CTHD values (1021,'TV01',7);
insert into HUYHUNG_CTHD values (1021,'TV02',10);
insert into HUYHUNG_CTHD values (1022,'ST07',1);
insert into HUYHUNG_CTHD values (1023,'ST04',6);


--2.1. C�c y�u c?u t?o d? li?u
--1. Th�m v�o thu?c t�nh GHICHU c� ki?u d? li?u varchar(20) cho quan h? SANPHAM.
alter table huyhung_sanpham 
add ghichu varchar(20);
--2. Th�m v�o thu?c t�nh LOAIKH c� ki?u d? li?u l� Number cho quan h? KHACHHANG.
alter table huyhung_khachhang
add loaikh number;
--3. S?a ki?u d? li?u c?a thu?c t�nh GHICHU trong quan h? SANPHAM th�nh varchar(100).
alter table huyhung_sanpham
modify ghichu varchar(100);
--4. X�a thu?c t�nh GHICHU trong quan h? SANPHAM.
alter table huyhung_sanpham
drop column ghichu;
--5. S?a ki?u d? li?u c?a thu?c t�nh LOAIKH trong quan h? KHACHHANG th�nh varchar(20).
alter table huyhung_khachhang
modify loaikh varchar(20);
--6. S?a r�ng bu?c SOHD  trong quan h? CTHD th�nh NOT NULL 
ALTER TABLE Huyhung_CTHD
MODIFY SOHD number NOT NULL;

--2.2. C�c y�u c?u truy v?n d? li?u
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) do �Trung Quoc� s?n xu?t.
select  masp,
        tensp
from huyhung_sanpham
where nuocsx = 'Trung Quoc';
--In ra danh s�ch c�c s?n ph?m (MASP, TENSP) c� ??n v? t�nh l� �cay�, �quyen�.
select  masp,
        tensp
from huyhung_sanpham
where dvt in ('cay','quyen');
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) c� m� s?n ph?m b?t ??u l� �B� v� k?t th�c l� �01�.
select  masp,
        tensp
from huyhung_sanpham
where masp like 'B%01';
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) do �Trung Qu?c� s?n xu?t c� gi� t? 30.000 ??n 40.000.
select  masp,
        tensp
from huyhung_sanpham
where nuocsx = 'Trung Quoc'
and gia between 30000 and 40000;
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) do �Trung Quoc� ho?c �Thai Lan� s?n xu?t c� gi� t? 30.000 ??n 40.000.
select  masp,
        tensp
from huyhung_sanpham
where nuocsx in ('Trung Quoc','Thai Lan')
and gia between 30000 and 40000;
--In ra c�c s? h�a ??n, tr? gi� h�a ??n b�n ra trong ng�y 1/1/2007 v� ng�y 1/1/2007.
select sohd, trigia
from huyhung_hoadon
where nghd = to_date('01/01/2007','DD/MM/YYYY')
and nghd = to_date('01/01/2007','DD/MM/YYYY');
--In ra c�c s? h�a ??n, tr? gi� h�a ??n trong th�ng 1/2007, s?p x?p theo ng�y (t?ng d?n) v� tr? gi� c?a h�a ??n (gi?m d?n).
select  sohd, 
        trigia
from huyhung_hoadon
where extract(month from nghd) = 01 
and extract(year from nghd) = 2007
order by nghd asc, trigia desc;
--In ra danh s�ch c�c kh�ch h�ng (MAKH, HOTEN) ?� mua h�ng trong ng�y 1/1/2007.
select  kh.makh, 
        kh.hoten
from huyhung_khachhang kh
join huyhung_hoadon hd
on kh.makh = hd.makh
where hd.nghd = to_date('01/01/2007','DD/MM/YYYY');
--In ra s? h�a ??n, tr? gi� c�c h�a ??n do nh�n vi�n c� t�n �Nguyen Van B� l?p trong ng�y 28/10/2006.
select  hd.sohd, 
        hd.trigia
from huyhung_hoadon hd 
join huyhung_nhanvien nv
on nv.manv = hd.manv
where hd.nghd = to_date('28/10/2006','DD/MM/YYYY')
and nv.hoten = 'Nguyen Van B';
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) ???c kh�ch h�ng c� t�n �Nguyen Van A� mua trong th�ng 10/2006.
select  sp.masp, 
        sp.tensp
from huyhung_sanpham sp 
join huyhung_cthd ct
on sp.masp = ct.masp
join huyhung_hoadon hd
on hd.sohd = ct.sohd
join huyhung_khachhang kh
on kh.makh = hd.makh
where kh.hoten = 'Nguyen Van A'
and extract(month from hd.nghd) = 10 
and extract(year from hd.nghd) = 2006;

--T�m c�c s? h�a ??n ?� mua s?n ph?m c� m� s? �BB01� ho?c �BB02�.
select sohd 
from huyhung_cthd
where masp in ('BB01','BB02');
--T�m c�c s? h�a ??n ?� mua s?n ph?m c� m� s? �BB01� ho?c �BB02�, m?i s?n ph?m mua v?i s? l??ng t? 10 ??n 20.
select DISTINCT sohd 
from huyhung_cthd
where masp in ('BB01','BB02')
and sl between 10 and 20;
--T�m c�c s? h�a ??n mua c�ng l�c 2 s?n ph?m c� m� s? �BB01� v� �BB02�, m?i s?n ph?m mua v?i s? l??ng t? 10 ??n 20.
select * 
from huyhung_cthd
where   (masp = 'BB01' and sl between 10 and 20)
and     (masp = 'BB02' and sl between 10 and 20);

SELECT sohd
FROM HUYHUNG_CTHD
WHERE masp IN ('BB01', 'BB02')
and sl between 10 and 20
GROUP BY sohd
HAVING COUNT(DISTINCT masp) = 2;
--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) kh�ng b�n ???c.
select  sp.masp,
        sp.tensp
from huyhung_sanpham sp
where not EXISTS ( 
                select  sp.masp,
                        sp.tensp
                from huyhung_cthd ct
                where ct.masp = sp.masp
                ); 
 
select  sp.masp,
        sp.tensp
from huyhung_sanpham sp
left join huyhung_cthd ct
on ct.masp = sp.masp
where sl is null;

--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) kh�ng b�n ???c trong n?m 2006.
select  sp.masp,
        sp.tensp
from huyhung_sanpham sp
where not EXISTS ( 
                select  sp.masp, 
                        sp.tensp
                from huyhung_cthd ct
                join huyhung_hoadon hd
                on ct.sohd = hd.sohd
                where ct.masp = sp.masp
                and extract(year from hd.nghd) = 2006
                ); 

--In ra danh s�ch c�c s?n ph?m (MASP,TENSP) do �Trung Quoc� s?n xu?t kh�ng b�n ???c trong n?m 2006.
select  sp.masp,
        sp.tensp
from huyhung_sanpham sp
where sp.nuocsx = 'Trung Quoc'
      and not EXISTS ( 
                select  sp.masp, 
                        sp.tensp
                from huyhung_cthd ct
                join huyhung_hoadon hd
                on ct.sohd = hd.sohd
                where ct.masp = sp.masp
                and extract(year from hd.nghd) = 2006
                );
                 
--Cho bi?t tr? gi� h�a ??n cao nh?t, th?p nh?t l� bao nhi�u ?
select  max(trigia),
        min(trigia)
from huyhung_hoadon;
--Tr? gi� trung b�nh c?a t?t c? c�c h�a ??n ???c b�n ra trong n?m 2006 l� bao nhi�u?
select round(avg(trigia),1)
from huyhung_hoadon;
--T�nh doanh thu b�n h�ng trong n?m 2006.
select sum(trigia) as Tong
from huyhung_hoadon
where extract(year from nghd) = 2006;
--T�m s? h�a ??n c� tr? gi� cao nh?t trong n?m 2006.
select  sohd, 
        trigia
from huyhung_hoadon
where extract(year from nghd) = 2006
order by trigia desc
fetch first 1 rows only;
--In ra danh s�ch 3 kh�ch h�ng (MAKH, HOTEN) c� doanh s? cao nh?t.
select  kh.makh, 
        kh.hoten,
        sum(hd.trigia)
from huyhung_khachhang kh
join huyhung_hoadon hd
on hd.makh = kh.makh
group by kh.makh, kh.hoten
order by sum(hd.trigia) desc
fetch first 3 rows only;

--In ra danh s�ch c�c s?n ph?m (MASP, TENSP) c� gi� b�n b?ng 1 trong 3 m?c gi� cao nh?t.
select  masp, 
        tensp,
        gia 
from huyhung_sanpham
where gia in (
    select DISTINCT sp.gia
    from huyhung_sanpham sp
    order by sp.gia desc
    fetch first 3 rows only
);
    
   
--In ra danh s�ch c�c s?n ph?m (MASP, TENSP) do �Thai Lan� s?n xu?t c� gi� b?ng 1 trong 3 m?c gi� cao nh?t (c?a t?t c? c�c s?n ph?m).
select  masp, 
        tensp, 
        gia, 
        nuocsx
from huyhung_sanpham
where gia in (
    select DISTINCT sp.gia
    from huyhung_sanpham sp
    order by sp.gia desc
    fetch first 3 rows only
);

--In ra danh s�ch c�c s?n ph?m (MASP, TENSP) do �Trung Quoc� s?n xu?t c� gi� b?ng 1 trong 3 m?c gi� cao nh?t (c?a s?n ph?m do �Trung Quoc� s?n xu?t).
select  masp, tensp,
        sp.gia, nuocsx
from huyhung_sanpham sp
where nuocsx = 'Trung Quoc'
order by sp.gia desc
fetch first 3 rows only;
--* In ra danh s�ch 3 kh�ch h�ng c� doanh s? cao nh?t (s?p x?p theo ki?u x?p h?ng).
SELECT RANK() OVER (ORDER BY SUM(HD.trigia) DESC) AS XepHang,
       KH.MAKH,
       KH.HOTEN,
       SUM(HD.trigia) AS DoanhSo
FROM huyhung_khachhang KH
JOIN huyhung_hoadon HD ON KH.MAKH = HD.MAKH
GROUP BY KH.MAKH, KH.HOTEN
ORDER BY DoanhSo DESC
FETCH FIRST 3 ROWS ONLY;
--T�nh t?ng s? s?n ph?m do �Trung Quoc� s?n xu?t.
select sum(sl) as Tong
from huyhung_cthd ct 
join huyhung_sanpham sp
on ct.masp = sp.masp
where sp.nuocsx = 'Trung Quoc';
--T�nh t?ng s? s?n ph?m c?a t?ng n??c s?n xu?t.
select  sp.nuocsx, 
        sum(ct.sl) as Tong
from huyhung_cthd ct 
left join huyhung_sanpham sp
on ct.masp = sp.masp
group by sp.nuocsx
order by Tong desc;

--V?i t?ng n??c s?n xu?t, t�m gi� b�n cao nh?t, th?p nh?t, trung b�nh c?a c�c s?n ph?m.
select  sp.nuocsx, 
        max(sp.gia),
        min(sp.gia), 
        round(avg(sp.gia),2)
from huyhung_sanpham sp
group by sp.nuocsx
order by sp.nuocsx desc;
--T�nh doanh thu b�n h�ng m?i ng�y.
select nghd, sum(trigia)
from huyhung_hoadon
group by nghd;

--T�nh doanh thu b�n h�ng c?a t?ng th�ng trong n?m 2006.
select extract(month from nghd) as Thang, sum(trigia)
from huyhung_hoadon
where extract(year from nghd) = 2006
group by extract(month from nghd);
--T�m h�a ??n c� mua �t nh?t 4 s?n ph?m kh�c nhau.
select sohd, count(distinct masp)
from huyhung_cthd
group by sohd
having count(distinct masp) >= 4;

--Th�ng m?y trong n?m 2006, doanh s? b�n h�ng cao nh?t ?
select extract(month from nghd) as Thang, sum(trigia)
from huyhung_hoadon
where extract(year from nghd) = 2006
group by extract(month from nghd)
fetch first 1 rows only;
--T�m s?n ph?m (MASP, TENSP) c� t?ng s? l??ng b�n ra th?p nh?t trong n?m 2006.
select sp.masp, sp.tensp, sum(ct.sl)
from huyhung_sanpham sp
left join huyhung_cthd ct
on sp.masp = ct.masp
left join huyhung_hoadon hd
on hd.sohd = ct.sohd
where extract(year from nghd) = 2006
group by sp.masp, sp.tensp
order by sum(ct.sl) asc
fetch first 1 rows only;

--M?i n??c s?n xu?t, t�m s?n ph?m (MASP,TENSP) c� gi� b�n cao nh?t.
SELECT  S.NUOCSX,
        S.MASP,
        S.TENSP,
        S.GIA
FROM huyhung_SANPHAM S
WHERE (S.NUOCSX, S.GIA) 
IN (
    SELECT NUOCSX, MAX(GIA) AS GIA_MAX
    FROM huyhung_SANPHAM
    GROUP BY NUOCSX
)    
ORDER BY s.NUOCSX, S.GIA DESC;
    

--T�m n??c s?n xu?t s?n xu?t �t nh?t 3 s?n ph?m c� gi� b�n kh�c nhau.
select nuocsx , COUNT(DISTINCT gia)
from huyhung_sanpham
GROUP BY NUOCSX
HAVING COUNT(DISTINCT gia) >= 3;

