-- 3. Soru: “27” (oid) sırasına göre sipariş edilen ürün sayısını bulun.
select count(*) as sipariş_edilen_ürün_sayısı from Ordered_Item
where oid = 27