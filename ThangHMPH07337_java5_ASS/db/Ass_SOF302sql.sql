Create database QLNV_SOF302_Ass

Use QLNV_SOF302_Ass

Drop table Users
Create table Users(
	Username		Varchar(50) not null primary key,
	Password		Varchar(50) not null,
	Fullname		Nvarchar(50) not null
)

Drop table Departs
Create table Departs(
	Id		int identity not null primary key,
	Name	Nvarchar(50) not null
)

Drop table Staffs
Create table Staffs(
	Id			int identity not null primary key,
	Name		Nvarchar(50) not null,
	Gender		bit not null,
	Birthday	Datetime,
	Email		Varchar(30),
	Phone		char(10),
	Salary		Float,
	Lever		int check(Lever > 0 and Lever <11) not null,
	Notes		Text,
	Departid	int  not null Foreign key References Departs
)

Drop table Records
Create table Records(
	Id			int identity not null primary key,
	Type		bit not null,
	Reason		Nvarchar(30),
	Date		Datetime,
	Staffid		int	not null Foreign key References Staffs
)

Select * from Users
Select * from Departs
Select * from Staffs
Select * from Records

Insert into Users values('ducna', '123', N'Nguyễn Anh Đức')
Insert into Users values('thanghm', '123', N'Huỳnh Mạnh Thắng')
Insert into Users values('nv01', '123', N'Nhân viên 01')
Insert into Users values('nv02', '123', N'Nhân viên 02')
Insert into Users values('nv03', '123', N'Nhân viên 03')

Insert into Departs values(N'Tuyển dụng')
Insert into Departs values(N'Kinh doanh')
Insert into Departs values(N'Marketing')
Insert into Departs values(N'IT')

Insert into Staffs values(N'Nguyễn Anh Đức', 1, '12/13/2000', 'ducnaph07089@fpt.edu.vn', '0333188195', '5000000', '1', null, 4)
Insert into Staffs values(N'Huỳnh Mạnh Thắng', 1, null, 'thanghm@fpt.edu.vn', null, '15000000', '6', null, 4)
Insert into Staffs values(N'Nhân viên 01', 0, '11/29/2000', 'nv01@fpt.edu.vn', '0333182225', '1000000', '1', null, 1)
Insert into Staffs values(N'Nhân viên 02', 0, '02/05/1998', 'nv02@fpt.edu.vn', '0331247863', '7000000', '1', null, 2)
Insert into Staffs values(N'Nhân viên 03', 0, '12/22/1999', 'nv03@fpt.edu.vn', '0387435694', '12000000', '1', null, 1)

Insert into Records values(1, null, '01/01/2020', 1)
Insert into Records values(0, null, '01/01/2020', 1)
Insert into Records values(1, null, '05/01/2020', 2)
Insert into Records values(0, null, '07/01/2020', 4)
Insert into Records values(0, null, '09/01/2020', 3)

delete from Staffs
delete from Records