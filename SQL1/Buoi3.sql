create table HuyHung_Customer (
    CUSTOMER_ID NUMBER NOT NULL,
    NAME VARCHAR2(256) not null,
    address VARCHAR2(256),
    website VARCHAR2(256),
    credit_limit number(8,2)
);

alter table huyhung_customer add (stage varchar2(10));

--INSERT

insert into huyhung_customer values (1,'Danahere','47 Mockingbird Ln','http://www.raytheon.com',600,'MA');
insert into huyhung_customer values (2,'J. Collin','372 Clearwater Blvd','http://www.atheon.com',445,'MA');
insert into huyhung_customer values (3,'Mia','18 Jessup Rd','http://www.jrorigin.com',676,'LS');
insert into huyhung_customer values (4,'M. Alex','12 Buchanan Ln','http://www.howether.com',900,'NH');
insert into huyhung_customer values (5,'Martin','105 E Allendale Dr, Bloomington','http://www.gigi.com',577,'NH');
insert into huyhung_customer values (6,'Bloomington, HM','Bloomington, HM','http://www.ensonrd.com',650,'AA');


--DELETE
delete from huyhung_customer 
where name = 'Danahere';

delete from huyhung_customer 
where customer_id = '4';

delete from huyhung_customer 
where credit_limit < 500;

-- UPDATE

update huyhung_customer 
set website = 'http://inda.vn'
where customer_id = 5;

update huyhung_customer 
set credit_limit = 1200
where customer_id = 6;

--CREATE .. SELECT
create table HuyHung_Customer_Backup (
    CUSTOMER_ID NUMBER NOT NULL,
    NAME VARCHAR2(256) not null,
    address VARCHAR2(256),
    website VARCHAR2(256),
    credit_limit number(8,2),
    stage varchar2(10)
);

--2 cach nay deu duoc
insert into huyhung_customer_backup(customer_id, name, address, website, credit_limit, stage)
select * from huyhung_customer;

insert into huyhung_customer_backup
select * from huyhung_customer;

-- TRUNCATE
truncate table huyhung_customer;

--DROP
drop table huyhung_customer;


---------------------
--BTVN--
---------------------


create table HuyHung_Oils (
    Ngayban Date,
    loai VARCHAR2(256),
    Giaban number,
    tonkho number,
    giatri number(12,2),
    cuahang varchar(256),
    quanhuyen varchar(256)
);
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-IV',15210,324,4928040.00,'CHXD S? 74','THANH TR�');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-III',14920,754,11249680.00,'CHXD S? 74','THANH TR�');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RS RON 92-II',14400,3646,52502400.00,'CHXD S? 74','THANH TR�');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'DIEZEN',12450,3533,43985850.00,'CHXD S? 74','THANH TR�');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'D?U H?A',10200,2344,23908800.00,'CHXD S? 74','THANH TR�');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'MAZUT',11380,3422,38942360.00,'CHXD S? 74','THANH TR�');

insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-IV',15210,3323,50542830.00,'CHXD S? 75','HO�NG MAI');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-III',14920,2344,34972480.00,'CHXD S? 75','HO�NG MAI');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RS RON 92-II',14400,3555,51192000.00,'CHXD S? 75','HO�NG MAI');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'DIEZEN',12450,866,10781700.00,'CHXD S? 75','HO�NG MAI');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'D?U H?A',10200,7657,78101400.00,'CHXD S? 75','HO�NG MAI');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'MAZUT',11380,9454,108496920.00,'CHXD S? 75','HO�NG MAI');

insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-IV',15210,575,50542830.00,'CHXD S? 85','LONG BI�N');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RON 95-III',14920,6456,34972480.00,'CHXD S? 85','LONG BI�N');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'RS RON 92-II',14400,5345,51192000.00,'CHXD S? 85','LONG BI�N');
insert into HuyHung_Oils values ((TO_DATE('31/08/2020', 'DD/MM/YYYY')),'DIEZEN',12450,234,10781700.00,'CHXD S? 85','LONG BI�N');
insert into HuyHung_Oils values ((TO_DATE('30/08/2020', 'DD/MM/YYYY')),'D?U H?A',10200,4244,78101400.00,'CHXD S? 85','LONG BI�N');
insert into HuyHung_Oils values ((TO_DATE('30/08/2020', 'DD/MM/YYYY')),'MAZUT',11380,2424,108496920.00,'CHXD S? 85','LONG BI�N');


SELECT * FROM huyhung_oils;

--3.S? d?ng c�u truy v?n ?? tr? l?i c�c c�u h?i sau:
--D? li?u b�o c�o bao g?m nh?ng ng�y n�o?
SELECT DISTINCT NGAYBAN FROM HUYHUNG_OILS;
--C� t?t c? bao nhi�u lo?i x?ng ?ang ???c b�n?
select count(distinct loai) from huyhung_oils;
--C� bao nhi�u c?a h�ng ?ang ho?t ??ng? 
select count(distinct cuahang) from huyhung_oils;
--C� bao nhi�u c?a h�ng thu?c QU?N: Long Bi�n
select count(distinct cuahang) from huyhung_oils
where quanhuyen = 'LONG BI�N';

--4. ??i t�n c?t NGAY th�nh NGAY_BAO_CAO, GIA_TRI th�nh GIA_TRI_VND
alter table huyhung_oils rename column ngayban to NGAY_BAO_CAO;
alter table huyhung_oils rename column giatri to GIA_TRI_VND;
--5. Update TON_KHO = 1900 ??i v?i LOAI= �RON 95-IV� v� c� NGAY_BAO_CAO = �31/08/2020�
update huyhung_oils set tonkho = 1900
where loai = 'RON 95-IV' and NGAY_BAO_CAO = (TO_DATE('31/08/2020', 'DD/MM/YYYY'));
--6. Update l?i GIA_TRI = TON_KHO * GIA_BAN ??i v?i LOAI= �RON 95-IV� v� c� NGAY_BAO_CAO = �31/08/2020� theo TON_KHO m?i
update huyhung_oils set gia_tri_vnd = tonkho * giaban
where loai = 'RON 95-IV' and NGAY_BAO_CAO = (TO_DATE('31/08/2020', 'DD/MM/YYYY'));
--7. X�a b? t?t c? c�c b?n ghi v?i LOAI l� �DIEZEN� v� ?  CUA_HANG  �CHXD S? 60� v� �CHXD S? 74�
delete from huyhung_oils
where loai = 'DIEZEN' and cuahang in ('CHXD S? 60', 'CHXD S? 74');
--8. X�a b? t?t c? c�c b?n ghi v?i LOAI l� �MAZUT� c� TON_KHO nh? h?n 11380
delete from huyhung_oils
where loai = 'MAZUT' and tonkho < 11380;

--9. T?o ra b?ng <t�n h?c vi�n>_Oils_Backup_31082020 t? b?ng <t�n h?c vi�n>_Oils v?i ?i?u ki?n NGAY_BAO_CAO = '31/08/2020�
create table HuyHung_Oils_backup_31082020 (
    ngay_bao_cao Date,
    loai VARCHAR2(256),
    Giaban number,
    tonkho number,
    gia_tri_vnd number(12,2),
    cuahang varchar(256),
    quanhuyen varchar(256)
);

insert into HuyHung_Oils_backup_31082020
select * from huyhung_oils
where NGAY_BAO_CAO = (TO_DATE('31/08/2020', 'DD/MM/YYYY'));
--10. X�a to�n b? d? li?u trong b?ng <t�n h?c vi�n>_Oils
truncate table huyhung_oils;
--11. X�a  b?ng <t�n h?c vi�n>_Oils
drop table huyhung_oils;