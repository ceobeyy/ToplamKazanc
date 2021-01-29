select ProductName as ÜrünAdi,sum(od.UnitPrice*od.Quantity) as ToplamKazanç
from Products as p inner join [Order Details] as od on p.ProductID = od.ProductID
inner join Orders as o on o.OrderID = od.OrderID group by ProductName