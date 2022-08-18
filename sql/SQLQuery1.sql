--CREATE DATA
insert into Types(Name) values(N'V?n h?c n??c ngoài');
insert into Types(Name) values(N'V?n h?c c? ??i'),(N'V?n h?c hi?n ??i');
--READ
select * from Types;



insert into Authors(Name) values(N'Xuân Qu?nh'),(N'H? Xuân H??ng');
select * from Authors;

insert into Publishions(Name,Address) values(N'NXB Tu?i Tr?',N'20 Quang Trung Hà ?ông');
select * from Publishions;

insert into Books(Name,Content,TypeID,PublishionsID,AuthorID) values(N'Ngôi nhà nh? trên th?o nguyên',N'Tình c?m hành ??ng',3,1,2)
insert into Books(Name,Content,TypeID,PublishionsID,AuthorID) values(N'Th?y H?',N'Tình c?m hành ??ng',3,1,2)
select * from Books;


--UPDATE
update Books set Price = 50000 where ID = 1;
update Books set NumberPublish = 2, Qty = 10 where ID=1

--DELETE
delete from Books where id = 4;

