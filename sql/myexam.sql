create table Departments(
DepartID int primary key,
DepartName nvarchar(50) not null,
Description nvarchar(100) not null
);


create table Employees(
EmpCode varchar(6) primary key,
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
Birthday date not null default GETDATE(),
Gender bit Default 1,
Address nvarchar(100) not null unique,
Salary decimal(16,0) not null check(Salary>0) default 1,
DepartID int not null foreign key references Departments(DepartID)
);


insert into Departments(DepartID,DepartName,Description) values
('1','Phòng hành chính','Giải quyết thắc mắc cho nhân viên'),
('2','Phòng kế toán','Giải quyết các vấn đề về tài chính, lương thưởng'),
('3','Phòng nhân sự','Tuyển dụng nhân viên')
select * from Departments

insert into Employees(EmpCode,FirstName,LastName,Birthday,Address,Salary) values
('A12','Nguyễn Xuân','Tuấn','9/7/1997','Hà Nội','10000'),
('A13','Nguyễn Thị','Vy','26/7/1998','Hải Phòng','20000'),
('A14','Nguyễn Minh','Tâm','9/7/1999','Đà Nẵng','30000')
select * from Employees