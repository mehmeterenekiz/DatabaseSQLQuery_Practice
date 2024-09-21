-- 8.Soru: Herhangi bir ürün sipariş etmeyen müşterilerin adlarını görüntüleyin.
select customer.fname from customer 
left join "order" on customer.cid = "order".cid 
where "order".oid is null