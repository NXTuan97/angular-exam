create table Subjects(
ID int primary key,
Name varchar(255)
);

create table Classrooms(
Code int primary key,
Name varchar(50),
Classroom varchar(255)
);

create table Students(
ID int primary key,
Birthday datetime,
Name varchar(100),
ClassID int foreign key references Classrooms(Code),
);

create table Sups(
StuID int foreign key references Students(ID),
SubID int foreign key references Subjects(ID)
);

create table Results(
ID int primary key,
Poin float(10),
Result varchar(20),
StuID int foreign key references Students(ID),
SubID int foreign key references Subjects(ID),
);