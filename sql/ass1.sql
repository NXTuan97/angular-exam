create table Products(
ID int primary key identity(1,1),
Date date not null default GETDATE()
);


create table Customers(
IdCard int primary key not null,
Name varchar(50) not null unique,
Address varchar(255),
proID int foreign key references Products(ID)
);


create table Orders(
PhoneNumber varchar(20) primary key not null,
Type varchar(50) not null unique,
proID int not null foreign key references Products(ID),
CusID int foreign key references Customers(idCard)
);
