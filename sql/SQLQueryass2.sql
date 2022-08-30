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
    


--LIỆT KÊ
select * from Books;
select Name,Content,YearPublish as namxuatban,Price from Books;


--SẮP XẾP
select * from Books order by Price asc;
select * from Books order by Price desc;
--asc: --number: low-high
		--String: alphabe
		--date time: old-new
--desc > < asc

select top 1 * from Books order by Price desc;

select top 50 percent * from Books order by Price desc;

--lỌC(FILTER)

select * from Books where TypeID = 2;
select * from Books where TypeId = 1 and Qty > 0;
select * from Books where TypeID = 1 or NumberPublish = 1;
select * from Books where YearPublish >= '2022-01-01';
select * from Books where Name like N'Thủy Hử';
select * from Books where YearPublish between '2021-01-01' and '2022-09-01';
select * from Books where NumberPublish in (1,2,3);
select * from Books where NumberPublish in (1,2,3) order by Price desc;

--SEARCH
select * from Books where Name like N'Thủy%';--start of
select * from Books where Name like N'%ử';--end of
select * from Books where Name like N'ử%';--contain


--THỐNG KÊ
 select count(*) as soluong from Books;
 select sum(Price) as tongtien from Books;
 select avg(Price) as Tvc from Books;
 select sum(Price*Qty) as tongtienthucsu from Books;

 select count(*) as soluong, TypeID from Books group by TypeID;
 select sum(Price * Qty) as tienhang, TypeID from Books group by TypeID;

 --MỞ RỘNG


 --subquery
 select * from Books;
 select * from Types;


 select * from Books where TypeID in       --TRUY VẤN CON
  (select ID from Types where Name like N'Văn học hiện đại');


  --JOIN TABLE
  select Books.Name, Books.Content, Types.Name as TypeName from Books
  inner join Types on Types.ID = Books.TypeID;