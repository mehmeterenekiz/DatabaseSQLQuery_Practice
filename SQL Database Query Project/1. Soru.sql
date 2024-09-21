-- 1. Soru: 04.09.2024 tarihinden önce sipariş veren müşteri adlarını ve telefon numaralarını görüntüleyin.
select fname, lname, phone, odate 
from Customer as c inner join "order" as o on c.cid = o.cid 
where o.odate < '2024.09.04' 
