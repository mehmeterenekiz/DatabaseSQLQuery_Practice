-- 5. Soru: 05.09.2024 tarihinde sipariş alınan illeri görüntüleyiniz. İç içe geçmiş sorguları kullanarak çözün.

-- subquery ile 
select city from address 
where aid in (select aid from "order" where odate = '2024.09.05')

-- inner join ile 
select a.city from address as a inner join "order" as o on a.aid = o.aid 
where o.odate = '2024.09.05'
