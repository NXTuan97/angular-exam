create table LOAIDICHVU(
MaLoaiDV varchar(20) primary key ,
TenLoaiDV nvarchar(255) not null unique
);

create table DONGXE(
DongXe varchar(20) not null primary key,
HangXe varchar(20) not null,
SoChoNgoi int not null
);

create table MUCPHI(
MaMP varchar(20) primary key,
DonGia decimal(16,0) not null check(DonGia >= 0) default 0,
MoTa nvarchar(255) not null
);

create table NHACUNGCAP(
MaNhaCC varchar(20) primary key,
TenNhaCC nvarchar(255) not null unique,
DiaChi nvarchar(255) not null,
SoDT int not null unique,
MaSoThue int not null unique 
);

create table DANGKICUNGCAP(
MaDangKiCC varchar(20) primary key,
NgayBatDauCungCap date not null default GETDATE(),
NgayKetThucDangKi date not null default GETDATE(),
SoLuongXeDangKi int not null,
MaLoaiDVid varchar(20) not null foreign key references LOAIDICHVU(MaLoaiDV),
DongXeid varchar(20) not null foreign key references DONGXE(DongXe),
MaMPid varchar(20) not null foreign key references MUCPHI(MaMP),
MaNhaCCid varchar(20) not null foreign key references NHACUNGCAP(MaNhaCC)
);
drop table MUCPHI
drop table DANGKICUNGCAP
drop table DONGXE
drop table LOAIDICHVU
drop table NHACUNGCAP




insert into DONGXE(DongXe,HangXe,SoChoNgoi) values
('Hiace','Toyota','16'),
('Vios','Toyota','5'),
('Escape','Ford','5'),
('Cerato','KIA','7'),
('Forte','KIA','5'),
('Starex','Huyndai','7'),
('Grand-i10','Huyndai','7')
select * from DONGXE


insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV) values
('DV01',N'Dịch vụ xe taxi'),
('DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03',N'Dịch vụ xe cho thuê theo hợp đồng')
select * from LOAIDICHVU

insert into MUCPHI(MaMP,DonGia,Mota) values 
('MP01','10.000',N'Áp dụng từ tháng 1/2015'),
('MP02','15.000',N'Áp dụng từ tháng 2/2015'),
('MP03','20.000',N'Áp dụng từ tháng 1/2010'),
('MP04','25.000',N'Áp dụng từ tháng 2/2011')
select * from MUCPHI

