--Query1
select  Distinct carName from KeliesMathewSoper.dbo.Car v ,KeliesMathewSoper.dbo.Sale s where v.CarID =s.car_id;

--Query2
select sum(sal_price) from KeliesMathewSoper.dbo.Sale

--Query3
select  Distinct Name from KeliesMathewSoper.dbo.sale s ,KeliesMathewSoper.dbo.Customer c, KeliesMathewSoper.dbo.Car where s.Buy_ID =c.ID and c.Zip_code='4400';
--Query4
select v.carName,sal_price,sal_ID from KeliesMathewSoper.dbo.Car v ,KeliesMathewSoper.dbo.Sale s where v.CarID =s.car_id;
 --Query5
 select v.carID,v.carName,v.Price,v.CarColor,v.ProductDescription,sal_price,sal_ID,DateOfSale,Buy_ID from KeliesMathewSoper.dbo.Car v ,KeliesMathewSoper.dbo.Sale s where v.CarID =s.car_id;

--Query6
select * from  KeliesMathewSoper.dbo.Customer c,KeliesMathewSoper.dbo.SalesPerson s,KeliesMathewSoper.dbo.Sale k where c.ID=k.Buy_id and s.ID=k.sal_id 

--/Query7

SELECT s.sal_ID, SUM(s.Commision) as TotalCommsion
FROM KeliesMathewSoper.dbo.sale s
GROUP BY s.sal_ID
ORDER BY SUM(s.Commision) ;



--Query8

select p.Name ,count(s.car_id) from  KeliesMathewSoper.dbo.sale s,KeliesMathewSoper.dbo.SalesPerson p where s.sal_ID=p.ID and p.Name LIKE 'J%' and DateOfsale='01/04/2018' group by(p.Name)


--Query9

UPDATE  KeliesMathewSoper.dbo.Car
SET Price='200000'
WHERE CarID = 1;

--Query10
UPDATE KeliesMathewSoper.dbo.Customer SET contact = 111222333 WHERE ID = 1;


--Query11

 select max(s.sal_price) from  KeliesMathewSoper.dbo.Sale s 
 select min(s.sal_price) from  KeliesMathewSoper.dbo.Sale s
 select avg(s.sal_price) from  KeliesMathewSoper.dbo.Sale s

--Quer12

select v.carID,v.carName,v.Price,v.CarColor,v.ProductDescription,sal_price,sal_ID,DateOfSale,Buy_ID from KeliesMathewSoper.dbo.Car v ,KeliesMathewSoper.dbo.Sale s where v.CarID NOT IN (Select s.car_id from KeliesMathewSoper.dbo.Sale s)

--Query13
 select v.carID,v.carName,v.Price,v.CarColor,v.ProductDescription,sal_price,sal_ID,DateOfSale,Buy_ID from KeliesMathewSoper.dbo.Car v ,KeliesMathewSoper.dbo.Sale s where v.CarID =s.car_id and s.DateOfSale>=DATEADD(MONTH,-4,GETDATE());

--Query14

select Distinct s.Name from KeliesMathewSoper.dbo.SalesPerson s, KeliesMathewSoper.dbo.Sale k where s.ID=k.sal_ID and DateOfSale='01/04/2018'

--Query15
select sum(s.commision),sum(s.sal_price) from KeliesMathewSoper.dbo.Sale s group by Month(s.DateOfSale) 
