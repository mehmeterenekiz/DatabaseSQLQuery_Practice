-- 7. Soru: Ortalama ürün fiyatından daha ucuz olan ürünlerin adlarını,
-- açıklamalarını ve fiyatlarını görüntüleyin.

select name, description, price from item 
where price < (select avg(price) from item) 