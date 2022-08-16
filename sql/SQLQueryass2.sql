create table Types(
ID int primary key,
Name varchar(255)
);

create table Authors(
ID int primary key,
Name varchar(255)
);

create table Publishions(
ID int primary key,
Name varchar(255),
Address varchar(255)
);

--drop table Publishions;

create table Books(
ID int primary key,
Name varchar(255),
Content text,
YearPublish date,
NumberPublish int,
Price decimal(16,0),
Qty int,
TypeID int foreign key references Types(ID),
PublishionsID int foreign key references Publishions(ID),
AuthorID int foreign key references Authors(ID)
);