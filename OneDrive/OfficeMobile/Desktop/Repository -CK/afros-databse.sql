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


INSERT INTO DailyCommission1(Id,[Date], Employeeid, EmployeeName, Commission)
VALUES
(594,'2024-12-01', 119, 'Zurah',0),
(595,'2024-12-02', 119, 'Zurah',0),
(596,'2024-12-03', 119, 'Zurah',0),
(597,'2024-12-04', 119, 'Zurah',22000),
(598,'2024-12-05', 119, 'Zurah',19500),
(599,'2024-12-06', 119, 'Zurah',19000),
(600,'2024-12-07', 119, 'Zurah',9500),
(601,'2024-12-08', 119, 'Zurah',0),
(602,'2024-12-09', 119, 'Zurah',0),
(603,'2024-12-10', 119, 'Zurah',17500),
(604,'2024-12-11', 119, 'Zurah',0),
(605,'2024-12-12', 119, 'Zurah',117000),
(606,'2024-12-13', 119, 'Zurah',21000),
(607,'2024-12-14', 119, 'Zurah',24000),
(608,'2024-12-15', 119, 'Zurah',0),
(609,'2024-12-16', 119, 'Zurah',0),
(610,'2024-12-17', 119, 'Zurah',25000),
(611,'2024-12-18', 119, 'Zurah',16500),
(612,'2024-12-19', 119, 'Zurah',0),
(613,'2024-12-20', 119, 'Zurah',26500),
(614,'2024-12-21', 119, 'Zurah',30500),
(615,'2024-12-22', 119, 'Zurah',28000),
(616,'2024-12-23', 119, 'Zurah',50000),
(617,'2024-12-24', 119, 'Zurah',19000),
(618,'2024-12-25', 119, 'Zurah',0),
(619,'2024-12-26', 119, 'Zurah',0),
(620,'2024-12-27', 119, 'Zurah',22500),
(621,'2024-12-28', 119, 'Zurah',0),
(622,'2024-12-29', 119, 'Zurah',0),
(623,'2024-12-30', 119, 'Zurah',23000),
(624,'2024-12-31', 119, 'Zurah',10000);
