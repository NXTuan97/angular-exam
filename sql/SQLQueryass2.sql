create table Types(
ID int primary key identity(1,1),
Name nvarchar(255) not null unique
);

create table Authors(
ID int primary key identity(1,1),
Name nvarchar(255) not null unique
);

create table Publishions(
ID int primary key identity(1,1),
Name nvarchar(255) not null unique,
Address varchar(255)
);

--drop table Publishions;

create table Books(
ID int primary key identity(1,1),
Name nvarchar(255) not null unique,
Content nvarchar(255),
YearPublish date not null default GETDATE(),
NumberPublish int not null check(NumberPublish > 0) default 1,
Price decimal(16,0) not null check(Price >= 0) default 0 ,
Qty int not null check(Qty >= 0) default 0,
TypeID int not null foreign key references Types(ID),
PublishionsID int not null foreign key references Publishions(ID),
AuthorID int foreign key references Authors(ID)
);


drop table Types
drop table Authors
drop table Publishions
drop table Books
