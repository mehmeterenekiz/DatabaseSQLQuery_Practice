-- 6.a. Soru: Müşteri adlarını toplam sipariş sayılarına göre görüntüleyin.
-- Hepsini listele

select customer.fname as n, count("order".oid) as ordered_count from customer 
inner join "order" on customer.cid = "order".cid 
group by customer.fname order by n 