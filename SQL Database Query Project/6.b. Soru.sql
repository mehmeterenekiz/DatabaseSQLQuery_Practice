-- 6.b. Soru: Müşteri adlarını toplam sipariş sayılarına göre görüntüleyin.
-- 3'ten az olan sipariş sayılarını yoksay.

select customer.fname, count("order".oid) as order_count from Customer 
inner join "order" on customer.cid = "order".cid 
group by customer.fname 
having count("order".oid)>3
order by customer.fname 