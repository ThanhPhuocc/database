create table NguoiChiuTrachNhiem(
    Ten nvarchar(225) not null, 
	MaSoNCTN varchar(20) primary key,
);

create table LoaiSanPham(
    TenLoaiSP nvarchar(225) not null,
	MaLoaiSP varchar(20) primary key,
    MaSoNCTN varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaSoNCTN),
	
);

create table SanPham(
    MaSoSP varchar(20) primary key,
	NgaySanXuat date not null check(NgaySanXuat<= getdate()) default getdate(),
	MaLoaiSP varchar(20) foreign key references LoaiSanPham(MaLoaiSP),
	MaSoNCTN varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaSoNCTN),
	
);
drop table  SanPham;
drop table LoaiSanPham;
drop table NguoiChiuTrachNhiem;

insert into NguoiChiuTrachNhiem(Ten,MaSoNCTN)
values(N'Nguyễn Văn An','987688')

insert into LoaiSanPham(TenLoaiSP,MaLoaiSP,MaSoNCTN)
values(N'Máy tính sách tay Z37','Z37E','987688')

insert into SanPham(MaSoSP,NgaySanXuat,MaLoaiSP,MaSoNCTN)
values('Z37 111111','2009-12-12','Z37E','987688')

--bai 4
select * from NguoiChiuTrachNhiem;
select * from LoaiSanPham;
select * from SanPham;

--bai 5
select * from LoaiSanPham order by TenLoaiSP asc;

select * from NguoiChiuTrachNhiem order by Ten asc;

select * from SanPham where MaLoaiSP in
(select MaLoaiSP from LoaiSanPham where MaLoaiSP like 'Z37E');

select * from SanPham where MaSoNCTN in
(select MaSoNCTN from NguoiChiuTrachNhiem where Ten like N'Nguyễn Văn An') order by MaSoNCTN desc;

--bai 6
select count(*) as MaSoSP from SanPham where MaLoaiSP in
(select MaLoaiSP from LoaiSanPham);

select sum() from LoaiSanPham group by MaLoaiSP;

select * from SanPham a
inner join LoaiSanPham b on a.MaLoaiSP = b.MaLoaiSP

select a.*,b.TenLoaiSP,c.Ten from SanPham a
inner join LoaiSanPham b on a.MaLoaiSP = b.MaLoaiSP
inner join NguoiChiuTrachNhiem c on c.MaSoNCTN = b. MaSoNCTN





