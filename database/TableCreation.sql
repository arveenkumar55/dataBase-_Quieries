CREATE TABLE KeliesMathewSoper.dbo.Car  
   (CarID int PRIMARY KEY NOT NULL,  
    CarName varchar(25) NOT NULL,  
    Price int NULL, 
    CarType varchar(25) NOT NULL,
    CarColor varchar(25) NOT NULL,
    CarModel varchar(25) NOT NULL,
    ProductDescription text NULL)  
GO 

CREATE TABLE KeliesMathewSoper.dbo.SalesPerson  
   (ID int PRIMARY KEY NOT NULL,  
    Name varchar(25) NOT NULL,  
    contact int NULL, 
    email varchar(25) NOT NULL,
    S_address varchar(25) NOT NULL,)  
GO 

CREATE TABLE KeliesMathewSoper.dbo.Customer  
   (ID int PRIMARY KEY NOT NULL,  
    Name varchar(25) NOT NULL,  
    contact int NULL, 
    email varchar(25) NOT NULL,
	Zip_code varchar(25) NOT NULL, 
    S_address varchar(25) NOT NULL,)  
GO 

CREATE TABLE KeliesMathewSoper.dbo.Showroom  

   (  
    Name varchar(25) NOT NULL,
    car_id int NOT NULL,
    FOREIGN KEY (car_id) REFERENCES KeliesMathewSoper.dbo.Car(CarID)
    )
    
 GO
CREATE TABLE KeliesMathewSoper.dbo.Sale

   (sal_ID int  NOT NULL,  
    sal_price int NOT NULL,
    car_id int NOT NULL,
    DateOfSale varchar(25) NOT NULL,
    Buy_ID int  NOT NULL,
    commision float NOT NULL,
    FOREIGN KEY (Buy_ID) REFERENCES KeliesMathewSoper.dbo.Customer(ID),
    FOREIGN KEY (car_id) REFERENCES KeliesMathewSoper.dbo.Car(CarID),
    FOREIGN KEY (sal_ID) REFERENCES KeliesMathewSoper.dbo.SalesPerson(ID)
    )      
/*CREATE TABLE KeliesMathewSoper.dbo.buy

   (Buy_ID int  NOT NULL,  
    buy_price int NOT NULL,
    car_id int NOT NULL,
    DateOfbuy varchar(25) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES KeliesMathewSoper.dbo.Car(CarID),
    FOREIGN KEY (Buy_ID) REFERENCES KeliesMathewSoper.dbo.Customer(ID)
    )
   
GO
*/ 
