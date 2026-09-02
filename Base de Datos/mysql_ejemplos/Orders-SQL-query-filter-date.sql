select * from Orders
where 
year(OrderDate)=1996 and month(OrderDate)=07 and day(OrderDate)=04;