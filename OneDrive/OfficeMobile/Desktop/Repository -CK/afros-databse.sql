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
