select p.product_id, 
    p.product_name, 
    wh.warehouse_names,
    l.address,
    c.country_name,
    sum(i.quantity)
from products p
left join inventories i
    on  p.product_id = i.product_id 
left join warehouses wh
    on i.warehouse_id = wh.warehouse_id
left join locations l
    on wh.location_id = l.location_id
left join countries c
    on c.country_id = l.country_id
group by p.product_id, p.product_name, wh.warehouse_names, l.address, c.country_name;
--L?y ra b?o c?o chi ti?t s?n ph?m t?n theo t?ng v?ng/mi?n : M? s?n ph?m, T?n s?n ph?m, t?n kho t?n, ??a ch? kho, qu?c gia kho, v?ng/mi?n kho,  t?ng sl t?n t?i kho
select p.product_id, 
    p.product_name, 
    wh.warehouse_names,
    l.address,
    c.country_name,
    r.region_name,
    sum(i.quantity)
from products p
left join inventories i
    on  p.product_id = i.product_id 
left join warehouses wh
    on i.warehouse_id = wh.warehouse_id
left join locations l
    on wh.location_id = l.location_id
left join countries c
    on c.country_id = l.country_id
left join regions r
    on r.region_id = c.region_id
group by p.product_id, p.product_name, wh.warehouse_names, l.address, c.country_name, r.region_name;
--L?y ra top 100 s?n ph?m ?ang t?n nhi?u nh?t t?i t?t c? c?c kho ( M? s?n ph?m, T?n s?n ph?m, t?n kho t?n, t?ng sl t?n t?i kho)
select p.product_id, p.product_name, wh.warehouse_names, sum(i.quantity) SL
from products p, warehouses wh, inventories i
where p.product_id = i.product_id 
and i.warehouse_id = wh.warehouse_id
group by p.product_id, p.product_name, wh.warehouse_names
order by SL desc
fetch first 100 rows only;

SELECT PRO.PRODUCT_ID AS MA_SP, 
      PRO.PRODUCT_NAME AS TEN_SP,
      WH.WAREHOUSE_NAMEs AS TEN_KHO_TON,
      SUM(INV.QUANTITY)AS SL_TON_KHO
FROM PRODUCTS PRO
INNER JOIN INVENTORIES INV
  ON PRO.PRODUCT_ID = INV.PRODUCT_ID
LEFT JOIN WAREHOUSES WH
  ON INV.WAREHOUSE_ID = WH.WAREHOUSE_ID
GROUP BY PRO.PRODUCT_ID, 
          PRO.PRODUCT_NAME,
          WH.WAREHOUSE_NAMEs
ORDER BY SUM(INV.QUANTITY) DESC
FETCH FIRST 100 ROW ONLY;