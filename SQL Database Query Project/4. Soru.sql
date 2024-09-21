-- 4. Soru: “24” (oid) emrinin toplam fiyatını bulun.
select sum(i.price) as "fatura tutarı" from item as i inner join Ordered_item as oi on i.iid=oi.iid 
where oi.oid = '24'
