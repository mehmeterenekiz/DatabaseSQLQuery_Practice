-- 2. Soru: Müşteri "14"” (cid) tarafından sipariş edilen ürünlerin adlarını görüntüleyin.
select i.name from item as i inner join ordered_item as oi on i.iid = oi.iid 
inner join "order" as o on oi.oid = o.oid 
inner join Customer as c on o.cid = c.cid 
where c.cid = 14 