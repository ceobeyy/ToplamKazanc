--select(seçmek)
Select ContactName Adi ,CompanyName Sirketadi,City Şehir from Customers

Select * from Customers where City = 'London'
--Case insensitive
select * from Products where CategoryID = 1 or CategoryID = 3

select * from Products where CategoryID = 1 and UnitPrice >= 10
--Order by (Sıralamak)
--asc (artan) desc(azalan)
select * from Products where CategoryID=1 order by UnitPrice asc
--satırların sayısını ver (count)
select count(*) from Products where CategoryID = 2
-- fiyatı 20 den büyük olan ürünleri katagori id lere göre grupla ama catid 10 dan küçük olsun
select CategoryId,count(*) from products where UnitPrice>20 group by CategoryID having count(*)<10

select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName 
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10
-- left join solda olup sağda olmayanları da getir demek (product sol order details sağ)
select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID

-- left join solda olup sağda olmayanları da getir demek (customer sol order sağ)
select * from Customers c left join Orders o 
on c.CustomerID = o.CustomerID
where o.CustomerID is null -- hiç sipariş vermemiş 








