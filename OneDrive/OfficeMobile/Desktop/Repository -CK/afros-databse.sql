create database AfroCoutureNaturalSalon;
use AfroCoutureNaturalSalon;
go
create table Advance(
    Employeeid int primary key,
    EmployeeName varchar(50) not null,
    amount int not null,
    NetCommissionPayment int,
    [Check] int null
);

create table DailyCommission1(Id int primary key ,
 [Date] Date,
   Employeeid int not null foreign key 
   references Advance(Employeeid),
    EmployeeName VARCHAR (50) not nULL,
    Commission  int not null
    
);


create table OperationalCosts1(
    Id int primary key,
    [Date]  date ,
    Item varchar(50) null,
    ExpenseDetails VARCHAR   null,
    Category VARCHAR(50)  null,
    ModeOfPayment VARCHAR(50) null,
    Amount int not null,
    ClearedExpenses int null,
    Debit int null,
    Balance int null,
    Checked int null
);

create table Sales1(
    Id int primary key,
    [Date] Date ,
    EmployeeName varchar(50) not null,
    [Sales_Rep] varchar(50) not null,
    ReceiptNo int  null,
    CategoryByService varchar(50)  null,
   [Service] varchar(50)  null,
    Product varchar(50)  null,
    SalesAmount int null,
    ProductCost int null,
    Commission int null,
    CommissionAdjustment inIt null,
    OtherAdjustment int null,
);

INSERT INTO Advance(Employeeid, EmployeeName, amount, NetCommissionPayment, [Check]) 
VALUES( 119,'Zurah',112000, 112000,283200);

use AfroCoutureNaturalSalon
INSERT INTO dbo.DailyCommission1(Id,[Date], Employeeid, EmployeeName, Commission)
VALUES
(625,'2024-12-01', 114, 'Samantha',17000),
(626,'2024-12-02', 114, 'Samantha',25500),
(627,'2024-12-03', 114, 'Samantha',7000),
(628,'2024-12-04', 114, 'Samantha',0),
(629,'2024-12-05', 114, 'Samantha',8000),
(630,'2024-12-06', 114, 'Samantha',18000),
(631,'2024-12-07', 114, 'Samantha',7000),
(632,'2024-12-08', 114, 'Samantha',31000),
(633,'2024-12-09', 114, 'Samantha',18500),
(634,'2024-12-10', 114, 'Samantha',17500),
(635,'2024-12-11', 114, 'Samantha',0),
(636,'2024-12-12', 114, 'Samantha',13000),
(637,'2024-12-13', 114, 'Samantha',29000),
(638,'2024-12-14', 114, 'Samantha',27000),
(639,'2024-12-15', 114, 'Samantha',27000),
(640,'2024-12-16', 114, 'Samantha',25000),
(641,'2024-12-17', 114, 'Samantha',17000),
(642,'2024-12-18', 114, 'Samantha',14500),
(643,'2024-12-19', 114, 'Samantha',23500),
(644,'2024-12-20', 114, 'Samantha',31000),
(645,'2024-12-21', 114, 'Samantha',46000),
(646,'2024-12-22', 114, 'Samantha',19000),
(647,'2024-12-23', 114, 'Samantha',40500),
(648,'2024-12-24', 114, 'Samantha',36500),
(649,'2024-12-25', 114, 'Samantha',0),
(650,'2024-12-26', 114, 'Samantha',0),
(651,'2024-12-27', 114, 'Samantha',0),
(652,'2024-12-28', 114, 'Samantha',24500),
(653,'2024-12-29', 114, 'Samantha',0),
(654,'2024-12-30', 114, 'Samantha',50500),
(655,'2024-12-31', 114, 'Samantha',0);

SELECT Commission, [Date],Id
FROM [AfroCoutureNaturalSalon].[dbo].[DailyCommission1] 
WHERE EmployeeName = 'Zurah';

SELECT SUM(Commission) AS TotalCommission
FROM [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
WHERE EmployeeName = 'Zurah';

delete from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1] 
 WHERE Id IN (118, 119, 120);

 Delete from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1] 
 WHERE EmployeeName = 'Samantha';

 update [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
 set Commission = 11700
 where Id = 605;

 select 'Total'as  [Employee Name], sum(Commission)
  as [Total Commission] from [AfroCoutureNaturalSalon].[dbo].
   [DailyCommission1] union all select EmployeeName, sum(Commission)
    as TotalCommission from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
     group by EmployeeName;

     Delete  from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
     where EmployeeName = 'Samatha';

    select * from (
        select EmployeeName as [Employee Name],
            sum(Commission) as [Total Commission]
        from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
        group by EmployeeName
        union all 
        select 'Total' as [Employee Name], sum(Commission) as TotalCommission
        from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
    ) as CombinedResults
    order by 
          case when [Employee Name] = 'Total' then 1 else 0 end,
          [Employee Name];
      
     select EmployeeName as [Employee Name],
      sum(Commission) as [Total Commission]
        from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
        group by EmployeeName
        union all 
        select 'Total' as EmployeeName, sum(Commission) as TotalCommission
        from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
        order by EmployeeName;


        select 'Total' as EmployeeName, sum(Commission) as TotalCommission, 1 as sortorder
        from [AfroCoutureNaturalSalon].[dbo].[DailyCommission1]
        order by EmployeeName;

        ALTER TABLE OperationalCosts1
        ALTER COLUMN ExpenseDetails VARCHAR(50);

        ALTER TABLE OperationalCosts1
        ALTER COLUMN Checked VARCHAR(5);

        ALTER TABLE OperationalCosts1
        DROP COLUMN Balance;

update OperationalCosts1 
set [Date] = '2024-12-01' where Id = 5;

        use AfroCoutureNaturalSalon
        go

        INSERT INTO OperationalCosts1(Id, [Date], Item,
         ExpenseDetails, 
          ModeOfPayment, Amount, 
         ClearedExpenses, Debit, 
          Checked) VALUES

         (210, '2024-12-24', 'salaries general',
          'CEO salary advance', 'Cash', 40000, null, 40000, 'OK');
           

            (202, '2024-12-31', 'Products Hanne',
            'Store purchase', 'Variable Hanne',
            'Cash',44000, null,44000,'OK'),

            (203, '2024-12-31','Salaries general', 
            'Beth salary advance', 'Salaries salon',
            'Cash',50000 ,null,50000,'OK');

            


update OperationalCosts1 
SET ExpenseDetails = 'Water bill (Nov-Dec)' 
where id = 187;

ALTER TABLE [AfroCoutureNaturalSalon].[dbo].[Sales1]
DROP COLUMN [OtherAdjustment];

select * from [AfroCoutureNaturalSalon].
[dbo].[OperationalCosts1] where [Date] = '2024-12-31';

ALTER TABLE Sales1
ADD ServiceId int;

ALTER TABLE Sales1
ADD CONSTRAINT FK_Sales1_ServiceDetails
FOREIGN KEY (ServiceId) REFERENCES ServiceDetails(ServiceId);

ALTER TABLE Sales1
DROP COLUMN [Commission];

use AfroCoutureNaturalSalon
go
ALTER TABLE ServiceDetails
DROP COLUMN Amount;


ALTER TABLE Sales1
ADD CONSTRAINT FK_Sales1_ServiceDetails
FOREIGN KEY (ServiceId) REFERENCES ServiceDetails(ServiceId);
create table ServiceDetails(
    ServiceId int primary key,
     ProductName varchar(50)  null,
     [Service] varchar(50)  null,
    Price int not null,
    Amount int not null,
    Commission int  null,
    );
    CREATE UNIQUE INDEX idx_unique_Service
    ON ServiceDetails([Service]);

    DROP INDEX idx_unique_ProductName_Service ON ServiceDetails;

    CREATE UNIQUE INDEX idx_unique_ProductName_Service
    ON ServiceDetails(ProductName, [Service]);



INSERT INTO ServiceDetails(ServiceId, ProductName,
[Service], Price, Commission) VALUES
(465,null,'Knotless Goddess Braids Short',120000,32000),
(470,null,'Knotless Braids Ezy',140000,40000),
(475,null,'Black Henna',20000,2000),
(480,null,'Bridal Deposit Two',100000,null),
(485,'Hanne Cocoa Butter','Butter',15000,null),
(490,null,'Bantu Knotts',70000,8000),
(500,null,'Twists and Twistsouts',45000,12000),
(510,null,'Styling Ext xl',100000,20000),
(515,null, 'Styling XL',30000,8000),
(520,'Beads','Beads',10000,null),
(525,null,'Micro Locs Own Hair', 200000,50000),
(530,null,'Feed in Conrows',70000,15000),
(535,null,'Unplaiting Threes Extension',110000,25000),
(540,null,'Spring Afro Crotchet',150000,17000),
(545,null,'Havana Crotchet',120000,17000),
(550,null,'Butterfly Locs',250000,50000),
(555,null,'Drawing Eyebrow',10000,4000),
(560,null,'Havana Braids ',150000,30000);

use AfroCoutureNaturalSalon
GO
create table ServiceCategory(   Id int ,
    Category VARCHAR (50) primary key,
    CategoryId int not null) 

INSERT INTO ServiceCategory(Id, Category, CategoryId) VALUES
(1,'Accessories', 10),
(2,'Barber', 20),
(3,'Braids', 30),
(4,'Bridal', 40),
(5,'Crotchets', 50),
(6,'Hair Care', 60),
(7,'Locks', 70),
(8,'Makeup', 80),
(9,'Pedicure and Manicure', 90),
(10,'Products-Hanne', 100),
(11,'Repair', 110),
(12,'Styles', 120),
(13,'Unplaiting', 130);

ALTER TABLE Sales1
ADD CONSTRAINT FK_Sales1_ServiceCategory
FOREIGN KEY (CategoryByService) REFERENCES ServiceCategory(Category);

USE AfroCoutureNaturalSalon
GO
insert into Sales1(Id, [Date], EmployeeName, 
[Sales_Rep],  CategoryByService,
ServiceId) values 
(1291, '2024-12-31', 'Prossy', 'Mercy',  'Hair Care', 95),
(1292,'2024-12-31','Ruth','Mercy','Hair Care',95),
(1293, '2024-12-31', 'Ruth', 'Mercy', 'Hair Care', 90),
(1294,'2024-12-31','Ruth','Mercy','Braids',350),
(1295, '2024-12-31','Kurthum', 'Mercy','Braids',225),
(1296,'2024-12-31','Sharon','Mercy','Styles',35),
(1297, '2024-12-31', 'Ruth', 'Mercy','Makeup', 20),
(1298,'2024-12-31','Favour','Mercy','Unplaiting',10),
(1299, '2024-12-31', 'Favour', 'Mercy','Styles', 60),
(1300,'2024-12-31','Prossy','Mercy','Styles',300),
(1301, '2024-12-31', 'Jacent', 'Mercy','Makeup', 20);


use AfroCoutureNaturalSalon
go
alter table Sales1
drop column ReceiptNo

UPDATE Sales1 set EmployeeName='Kurthum' where Id ='1130'

select * FROM Sales1 

insert into ServiceDetails (ServiceId,ProductName,[Service],Price,Commission)
VALUES (650,null,'Micro Twist Extension',300000,70000)

use AfroCoutureNaturalSalon
go
select * from ServiceDetails

select * from ServiceCategory

SELECT * from Sales1 where ServiceId = 595

--checking data
use AfroCoutureNaturalSalon
go
select * from Sales1 where [Date] ='2024-12-31'
select * from Sales1
 where ServiceId =120
update Sales1 
set ServiceId ='25' where Id ='493'
UPDATE Sales1
set ServiceId ='35' where Id ='502'


update Sales1
set EmployeeName ='Bonny' where Id ='355'

delete from Sales1
 where Id ='387'



UPDATE ServiceDetails
SET Commission = 3000
WHERE ServiceId = 415
 
 UPDATE ServiceDetails
 SET Commission =40000
 where ServiceId =315

 UPDATE ServiceDetails
 SET Commission =12000
 where ServiceId =250

 UPDATE ServiceDetails
 SET Commission =10000
 where ServiceId =355

 UPDATE ServiceDetails
 SET Commission =7500
 where ServiceId =65

 UPDATE ServiceDetails
 SET Commission =2500
 where ServiceId =385

 UPDATE ServiceDetails
 SET Commission =2000
 where ServiceId =200

 UPDATE ServiceDetails
 SET Commission =4000
 where ServiceId =110

USE AfroCoutureNaturalSalon
SELECT s1.*, sd.ProductName, sd.[Service], sd.Price, sd.Commission
FROM Sales1 s1
FULL JOIN ServiceDetails sd ON s1.ServiceId = sd.ServiceId
GROUP BY s1.Id, s1.[Date], s1.EmployeeName, s1.[Sales_Rep], s1.CategoryByService, s1.ServiceId, sd.ProductName, sd.[Service], sd.Price, sd.Commission

SELECT SUM(sd.Commission) AS TotalCommission
FROM Sales1 s1
JOIN ServiceDetails sd ON s1.ServiceId = sd.ServiceId

WHERE s1.[Date] = '2024-12-02';

select * from Sales1 where  EmployeeName ='Mercy'


select EmployeeId, EmployeeName, sum(Commission) as TotalCommission
from DailyCommission1
group by EmployeeId, EmployeeName

use AfroCoutureNaturalSalon
go
create table ClientCount ([Date] date primary key,
DayOfTheWeek int, ClientCount int
)

insert into ClientCount ([Date], DayOfTheWeek, ClientCount)
 VALUES
('2024-12-01', 01,13),
('2024-12-02', 02,26),
('2024-12-03', 03,12),
('2024-12-04', 04,20),
('2024-12-05', 05,26),
('2024-12-06', 06,40),
('2024-12-07', 07,28),
('2024-12-08', 08,17),
('2024-12-09', 09,19),
('2024-12-10', 10,24),
('2024-12-11', 11,31),
('2024-12-12', 12,28),
('2024-12-13', 13,32),
('2024-12-14', 14,35),
('2024-12-15', 15,16),
('2024-12-16', 16,16),
('2024-12-17', 17,22),
('2024-12-18', 18,27),
('2024-12-19', 19,26),
('2024-12-20', 20,50),
('2024-12-21', 21,46),
('2024-12-22', 22,21),
('2024-12-23', 23,41),
('2024-12-24', 24,30),
('2024-12-25', 25,0),
('2024-12-26', 26,0),
('2024-12-27', 27,31),
('2024-12-28', 28,19),
('2024-12-29', 29,17),
('2024-12-30', 30,27),
('2024-12-31', 31,17);


