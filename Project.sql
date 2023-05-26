create table ApartmentResidents (
ResidentID int PRIMARY KEY,
    FirstName varchar(max),
    LastName varchar(max),
    FlatNumber int,
	OwnershipType varchar(max),
	ContactNumber int,
	Email varchar(max),
	MoveInDate datetime
)

insert into ApartmentResidents values(
1,'sai','kiran',111,'owner',222,'saikiran@gmail.com','06-06-2006'
)

Create table MonthlyMaintenance(
ID int primary key,
ResidentID int foreign key references ApartmentResidents(ResidentID),
Month varchar(20),
Year int,
MaintenanceAmount decimal(10,2),
PaymentDate Date,
PaymentStatus varchar(20),
PaymentMethodID int,
CategoryID int,
Notes Varchar(100)
)


create table PaymentMethods(

PaymentMethodID int ,
PaymentMethodName varchar(50),
Description varchar(100),
)

create table ExpenceTracking (
ID int Identity(1,1) primary key,
ExpenseDate date,
ExpenseType varchar(50),
ExpenseAmountdecimal decimal(10,2),
Description varchar(100),
ResidentID int foreign key references ApartmentResidents(ResidentID),
Receipt varbinary(max)
)

insert into  ExpenceTracking values(
'06-06-2006','Repair',100,'car repair',1,100
)

select * from ExpenceTracking

Create table users(

UserID  int IDENTITY(1,1) primary key,
UserName varchar(50),
Password varchar(100),
Email varchar(100),
FullName varchar(100),
CreatedAt datetime,
UpdatedAt datetime
)


Create table tags(
TagID int IDENTITY(1,1) primary key,
TagName varchar(50),
Description varchar(100)

)

create table Expensetags(
ExpenseTagID int Identity(1,1) primary key,
ExpenseID int foreign key references Tags(TagID),
TagID int foreign key references ExpenceTracking(ID)
)

create table ExpenseCategories (
ExpenseCategoryID int Identity(1,1) primary key,
CategoryID int foreign key references ExpenceTracking(ID)
)

create table Registration(
EmailID varchar(max),
Password varchar(max)
)

select * from Registration


create table Home (
ID int Identity(1,1) primary key,
ExpenseDate datetime,
ExpenseType varchar(50),
ExpenseAmount decimal(10,2),
Description varchar(100),
ResidentID int foreign key references ApartmentResidents(ResidentID),
)
create table ApartmentResidents1 (
ResidentID int Identity(1,1) PRIMARY KEY,
    FirstName varchar(max),
    LastName varchar(max),
    FlatNumber int,
	OwnershipType varchar(max),
	ContactNumber int,
	Email varchar(max),
	MoveInDate datetime
)