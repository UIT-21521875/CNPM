create database CNPM
GO

use CNPM
GO

-- Tao bang SANPHAM
 CREATE TABLE SANPHAM
 (
	MASP NVARCHAR(50) NOT NULL,
    MATL NVARCHAR(50) NOT NULL,
    TENSP NVARCHAR(100) NOT NULL,
    NHAPH NVARCHAR(100) NOT NULL,
    NGPH DATE,
    NENTANG NVARCHAR(100) NOT NULL,
	MATTSP NVARCHAR(50) NOT NULL,
    GIATHUE DECIMAL(10,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (MASP),
    FOREIGN KEY (MATL) REFERENCES THELOAI(MATL),
	FOREIGN KEY (MATTSP) REFERENCES TINHTRANGSP(MATTSP)
 );
 GO

 -- TAO BANG THE LOAI
 CREATE TABLE THELOAI
 (
	MATL NVARCHAR(50) NOT NULL,
    TENTL VARCHAR(50) NOT NULL 
    PRIMARY KEY (MATL)
 );
 GO


 -- TAO BANG KHACHHANG
  CREATE TABLE KHACHHANG
 (
	MAKH NVARCHAR(50) NOT NULL,
    DIEMTICH INT NOT NULL DEFAULT 0,   
    CCCD BIGINT NOT NULL,
    HOTEN NVARCHAR(50) NOT NULL,
    SODT NVARCHAR(50) NOT NULL,
    NGSINH DATE,
    EMAIL NVARCHAR(100) NOT NULL,
    DIACHI NVARCHAR(255) NOT NULL,
	PRIMARY KEY (MAKH),
 );
 GO

 -- TAO BANG PHIEUCSKH
   CREATE TABLE PHIEUCSKH
 (
	MACSKH NVARCHAR(50) NOT NULL,
    MAKH NVARCHAR(50) NOT NULL,
    NGLAP DATE NOT NULL DEFAULT GETDATE(),
    NOIDUNG NVARCHAR(255) NOT NULL,
    PRIMARY KEY (MACSKH),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)    
 );
 GO

 -- TAO BANG NHANVIEN
    CREATE TABLE NHANVIEN
 (
	MANV NVARCHAR(50) NOT NULL,
    CHUCVU NVARCHAR(50) NOT NULL,
    TINHTRANG INT NOT NULL DEFAULT 0, -- 1: ĐANG LAM VIEC && 0: CHUA LAM VIEC
    NGBDL DATE NOT NULL,
	CCCD INT NOT NULL,
    HOTEN NVARCHAR(50) NOT NULL,
    SODT NVARCHAR(50) NOT NULL,
    NGSINH DATE,
    EMAIL NVARCHAR(100) NOT NULL,
    DIACHI NVARCHAR(255) NOT NULL,
    PRIMARY KEY (MANV),  
 );
 GO

 -- TAO BANG CTUUDAI
    CREATE TABLE CTUUDAI
 (
	MACTUD NVARCHAR(50) NOT NULL,
    TENCTUD NVARCHAR(50) NOT NULL,
    MOTA NVARCHAR(255) NOT NULL DEFAULT N'Chưa có mô tả',
    NGBD DATE NOT NULL,
    NGKT DATE NOT NULL,
	PHANTRAM INT NOT NULL,
    PRIMARY KEY (MACTUD)   
 ); 
 GO

 -- TAO BANG HOADON
  CREATE TABLE HOADON
 (
	MAHD NVARCHAR(50) NOT NULL,
    MANV NVARCHAR(50) NOT NULL,
    MAKH NVARCHAR(50) NOT NULL,
    MACTUD NVARCHAR(50) NOT NULL,
    NGLAPHD DATE NOT NULL,
    NGTRAG DATE NOT NULL,
    TONGTIEN DECIMAL(12,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (MAHD),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH),
    FOREIGN KEY (MACTUD) REFERENCES CTUUDAI(MACTUD)
 );
 GO

-- TAO BANG CHITIETHD
     CREATE TABLE CHITIETHD
 (
    MAHD NVARCHAR(50) NOT NULL,
    MASP NVARCHAR(50) NOT NULL,
    COUNT INT NOT NULL DEFAULT 0,
    PRIMARY KEY CLUSTERED ([MAHD] ASC, [MASP] ASC),
	FOREIGN KEY (MAHD) REFERENCES HOADON(MAHD),
	FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)    
 ); 
 GO
INSERT INTO CHITIETHD (MAHD, MASP, COUNT)
VALUES ('HD0001', 'MASP0001', 2);select HOADON.*, CHITIETHD.MASP, CHITIETHD.COUNT from HOADON INNER JOIN CHITIETHD ON HOADON.MAHD=CHITIETHD.MAHD

SEL
 -- TAO BANG BAO CAO
      CREATE TABLE BAOCAO
 (
	MABC NVARCHAR(50) NOT NULL,
    MAHD NVARCHAR(50) NOT NULL,
    THANGBC INT NOT NULL,
    NGLAPBC DATE NOT NULL,
    DOANHTHU DECIMAL(12,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (MABC),
	FOREIGN KEY (MAHD) REFERENCES HOADON(MAHD)  
 ); 
 GO

-- TAO BANG TINHTRANGSP
      CREATE TABLE TINHTRANGSP
 (
	MATTSP NVARCHAR(50) NOT NULL,
    TRANGTHAI NVARCHAR(50) NOT NULL,
    PRIMARY KEY (MATTSP) 
 ); 
 GO
 -- TAO BANG TAI KHOAN
   CREATE TABLE TAIKHOAN
 (
	USERNAME NVARCHAR(100) ,
    PASSWORD NVARCHAR(255) NOT NULL DEFAULT 0,
    TYPE INT NOT NULL DEFAULT 0,-- 1:Chủ cửa hàng && 0: Nhân viên
    PRIMARY KEY (USERNAME),
 );
 go

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (1, 123456789, 'Nguyen Van A', '0123456789', '1990-01-01', 'nguyenvana@gmail.com', '123 ABC Street');

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (2, 987654321, 'Tran Thi B', '0987654321', '1995-05-10', 'tranthib@gmail.com', '456 XYZ Street');

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (3, 456123789, 'Le Van C', '0123789456', '1988-12-15', 'levanc@gmail.com', '789 PQR Street');

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (4, 789456123, 'Pham Thi D', '0945678123', '1992-07-20', 'phamthid@gmail.com', '321 LMN Street');

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (5, 654321987, 'Vu Van E', '0978123456', '1998-03-05', 'vuvane@gmail.com', '654 EFG Street');
select * from THONGTIN

INSERT INTO NHANVIEN (MANV, MATT, CHUCVU, TINHTRANG, NGBDL)
VALUES (101,1 , 'Quan ly', 1, '2020-01-01');

INSERT INTO NHANVIEN (MANV, MATT, CHUCVU, TINHTRANG, NGBDL)
VALUES (102, 2, 'Nhan vien ban hang', 1, '2021-02-15');

INSERT INTO NHANVIEN (MANV, MATT, CHUCVU, TINHTRANG, NGBDL)
VALUES (103,3, 'Ke toan', 1, '2019-05-10');

INSERT INTO NHANVIEN (MANV, MATT, CHUCVU, TINHTRANG, NGBDL)
VALUES (104,4, 'Nhan vien kho', 0, '2022-07-20');

INSERT INTO NHANVIEN (MANV, MATT, CHUCVU, TINHTRANG, NGBDL)
VALUES (105, 5, 'Nhan vien CSKH', 1, '2023-03-05');

-- Tạo check constraint cho giá thuê:
ALTER TABLE SANPHAM
ADD CONSTRAINT CHK_GIATHUE
CHECK (GIATHUE >= 0);
-- Tạo check constraint cho tổng tiền của hóa đơn:
ALTER TABLE HOADON
ADD CONSTRAINT CHK_TONGTIEN
CHECK (TONGTIEN >= 0);
-- Tạo check constraint cho ngày trả game và ngày lập hóa đơn của hóa đơn:
ALTER TABLE HOADON
ADD CONSTRAINT CK_HOADON_NGTRAG_NGLAPHD
CHECK (NGTRAG >= NGLAPHD);
-- Tạo check constraint cho ngày bắt đầu và ngày kết thúc của hóa đơn:
ALTER TABLE CTUUDAI
ADD CONSTRAINT CK_CTUUDAI_NGBD_NGKT
CHECK (NGBD <= NGKT);
-- tạo check constraint cho CCCD  sao cho chỉ được nhập quá 12 số
ALTER TABLE NHANVIEN
ADD CONSTRAINT CHK_CCCD_LENGTH CHECK (LEN(CCCD) <= 12);
-- Tạo trigger để tự động cập nhật điểm tích lũy (DIEMTICH) của khách hàng dựa trên số ngày thuê của hóa đơn:
CREATE TRIGGER Trg_UpdateDiemTich
ON HOADON
AFTER INSERT
AS
BEGIN
    UPDATE KHACHHANG
    SET DIEMTICH = KHACHHANG.DIEMTICH + DATEDIFF(DAY, inserted.NGLAPHD, inserted.NGTRAG)
    FROM KHACHHANG
    INNER JOIN inserted ON KHACHHANG.MAKH = inserted.MAKH;
END;

-- Tạo trigger tự động tạo mã nhân viên (MANV) duy nhất khi thêm mới một nhân viên vào bảng NHANVIEN
CREATE TRIGGER Trg_GenerateEmployeeCode
ON NHANVIEN
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_manv NVARCHAR(50);
    SET @next_manv = 'NV' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MANV, LEN(MANV) - 2) AS INT)), 0) + 1 FROM NHANVIEN) AS NVARCHAR(4)), 4);

    INSERT INTO NHANVIEN (MANV, CHUCVU, TINHTRANG, NGBDL, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
    SELECT @next_manv,  CHUCVU, TINHTRANG, NGBDL, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI
    FROM inserted;
END;

drop trigger Trg_GenerateEmployeeCode
INSERT INTO NHANVIEN (CHUCVU, TINHTRANG, NGBDL, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES ('Chức vụ', 1, '2023-06-12', 123456, N'Họ và Tên', '0123456789', '1990-01-01', 'email@example.com', N'Địa chỉ');
select * from nhanvien 
delete from nhanvien
-- Tạo trigger tự động tạo mã khách hàng (MAKH) duy nhất khi thêm mới một khách hàng vào bảng KHACHHANG
CREATE TRIGGER Trg_GenerateCustomerCode
ON KHACHHANG
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_makh NVARCHAR(50);
    SET @next_makh = 'KH' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MAKH, LEN(MAKH) - 2) AS INT)), 0) + 1 FROM KHACHHANG) AS NVARCHAR(4)), 4);

    INSERT INTO KHACHHANG (MAKH, DIEMTICH, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
    SELECT @next_makh, DIEMTICH, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI
    FROM inserted;
END;
INSERT INTO KHACHHANG ( CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (123456789, 'Nguyễn Văn A', '0987654321', '1990-01-01', 'nguyenvana@example.com', 'Địa chỉ 1');
INSERT INTO KHACHHANG ( CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (123456789, 'Nguyễn Văn A', '0987654321', '1990-01-01', 'nguyenvana@example.com', 'Địa chỉ 1');
select * from khachhang
delete from khachhang
-- Tạo trigger tự động tạo mã thể loại (MATL) duy nhất khi thêm mới một thể loại vào bảng THELOAI
CREATE TRIGGER Trg_GenerateCategoryCode
ON THELOAI
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_matl NVARCHAR(50);
    SET @next_matl = 'TL' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MATL, LEN(MATL) - 2) AS INT)), 0) + 1 FROM THELOAI) AS NVARCHAR(4)), 4);

    INSERT INTO THELOAI (MATL, TENTL)
    SELECT @next_matl, TENTL
    FROM inserted;
END;
insert into theloai (tentl) values (123)
select * from theloai
delete from theloai
-- Tạo trigger tự động tạo mã chăm sóc khách hàng (MACSKH) duy nhất khi thêm mới một thể loại vào bảng PHIEUCSKH
CREATE TRIGGER Trg_GenerateCSKHCode
ON PHIEUCSKH
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_macs NVARCHAR(50);
    SET @next_macs = 'CSKH' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MACSKH, LEN(MACSKH) - 4) AS INT)), 0) + 1 FROM PHIEUCSKH) AS NVARCHAR(4)), 4);

    INSERT INTO PHIEUCSKH (MACSKH, MAKH, NGLAP, NOIDUNG)
    SELECT @next_macs, MAKH, NGLAP, NOIDUNG
    FROM inserted;
END;
INSERT INTO PHIEUCSKH ( MAKH, NGLAP, NOIDUNG)
VALUES ( 'KH0001', GETDATE(), 'Nội dung chăm sóc khách hàng');
select * from phieucskh

-- Tạo trigger tự động tạo mã chương trình ưu đãi (MACTUD) duy nhất khi thêm mới một thể loại vào bảng CTUUDAI
CREATE TRIGGER Trg_GenerateCTUDCode
ON CTUUDAI
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_mactud NVARCHAR(50);
    SET @next_mactud = 'CTUD' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MACTUD, LEN(MACTUD) - 4) AS INT)), 0) + 1 FROM CTUUDAI) AS NVARCHAR(4)), 4);

    INSERT INTO CTUUDAI (MACTUD, TENCTUD, MOTA, NGBD, NGKT,PHANTRAM)
    SELECT @next_mactud, TENCTUD, MOTA, NGBD, NGKT, PHANTRAM
    FROM inserted;
END;
INSERT INTO CTUUDAI (TENCTUD, MOTA, NGBD, NGKT,PHANTRAM)
VALUES ('Chương trình ưu đãi 1', 'Mô tả chương trình ưu đãi 1', '2023-01-01', '2023-12-31',30);
SELECT * FROM CTUUDAI
-- Tạo trigger tự động tạo mã hóa đơn (MAHD) duy nhất khi thêm mới một thể loại vào bảng HOADON
CREATE TRIGGER Trg_GenerateHoaDonCode
ON HOADON
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_mahd NVARCHAR(50);
    SET @next_mahd = 'HD' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MAHD, LEN(MAHD) - 2) AS INT)), 0) + 1 FROM HOADON) AS NVARCHAR(4)), 4);

    INSERT INTO HOADON (MAHD, MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
    SELECT @next_mahd, MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN
    FROM inserted;
END;
INSERT INTO HOADON ( MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES ( 'NV0001', 'KH0001', 'CTUD0001', '2023-06-12', '2023-06-15', 1500000.00);
select * from hoadon

-- Tạo trigger tự động tạo mã báo cáo (MABC) duy nhất khi thêm mới một thể loại vào bảng BAOCAO
CREATE TRIGGER Trg_GenerateBaoCaoCode
ON BAOCAO
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_mabc NVARCHAR(50);
    SET @next_mabc = 'MABC' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MABC, LEN(MABC) - 3) AS INT)), 0) + 1 FROM BAOCAO) AS NVARCHAR(4)), 4);

    INSERT INTO BAOCAO (MABC, MAHD, THANGBC, NGLAPBC, DOANHTHU)
    SELECT @next_mabc, MAHD, THANGBC, NGLAPBC, DOANHTHU
    FROM inserted;
END;
INSERT INTO BAOCAO ( MAHD, THANGBC, NGLAPBC, DOANHTHU)
VALUES ( 'HD0001', 1, '2023-06-01', 5000.00);
select * from baocao


-- Tạo trigger tự động tạo mã tinh trang sản phẩm (MATTSP) duy nhất khi thêm mới một thể loại vào bảng TINHTRANGSP
CREATE TRIGGER Trg_GenerateTinhTrangSPCode
ON TINHTRANGSP
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_mattsp NVARCHAR(50);
    SET @next_mattsp = 'MATTSP' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MATTSP, LEN(MATTSP) - 6) AS INT)), 0) + 1 FROM TINHTRANGSP) AS NVARCHAR(4)), 4);

    INSERT INTO TINHTRANGSP (MATTSP, TRANGTHAI)
    SELECT @next_mattsp, TRANGTHAI
    FROM inserted;
END;
INSERT INTO TINHTRANGSP ( TRANGTHAI)
VALUES ( 'In stock');


-- Tạo trigger tự động tạo mã sản phẩm (MASP) duy nhất theo quy luật  SP với "000000" khi thêm mới một thể loại vào bảng NHAPKHO
CREATE TRIGGER Trg_GenerateSanPhamCode
ON SANPHAM
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @next_masp NVARCHAR(50);
    SET @next_masp = 'MASP' + RIGHT('0000' + CAST((SELECT ISNULL(MAX(CAST(RIGHT(MASP, LEN(MASP) - 4) AS INT)), 0) + 1 FROM SANPHAM) AS NVARCHAR(4)), 4);

    INSERT INTO SANPHAM (MASP, MATL, TENSP, NHAPH, NGPH, NENTANG, MATTSP, GIATHUE)
    SELECT @next_masp, MATL, TENSP, NHAPH, NGPH, NENTANG, MATTSP, GIATHUE
    FROM inserted;
END;
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, MATTSP, GIATHUE)
VALUES ( 'TL0001', 'Product 1', 'Supplier 1', '2023-06-12', 'Environment 1', 'MATTSP0001', 10.99);
select * from sanpham

-- Tạo trigger tự động cập nhật trạng thái (TRANGTHAI) đã thuê của bảng TINHTRANGSP khi một hóa đơn được tạo từ bảng HOADON
CREATE TRIGGER TR_HOADON_INSERT_TRANGTHAI
ON HOADON
AFTER INSERT
AS
BEGIN
    UPDATE TINHTRANGSP
    SET TRANGTHAI = 'Đã thuê'
    WHERE MATTSP IN (SELECT MASP FROM CHITIETHD WHERE MAHD IN (SELECT MAHD FROM inserted));
END;

-- Insert dữ liệu cho bảng THELOAI
INSERT INTO THELOAI (MATL, TENTL) VALUES
(1, 'Shoot ''em up'),
(2, 'Survival horror'),
(3, 'Card battle'),
(4, 'Action role-playing'),
(5, 'Role-playing'),
(6, 'Sports'),
(7, 'Vehicular combat'),
(8, 'Racing'),
(9, 'Simulation'),
(10, 'Artillery'),
(11, 'Battle royale'),
(12, 'Strategy'),
(13, 'Third-person shooter'),
(14, 'Action'),
(15, 'Action-adventure'),
(16, 'Tactical'),
(17, 'Hack and slash'),
(18, 'Run and gun'),
(19, 'Combat flight simulator'),
(20, 'Real-time tactics'),
(21, 'Loot shooter'),
(22, 'Roguelike'),
(23, 'Rougelike'),
(24, 'Real-time'),
(25, 'Platformer'),
(26, 'Fishing'),
(27, 'Business'),
(28, 'Puzzle'),
(29, 'Survival'),
(30, 'Shooter'),
(31, 'First-person shooter'),
(32, 'Adventure'),
(33, 'Fantasy'),
(34, 'Fighting'),
(35, 'Arcade'),
(36, 'Creature collection'),
(37, 'Platform'),
(38, 'Maze'),
(39, 'Stealth'),
(40, 'Soulslike'),
(41, 'Horror'),
(42, 'Beat ''em up'),
(43, 'Fighter'),
(44, 'Metroidvania'),
(45, '3D platformer'),
(46, 'Farming'),
(47, 'Base-building'),
(48, 'Action-adventure game'),
(49, 'Card & board'),
(50, 'Visual novel'),
(51, 'Construction and management'),
(52, 'Puzzle platformer'),
(53, 'Family'),
(54, 'Tower defense'),
(55, 'Mystery-thriller'),
(56, 'Psychological horror'),
(57, 'Exploration'),
(58, 'Kart'),
(59, 'Board game'),
(60, 'Rhythm'),
(61, 'Interactive drama'),
(62, 'Vehicle'),
(63, 'Massively multiplayer online'),
(64, 'Space flight'),
(65, 'Space station'),
(66, 'Party'),
(67, 'Sandbox'),
(68, 'Social deduction'),
(69, 'Aerial combat'),
(70, 'Japanese'),
(71, 'Turn-based'),
(72, 'Rail shooter'),
(73, 'Point-And-Click Adventure'),
(74, 'Twin-stick shooter'),
(75, 'Grand'),
(76, 'Space combat'),
(77, 'Dating'),
(78, 'Auto battler'),
(79, 'Hero shooter');

INSERT INTO SANPHAM (MASP,MATTSP, MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE)
VALUES
('MASP0004','MATTSP0001', 'TL0001', 'Yu-Gi-Oh! Master Duel', 'Konami', '2022-01-28', 'Playstation 5', 20000),
('MASP0005','MATTSP0001', 'TL0001', 'Ys X: Nordics', 'Nihon Falcom', NULL, 'Playstation 5', 20000),
('MASP0006','MATTSP0001', 'TL0001', 'Ys VIII: Lacrimosa of Dana', 'NIS America', '2022-11-15', 'Playstation 5', 20000),
('MASP0007','MATTSP0001', 'TL0001', 'Ys IX: Monstrum Nox', 'NIS America', '2023-05-09', 'Playstation 5', 20000),
('MASP0008','MATTSP0001', 'TL0001', 'Yakuza: Like a Dragon', 'Sega', '2021-03-02', 'Playstation 5', 20000),
('MASP0009','MATTSP0001', 'TL0001', 'WWE 2K23', '2K', '2023-03-17', 'Playstation 5', 20000),
('MASP00010','MATTSP0001', 'TL0001', 'WWE 2K22', '2K', '2022-03-11', 'Playstation 5', 20000),
('MASP00011','MATTSP0001', 'TL0001', 'Wreckfest', 'THQ Nordic', '2021-06-01', 'Playstation 5', 20000),
('MASP00013','MATTSP0001', 'TL0001', 'WRC 10', 'Nacon', '2021-09-02', 'Playstation 5', 20000),
('MASP00015','MATTSP0001', 'TL0001', 'WRC 9', 'Nacon', '2020-11-12', 'Playstation 5', 20000),
('MASP00017','MATTSP0001', 'TL0001','Worms Rumble', 'Team17', '2020-12-01', 'Playstation 5', 20000),
('MASP00020','MATTSP0001', 'TL0001', 'World War Z', 'Saber Interactive', '2019-04-16', 'Playstation 5', 20000),
('MASP00022','MATTSP0001', 'TL0001','Wolfenstein: The New Order', 'Bethesda Softworks', '2014-05-20', 'Playstation 5', 20000),
('MASP00023','MATTSP0001', 'TL0001','Wolfenstein: The Old Blood', 'Bethesda Softworks', '2015-05-05', 'Playstation 5', 20000),
('MASP00024','MATTSP0001', 'TL0001','Wolfenstein II: The New Colossus', 'Bethesda Softworks', '2017-10-27', 'Playstation 5', 20000),
('MASP00025','MATTSP0001', 'TL0001', 'Watch Dogs: Legion', 'Ubisoft', '2020-10-29', 'Playstation 5', 20000),
('MASP00026','MATTSP0001', 'TL0001','Watch Dogs 2', 'Ubisoft', '2016-11-15', 'Playstation 5', 20000),
('MASP00027','MATTSP0001', 'TL0001','Watch Dogs', 'Ubisoft', '2014-05-27', 'Playstation 5', 20000),
('MASP00039','MATTSP0001', 'TL0001', 'Warhammer: Vermintide 2', 'Fatshark', '2018-03-08', 'Playstation 5', 20000);
SELECT * FROM SANPHAM

INSERT INTO THONGTIN (MATT, CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES
  (6, '943160228381', 'Nguyễn Huy Hải', '0903000030', '1997-03-05', 'customer_101@example.com', '100/17 Trần Hưng Đạo P.Phạm Ngũ Lão Q.01 TPHCM'),
  (7, '854479961941', 'Nguyễn Thị Thanh Thảo', '0903000052', '1997-03-05', 'customer_102@example.com', '93/5 Bis ấp 3 P.Tân Thuận Đông Q.07 TPHCM'),
  (8, '289081555891', 'Hứa Trần Linh Uyên', '0903000096', '1997-03-05', 'customer_103@example.com', '176 Lê Lai P.Bến Thành Q.01 TPHCM'),
  (9, '862294590393', 'Trần Anh Tuấn', '0903000280', '1997-03-05', 'customer_104@example.com', '122 Lô B C/C Cô Giang P.Cô Giang Q.01 TPHCM'),
  (10, '180918089376', 'Nguyễn Ngọc Thư', '0903000368', '1997-03-05', 'customer_105@example.com', '3 Nguyễn Huệ P.Bến Nghé Q.01 TPHCM'),
  (11, '444396723550', 'Trần Minh Tuyết', '0903000499', '1997-03-05', 'customer_106@example.com', '258/17/15 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM'),
  (12, '405120211520', 'Nguyễn Vĩnh Khương', '0903000606', '1997-03-05', 'customer_107@example.com', '54 Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM'),
  (13, '423750356898', 'Trần Thị Hà', '0903000612', '1997-03-05', 'customer_108@example.com', '453/77/d18 Lê Văn Sỹ P.12 Q.03 TPHCM'),
  (14, '406832660965', 'Nguyễn Tiến Quyết', '0903000659', '1997-03-05', 'customer_109@example.com', '7 LÊ Duẩn P.Bến Nghé Q.01 TPHCM'),
  (15, '630730922069', 'Nguyễn Thị Kim Hậu', '0903000737', '1997-03-05', 'customer_110@example.com', '120 Lý Thái Tổ P.02 Q.03 TPHCM'),
  (16, '394355384559', 'Lê Thị Dưỡng', '0903000775', '1997-03-05', 'customer_12@example.com', 'A2/10 KP2 P.Tân Phong Q.07 TPHCM'),
  (17, '818039384746', 'Nguyễn Thị Hoàng Vân', '0903000791', '1997-03-05', 'customer_111@example.com', '1/60/6 Trần Văn Đang P.09 Q.03 TPHCM'),
  (18, '202423658219', 'Nguyễn Thị Diễm', '0903000815', '1997-03-05', 'customer_112@example.com', '400A Lê Văn Sỹ P.14 Q.03 TPHCM'),
  (19, '780844086018', 'Lê Thành Nam', '0903000835', '1997-03-05', 'customer_113@example.com', '22 Phòng 209 Nguyễn Trãi Khu Chung Cư P.Bến Thành Q.01 TPHCM'),
  (20, '734644755149', 'Nguyễn Lê Ngọc', '0903001001', '1997-03-05', 'customer_114@example.com', '21B/9 Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM'),
  (21, '143508420325', 'Huỳnh Thị Sông Hương', '0903001003', '1997-03-05', 'customer_115@example.com', '19 Nguyễn Trung Trực P.Bến Thành Q.01 TPHCM'),
  (22, '155175634826', 'Huỳnh Thị Thanh Loan', '0903001124', '1997-03-05', 'customer_116@example.com', '6B/13 ấp 4 Đường 23 P.Tân Quy Q.07 TPHCM'),
  (23, '455181697886', 'Lê Thanh Anh Tuấn', '0903001128', '1997-03-05', 'customer_117@example.com', '319/21 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM'),
  (24, '514346206921', 'Trần Quang Thảo', '0903001131', '1997-03-05', 'customer_118@example.com', '8A/8C2 Thái Văn Lung P.Bến Nghé Q.01 TPHCM'),
  (25, '293139694000', 'Đào Thị Ngọc Mai', '0903001139', '1997-03-05', 'customer_119@example.com', '3/6 KP1 Tổ 02 P.An Khánh Q.02 TPHCM'),
  (26, '859272596759', 'Dương Thị Hoa', '0903001165', '1997-03-05', 'customer_120@example.com', '7A Phạm Viết Chánh P.Nguyễn Cư Trinh Q.01 TPHCM'),
  (27, '865108956324', 'Lê Ngọc Thọ', '0903001211', '1997-03-05', 'customer_13@example.com', '68/4 KP4 P.Phú Thuận Q.07 TPHCM'),
  (28, '572683805620', 'Lý Kim Giàu', '0903001217', '1997-03-05', 'customer_121@example.com', '235/31 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM'),
  (29, '927282651161', 'Đỗ Phương Thảo', '0903001218', '1997-03-05', 'customer_122@example.com', '208 Nguyễn Đình Chiểu P.06 Q.03 TPHCM'),
  (30, '662847877096', 'Dương Kim Xuyến', '0903001257', '1997-03-05', 'customer_123@example.com', '650 KP04 P.An Phú Q.02 TPHCM'),
  (31, '504331971893', 'Lê Xuân Hồng', '0903001306', '1997-03-05', 'customer_124@example.com', '240 Pasteur P.06 Q.03 TPHCM'),
  (32, '228020715399', 'Lương Thanh Tùng', '0903001337', '1997-03-05', 'customer_125@example.com', '164 KP2 Nguyễn Duy Trinh P.Bình Trưng Tây Q.02 TPHCM'),
  (33, '757840210962', 'Nguyễn Thị Ngọc Thơ', '0903001356', '1997-03-05', 'customer_126@example.com', '174/67/4 Nguyễn Thiện Thuật P.03 Q.03 TPHCM'),
  (34, '852189572241', 'Nguyễn Đức Hợp', '0903001409', '1997-03-05', 'customer_127@example.com', '647 Điện BIên Phủ P.01 Q.03 TPHCM'),
  (35, '162478398330', 'Đỗ Tuyết Dung', '0903001602', '1997-03-05', 'customer_128@example.com', '41/19 Nguyễn Đình Chiểu P.04 Q.03 TPHCM'),
  (36, '454165477777', 'Võ Anh Tuấn', '0903001630', '1997-03-05', 'customer_129@example.com', '306 Nguyễn Thị Minh Khai P.05 Q.03 TPHCM(Cửa Hàng Mật Ong)'),
  (37, '854646120648', 'Trương Thị Quỳnh Giao', '0903001671', '1997-03-05', 'customer_130@example.com', '101/22 Trần Khắc Chân P.Tân Định Q.01 TPHCM'),
  (38, '168592339665', 'Nguyễn Thị Thanh Vân', '0903001697', '1997-03-05', 'customer_14@example.com', '20/16H Kỳ Đồng P.09 Q.03 TPHCM'),
  (39, '937916503560', 'Trương Thị Kim Oanh', '0903001707', '1997-03-05', 'customer_132@example.com', '23A/1 Hồ Xuân Hương P.03 Q.03 TPHCM'),
  (40, '589960551787', 'Nguyễn Tấn Thành', '0903001732', '1997-03-05', 'customer_133@example.com', '33/15/30 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM'),
  (41, '661356850324', 'Võ Văn Đạt', '0903001763', '1997-03-05', 'customer_134@example.com', '68 Nguyễn Bỉnh Khiêm P.Đa Kao Q.01 TPHCM'),
  (42, '457960347245', 'Lê Đình Thịnh', '0903001803', '1997-03-05', 'customer_135@example.com', '218 Điện Biên Phủ P.15 Q.03 TPHCM'),
  (43, '136392688481', 'Lưu Minh Tuấn', '0903001812', '1997-03-05', 'customer_136@example.com', '18/4 Tân Mỹ P.Tân Thuận Tây Q.07 TPHCM'),
  (44, '642312344936', 'Trần Thanh Hải', '0903001815', '1997-03-05', 'customer_137@example.com', '201/15/37 Lê Văn Sỹ P.14 Q.03 TPHCM'),
  (45, '726444860198', 'Nguyễn Ngọc Quỳnh', '0903001867', '1997-03-05', 'customer_138@example.com', '96 Phạm Hồng Thái P.14 Q.03 TPHCM'),
  (46, '122571515174', 'Nguyễn Thị Thuỳ Linh', '0903001893', '1997-03-05', 'customer_139@example.com', '211/3/10 Lý Thường Kiệt P.08 Q.03 TPHCM'),
  (47, '665297783176', 'Nguyễn Đình Đức', '0903001912', '1997-03-05', 'customer_140@example.com', '197/27/1/9 Trần Văn Đang P.09 Q.03 TPHCM'),
  (48, '306390749185', 'Huỳnh Ngọc Tú', '0903001915', '1997-03-05', 'customer_141@example.com', '239 Phạm Ngũ Lão P.03 Q.03 TPHCM'),
  (49, '586959260830', 'Đinh Thị Hạnh', '0903001956', '1997-03-05', 'customer_142@example.com', '413 Trần Hưng Đạo P.02 Q.05 TPHCM'),
  (50, '289863999488', 'Lâm Thị Phương', '0903001972', '1997-03-05', 'customer_143@example.com', '406 Điện Biên Phủ P.11 Q.10 TPHCM');
  
  INSERT INTO KHACHHANG (MAKH, MATT)
VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15),
(11, 16),
(12, 17),
(13, 18),
(14, 19),
(15, 20),
(16, 21),
(17, 22),
(18, 23),
(19, 24),
(20, 25),
(21, 26),
(22, 27),
(23, 28),
(24, 29),
(25, 30),
(26, 31),
(27, 32),
(28, 33),
(29, 34),
(30, 35),
(31, 36),
(32, 37),
(33, 38),
(34, 39),
(35, 40),
(36, 41),
(37, 42),
(38, 43),
(39, 44);

-- Insert KHO
INSERT INTO KHO (MAKHO, MASP, MATTSP, SOLUONG)
VALUES
(1, 'SP000001', 1, 10),
(2, 'SP000003', 2, 10),
(3, 'SP000004', 3, 10),
(4, 'SP000005', 4, 10),
(5, 'SP000006', 5, 10),
(6, 'SP000007', 6, 10),
(7, 'SP000008', 7, 10),
(8, 'SP000009', 8, 10),
(9, 'SP000010', 9, 10),
(10, 'SP000011', 10, 10),
(11, 'SP000013', 11, 10),
(12, 'SP000015', 12, 10),
(13, 'SP000017', 13, 10),
(14, 'SP000020', 14, 10),
(15, 'SP000022', 15, 10),
(16, 'SP000023', 16, 10),
(17, 'SP000024', 17, 10),
(18, 'SP000025', 18, 10),
(19, 'SP000026', 19, 10),
(20, 'SP000027', 20, 10),
(21, 'SP000039', 21, 10);
-- Insert TINHTRANGSP
INSERT INTO TINHTRANGSP (MATTSP, TRANGTHAI)
VALUES
(1, 'Available'),
(2, 'Available'),
(3, 'Available'),
(4, 'Available'),
(5, 'Available'),
(6, 'Available'),
(7, 'Available'),
(8, 'Available'),
(9, 'Available'),
(10, 'Available'),
(11, 'Available'),
(12, 'Available'),
(13, 'Available'),
(14, 'Available'),
(15, 'Available'),
(16, 'Available'),
(17, 'Available'),
(18, 'Available'),
(19, 'Available'),
(20, 'Available'),
(21, 'Available');
-- Insert bảng CTUUDAI
INSERT INTO CTUUDAI (MACTUD, TENCTUD, MOTA, NGBD, NGKT)
VALUES (1, 'UuDai1', 'Mô tả 1', '2023-01-01', '2023-12-31');
-- Insert bảng HOADON
INSERT INTO HOADON (MAHD, MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES 
    (1, 101, 1, 1, '2023-06-08', '2023-06-17', 100000),
    (2, 102, 2, 1, '2023-06-08', '2023-06-17', 100000),
    (3, 101, 3, 1, '2023-06-08', '2023-06-17', 100000),
    (4, 103, 4, 1, '2023-06-08', '2023-06-17', 100000),
    (5, 102, 5, 1, '2023-06-08', '2023-06-17', 100000),
    (6, 101, 6, 1, '2023-06-08', '2023-06-17', 100000),
    (7, 103, 7, 1, '2023-06-08', '2023-06-17', 100000),
    (8, 103, 8, 1, '2023-06-08', '2023-06-17', 100000),
    (9, 102, 9, 1, '2023-06-08', '2023-06-17', 100000),
    (10, 102, 10, 1, '2023-06-08', '2023-06-17', 100000),
    (11, 103, 11, 1, '2023-06-08', '2023-06-17', 100000),
    (12, 101, 12, 1, '2023-06-08', '2023-06-17', 100000),
    (13, 103, 13, 1, '2023-06-08', '2023-06-17', 100000),
    (14, 101, 14, 1, '2023-06-08', '2023-06-17', 100000),
    (15, 102, 15, 1, '2023-06-08', '2023-06-17', 100000),
    (16, 102, 16, 1, '2023-06-08', '2023-06-17', 100000),
    (17, 103, 17, 1, '2023-06-08', '2023-06-17', 100000),
    (18, 101, 18, 1, '2023-06-08', '2023-06-17', 100000),
    (19, 103, 19, 1, '2023-06-08', '2023-06-17', 100000),
    (20, 102, 20, 1, '2023-06-08', '2023-06-17', 100000),
    (21, 102, 21, 1, '2023-06-08', '2023-06-17', 100000),
    (22, 102, 22, 1, '2023-06-08', '2023-06-17', 100000),
    (23, 103, 23, 1, '2023-06-08', '2023-06-17', 100000),
    (24, 103, 24, 1, '2023-06-08', '2023-06-17', 100000),
    (25, 101, 25, 1, '2023-06-08', '2023-06-17', 100000),
    (26, 103, 26, 1, '2023-06-08', '2023-06-17', 100000),
    (27, 103, 27, 1, '2023-06-08', '2023-06-17', 100000),
    (28, 101, 28, 1, '2023-06-08', '2023-06-17', 100000),
    (29, 101, 29, 1, '2023-06-08', '2023-06-17', 100000),
    (30, 103, 30, 1, '2023-06-08', '2023-06-17', 100000),
    (31, 102, 31, 1, '2023-06-08', '2023-06-17', 100000),
    (32, 103, 32, 1, '2023-06-08', '2023-06-17', 100000),
    (33, 101, 33, 1, '2023-06-08', '2023-06-17', 100000),
    (34, 103, 34, 1, '2023-06-08', '2023-06-17', 100000),
    (35, 103, 35, 1, '2023-06-08', '2023-06-17', 100000),
    (36, 101, 36, 1, '2023-06-08', '2023-06-17', 100000),
    (37, 102, 37, 1, '2023-06-08', '2023-06-17', 100000),
    (38, 102, 38, 1, '2023-06-08', '2023-06-17', 100000),
    (39, 102, 39, 1, '2023-06-08', '2023-06-17', 100000),
    (40, 101, 1, 1, '2023-06-08', '2023-06-17', 100000);


BEGIN TRANSACTION;
INSERT INTO KHACHHANG(MAKH, DIEMTICH, MATT)VALUES(N'" + tb_makh.Text + "', N'" + tb_diem.Text + "', N'" + tb_matt.Text + "');
INSERT INTO THONGTIN(HOTEN, SODT, DIACHI, NGSINH, CCCD, EMAIL, MATT)
VALUES(N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + tb_diachi.Text + "', N'" + tb_ngsinh.Text + "', N'" + tb_cccd.Text + "', N'" + tb_email.Text + "', N'" + tb_matt.Text + "');
COMMIT;

INSERT INTO KHACHHANG ( HOTEN, SODT,DIACHI, NGSINH,CCCD, EMAIL) VALUES (N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + tb_diachi.Text + "', N'" + tb_ngaysinh.Text + "', N'" + tb_cccd.Text + "', N'" + tb_email.Text + "')

INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI) VALUES(N'" + tb_cccd.Text + "', N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + tb_ngaysinh.Text + "', N'" + tb_email.Text + "', N'" + tb_diachi.Text + "');

INSERT INTO THONGTIN (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES ('123456789', 'John Doe', '1234567890', '1990-01-01', 'johndoe@example.com', '123 Main St');


select * from chitiethd

-- Insert dữ liệu cho bảng THELOAI
INSERT INTO THELOAI (TENTL) VALUES('Shoot ''em up');
INSERT INTO THELOAI (TENTL) VALUES('Survival horror');
INSERT INTO THELOAI (TENTL) VALUES('Card battle');
INSERT INTO THELOAI (TENTL) VALUES('Action role-playing');
INSERT INTO THELOAI (TENTL) VALUES('Role-playing');
INSERT INTO THELOAI (TENTL) VALUES('Sports');
INSERT INTO THELOAI (TENTL) VALUES('Vehicular combat');
INSERT INTO THELOAI (TENTL) VALUES('Racing');
INSERT INTO THELOAI (TENTL) VALUES('Simulation');
INSERT INTO THELOAI (TENTL) VALUES( 'Artillery');
INSERT INTO THELOAI (TENTL) VALUES( 'Battle royale');
INSERT INTO THELOAI (TENTL) VALUES( 'Strategy');
INSERT INTO THELOAI (TENTL) VALUES( 'Third-person shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'Action');
INSERT INTO THELOAI (TENTL) VALUES( 'Action-adventure');
INSERT INTO THELOAI (TENTL) VALUES( 'Tactical');
INSERT INTO THELOAI (TENTL) VALUES( 'Hack and slash');
INSERT INTO THELOAI (TENTL) VALUES( 'Run and gun');
INSERT INTO THELOAI (TENTL) VALUES( 'Combat flight simulator');
INSERT INTO THELOAI (TENTL) VALUES( 'Real-time tactics');
INSERT INTO THELOAI (TENTL) VALUES( 'Loot shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'Roguelike');
INSERT INTO THELOAI (TENTL) VALUES( 'Rougelike');
INSERT INTO THELOAI (TENTL) VALUES( 'Real-time');
INSERT INTO THELOAI (TENTL) VALUES( 'Platformer');
INSERT INTO THELOAI (TENTL) VALUES( 'Fishing');
INSERT INTO THELOAI (TENTL) VALUES( 'Business');
INSERT INTO THELOAI (TENTL) VALUES( 'Puzzle');
INSERT INTO THELOAI (TENTL) VALUES( 'Survival');
INSERT INTO THELOAI (TENTL) VALUES( 'Shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'First-person shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'Adventure');
INSERT INTO THELOAI (TENTL) VALUES( 'Fantasy');
INSERT INTO THELOAI (TENTL) VALUES( 'Fighting');
INSERT INTO THELOAI (TENTL) VALUES( 'Arcade');
INSERT INTO THELOAI (TENTL) VALUES( 'Creature collection');
INSERT INTO THELOAI (TENTL) VALUES( 'Platform');
INSERT INTO THELOAI (TENTL) VALUES( 'Maze');
INSERT INTO THELOAI (TENTL) VALUES( 'Stealth');
INSERT INTO THELOAI (TENTL) VALUES( 'Soulslike');
INSERT INTO THELOAI (TENTL) VALUES( 'Horror');
INSERT INTO THELOAI (TENTL) VALUES( 'Beat ''em up');
INSERT INTO THELOAI (TENTL) VALUES( 'Fighter');
INSERT INTO THELOAI (TENTL) VALUES( 'Metroidvania');
INSERT INTO THELOAI (TENTL) VALUES( '3D platformer');
INSERT INTO THELOAI (TENTL) VALUES( 'Farming');
INSERT INTO THELOAI (TENTL) VALUES( 'Base-building');
INSERT INTO THELOAI (TENTL) VALUES( 'Action-adventure game');
INSERT INTO THELOAI (TENTL) VALUES( 'Card & board');
INSERT INTO THELOAI (TENTL) VALUES( 'Visual novel');
INSERT INTO THELOAI (TENTL) VALUES( 'Construction and management');
INSERT INTO THELOAI (TENTL) VALUES( 'Puzzle platformer');
INSERT INTO THELOAI (TENTL) VALUES( 'Family');
INSERT INTO THELOAI (TENTL) VALUES( 'Tower defense');
INSERT INTO THELOAI (TENTL) VALUES( 'Mystery-thriller');
INSERT INTO THELOAI (TENTL) VALUES( 'Psychological horror');
INSERT INTO THELOAI (TENTL) VALUES( 'Exploration');
INSERT INTO THELOAI (TENTL) VALUES( 'Kart');
INSERT INTO THELOAI (TENTL) VALUES( 'Board game');
INSERT INTO THELOAI (TENTL) VALUES( 'Rhythm');
INSERT INTO THELOAI (TENTL) VALUES( 'Interactive drama');
INSERT INTO THELOAI (TENTL) VALUES( 'Vehicle');
INSERT INTO THELOAI (TENTL) VALUES( 'Massively multiplayer online');
INSERT INTO THELOAI (TENTL) VALUES( 'Space flight');
INSERT INTO THELOAI (TENTL) VALUES( 'Space station');
INSERT INTO THELOAI (TENTL) VALUES( 'Party');
INSERT INTO THELOAI (TENTL) VALUES( 'Sandbox');
INSERT INTO THELOAI (TENTL) VALUES( 'Social deduction');
INSERT INTO THELOAI (TENTL) VALUES( 'Aerial combat');
INSERT INTO THELOAI (TENTL) VALUES( 'Japanese');
INSERT INTO THELOAI (TENTL) VALUES( 'Turn-based');
INSERT INTO THELOAI (TENTL) VALUES( 'Rail shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'Point-And-Click Adventure');
INSERT INTO THELOAI (TENTL) VALUES( 'Twin-stick shooter');
INSERT INTO THELOAI (TENTL) VALUES( 'Grand');
INSERT INTO THELOAI (TENTL) VALUES( 'Space combat');
INSERT INTO THELOAI (TENTL) VALUES( 'Dating');
INSERT INTO THELOAI (TENTL) VALUES( 'Auto battler');
INSERT INTO THELOAI (TENTL) VALUES( 'Hero shooter');

-- Insert sản phẩm

INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0010','Yurukill: The Calumniation Game','JP: Izanagi Games','2022-06-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0060','Yu-Gi-Oh! Master Duel','Chorus Worldwide','2021-08-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0077','Ys X: Nordics','Konami','2022-01-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','Ys IX: Monstrum Nox','NIS America','2022-11-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','Yakuza: Like a Dragon','NIS America','2023-05-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0057','WWE 2K23','Sega','2021-03-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0041','WWE 2K22','2K','2023-03-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0057','Wreckfest','2K','2022-03-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','WRC 10','THQ Nordic','2021-06-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Worms Rumble','Nacon','2021-09-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0080','World of Warships: Legends','Nacon','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Wo Long: Fallen Dynasty','Team17','2020-12-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Werewolf: The Apocalypse – Earthblood','Mad Dog Games','2023-01-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Wayfinder','Wargaming','2021-04-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','Watch Dogs: Legion','Telltale Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0004','Warhammer: Chaosbane','Koei Tecmo','2023-03-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','Warhammer 40,000: Space Marine II','CD Projekt','2022-12-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0003','Warhammer 40,000: Shootas, Blood & Teef','Electronic Arts','2023-02-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Warframe','Nacon','2021-02-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','War Thunder','Digital Extremes','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','War Mongrels','Ubisoft','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','War Hospital','Pixelated Milk','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','Void Terrarium Plus','Bigben Interactive','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','Vampire: The Masquerade – Bloodlines 2','Rogueside','2022-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0005','Vampire: The Masquerade – Bloodhunt','Digital Extremes','2020-11-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Utawarerumono: Zan 2','Gaijin Entertainment','2020-11-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Undead Horde','All in! Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0073','Uncharted: Legacy of Thieves Collection','Movie Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Ultimate Fishing Simulator 2','Nippon Ichi Software','2021-05-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','Two Point Campus','Bohemia Interactive','2020-12-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Twin Robots: Ultimate Edition','Nacon','2022-05-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Tribes of Midgard','Sharkmob','2022-04-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Trek to Yomi','Square Enix','2022-09-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','Tom Clancys Rainbow Six Siege','Aksys Games','2022-08-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0052','Tin Hearts','Sony Interactive Entertainment','2022-01-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Tesla Force','Strikerz','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Terminator: Resistance Enhanced','Sega','2022-08-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Temtem','Ratalaika Games','2020-12-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Tchia','Big Sugar','2022-11-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0005','Tales of Arise','Gearbox Publishing','2021-07-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Tails of Iron','Devolver Digital','2022-05-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Synduality','Shinen Multimedia','2021-09-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','Sword of the Necromancer','PQube','2021-08-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','Super Sami Roll','Activision','2021-03-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Super Monkey Ball: Banana Mania','Ubisoft','2020-12-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','Super Bomberman R 2','Ubisoft','2022-01-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Super Animal Royale','Something We Made','2021-09-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Sumatra: Fate of Yandi','2K','2022-03-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Street Outlaws 2: Winner Takes All','3goo','2022-12-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','Street Fighter 6','Bethesda Softworks','2021-11-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0038','Stray Blade','Nacon','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','Stray','10tons','2020-12-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','The Stone of Madness','10tons','2020-11-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','Stellar Blade','Reef Entertainment','2021-04-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','Steelrising','Humble Games','2020-12-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0034','Star Wars Jedi: Fallen Order','Awaceb','2023-03-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Star Ocean: The Divine Force','Bandai Namco Entertainment','2021-09-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Spirit of the North','United Label','2021-09-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0007','SpellForce 3 Reforced','Bandai Namco Entertainment','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0035','Soul Hackers 2','Bandai Namco Entertainment','2023-10-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','Sonic Frontiers','Sonzai Games','2021-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0073','Sniper Ghost Warrior Contracts 2','Sega','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','Sniper Elite 5','Konami','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Smelter','Modus Games','2021-08-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','Skull and Bones','Ratalaika Games','2021-03-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Sinfeld Remastered','WB Games','2024-02-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Silent Hill 2','Unknown Worlds Entertainment','2021-05-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Showa American Story','Unknown Worlds Entertainment','2021-05-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0005','Sherlock Holmes: The Awakened','NA: GameMill Entertainment','2021-09-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Shantae','Capcom','2023-06-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Shakedown: Hawaii','505 Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Session','Annapurna Interactive','2022-07-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Season: A Letter to the Future','Square Enix','2022-03-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Scott Pilgrim vs. the World: The Game - Complete Edition','MWM Interactive','2021-06-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Saints Row: The Third Remastered','Sony Interactive Entertainment','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Saints Row','Nacon','2022-09-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','Ruinverse','Electronic Arts','2023-04-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','Ruined King: A League of Legends Story','Electronic Arts','2021-06-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','Roots of Pacha','Square Enix','2022-10-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Romancelvania: BATchelors Curse','Merge Games','2020-11-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','Rogue Company','THQ Nordic','2022-03-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','River City Girls','MercurySteam','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Rise of the Slime','Modus Games','2022-09-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0017','Rise of the Ronin','Atlus','2022-08-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','RiMS Racing','Sega','2022-11-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0069','The Riftbreaker','Annapurna Interactive','2021-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','Riders Republic','CI Games','2021-08-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0057','Returnal','Rebellion Developments','2022-05-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','Resident Evil 7: Biohazard','Microids','2021-12-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','Resident Evil 4','Dangen Entertainment','2021-09-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Record of Lodoss War: Deedlit in Wonder Labyrinth','Sloclap','2022-02-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','Read Only Memories: Neurodiver','Mass Creation','2021-03-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0078','Ratchet & Clank: Rift Apart','Frogwares','2023-04-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0040','Rage of the Dragons','Frogwares','2021-11-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0060','R-Type Final 3 Evolved','Forthright Entertainment','2022-04-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Quantum Error','WayForward','2023-06-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Quake','Vblank Entertainment','2020-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','Puyo Puyo Tetris 2','Devolver Digital','2021-12-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0010','Pumpkin Jack','Scavengers studio','2023-01-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Psikyo Shooting Collection','Ubisoft','2021-01-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0030','Pragmata','YellowAfterlife','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0007','Port Royale 4','Ska Studios','2022-05-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','Plumbers Dont Wear Ties','Deep Silver','2021-05-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0034','Planet Coaster: Console Edition','Deep Silver','2022-08-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','A Plague Tale: Requiem','Sony Interactive Entertainment','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0012','A Plague Tale: Innocence','Arc System Works','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0010','Ping Redux','Kemco','2021-04-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Persona 5 Royal','Riot Forge','2021-11-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','The Persistence Enhanced','Nacon','2022-01-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Party Crasher Simulator','Deep End Games','2023-03-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0034','Paradise Lost','Hi-Rez Studios','2021-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0066','Panda Hero Remastered','Arc System Works','2022-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','Oxenfree II: Lost Signals','Arc System Works','2022-01-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','Override 2: Super Mech League','Playstack','2021-05-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0010','Outriders','Sony Interactive Entertainment','1905-07-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Outcast 2: A New Beginning','Nacon','2021-08-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Outbreak: The Nightmare Chronicles','EXOR Studios','2021-10-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Outbreak: The New Nightmare','Ubisoft','2021-10-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Outbreak: Lost Hope','Milestone','2021-01-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Outbreak: Epidemic','Sony Interactive Entertainment','2021-04-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Outbreak','Capcom','2021-05-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Orcs Must Die! 3','Capcom','2022-06-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Operation: Tango','Capcom','2023-03-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Open Roads','Capcom','2022-06-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','One Piece Odyssey','Capcom','2022-06-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0078','OlliOlli World','Joindots','2021-01-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','Octopath Traveler II','JP: Kadokawa Games','2022-03-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','Nour: Play With Your Food','34BigThings','2022-06-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0037','Nobody Saves the World','Playism','2021-12-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','No Mans Sky','Phigames','2021-08-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Nioh 2 Remastered','Sony Interactive Entertainment','2021-06-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','Nickelodeon All-Star Brawl','Piko Interactive','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','NHL 23','JP: Granzella','2023-04-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0031','Nerf Legends','Bethesda Softworks','2021-10-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Neptunia Shooter','Taito Corporation','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0042','Neptunia re★Verse','Sega','2020-12-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','Need for Speed Unbound','Headup Games','2021-10-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','NBA 2K21','Capcom','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','My Time at Sandrock','No Matter Studios','2021-12-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0030','MX vs. ATV Legends','Kalypso Media','2021-09-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Mundaun','Ripstone','2020-11-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Mr. Driller Drill Land','Frontier Developments','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0078','MotoGP 21','Focus Home Interactive','2022-10-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Mortal Kombat 1','Focus Home Interactive','2021-07-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Monster Energy Supercross: The Official Videogame 4','Nami Tentou','2021-02-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','Monster Boy and the Cursed Kingdom','Sega','2022-10-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Monopoly Madness','Perp Games','2021-06-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0060','Monark','Skookum Arts','2021-01-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Mobile Suit Gundam: Battle Operation Code Fairy Volume 3','Annapurna Interactive','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','MLB The Show 22','Markt & Technik','2021-01-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0073','MLB The Show 21','MWM Interactive','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','MicroMan','Modus Games','2020-12-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Metro Exodus Complete Edition','Team17','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Metal: Hellsinger','Square Enix','2021-04-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','Megaton Musashi','Dead Drop Studios','2020-12-31','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','MechWarrior 5: Mercenaries','Dead Drop Studios','2021-01-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','Untitled Max Payne Remake','Dead Drop Studios','2020-12-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Matchpoint: Tennis Championships','Dead Drop Studios','2021-01-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','Marvels Wolverine','Robot Entertainment','2021-07-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Marvels Spider-Man: Miles Morales','Clever Plays','2021-06-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0061','Marvels Spider-Man Remastered','Annapurna Interactive','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','Marvels Spider-Man 2','Bandai Namco Entertainment','2023-01-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0037','Marvels Midnight Suns','Private Division','2022-02-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','Marvels Guardians of the Galaxy','Oddworld Inhabitants','2021-04-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','Marvels Avengers','Square Enix','2023-02-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Maquette','Aspyr','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Manifold Garden','Panic','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0012','Maneater','Drinkbox Studios','2022-04-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0029','Maid of Sker','Marvelous','2022-10-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Madden NFL 23','Hello Games','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Madden NFL 21','Sony Interactive Entertainment','2021-02-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Lost Judgment','Sony Interactive Entertainment','2021-02-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Lords of the Fallen 2','NA GameMill Entertainment','2022-10-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0017','Little Nightmares II','NA GameMill Entertainment','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0014','Like a Dragon: Ishin!','Electronic Arts','2022-10-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0012','Like a Dragon Gaiden: The Man Who Erased His Name','Electronic Arts','2021-10-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Life Is Strange True Colors','NA: GameMill Entertainment','2021-11-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Lemnis Gate','Idea Factory','2023-01-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0042','Lego Star Wars: The Skywalker Saga','Idea Factory','2021-06-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','The Legend of Heroes Trails into Reverie','Compile Heart','2021-06-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','The Legend of Heroes Kuro no Kiseki II - Crimson Sin','Electronic Arts','2022-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','The Legend of Heroes Kuro no Kiseki','Focus Home Interactive','2021-06-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','The Last Worker','2K Sports','2021-09-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0020','Last Stop','2K Sports','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','The Last Stand: Aftermath','Pathea Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0014','Knockout City','Milestone','2021-01-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Klonoa Phantasy Reverie Series','MVM Interactive','2021-03-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Kingdom of Arcadia','WB Games','2022-07-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','The King of Fighters XV','Bandai Namco Entertainment','2021-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','King Oddball','Milestone','2021-04-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','King Arthur: Knights Tale','Playstack','2021-03-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','KeyWe','WB Games','2020-11-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Kerbal Space Program: Enhanced Edition','WB Games','2023-09-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0041','Kerbal Space Program 2','Maximum Games','2021-03-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','Kena: Bridge of Spirits','Capcom','2023-01-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Kao the Kangaroo','Milestone','2021-03-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Just Dance 2023 Edition','Ubisoft','2021-12-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Just Dance 2022','JP: FuRyu','2022-02-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Jurassic World Evolution 2','Bandai Namco Entertainment','2021-12-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','Jump Challenge!','Bandai Namco Entertainment','2021-11-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','A Jugglers Tale','Bandai Namco Entertainment','2021-11-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','Judgment','Bandai Namco Entertainment','2021-01-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','Journey to the Savage Planet','Sony Interactive Entertainment','2022-04-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','JoJos Bizarre Adventure: All Star Battle R','Sony Interactive Entertainment','2021-04-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Iron Harvest','Deep Silver','2021-06-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Immortals Fenyx Rising','Funcom','2022-09-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','Hotel Life: A Resort Simulator','Bloober Team','2021-09-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','Hot Wheels Unleashed','Piranha Games','2021-09-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','Hood: Outlaws & Legends','Kalypso Media','2022-06-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Hitman 3','Sony Interactive Entertainment','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0061','Hellpoint','Sony Interactive Entertainment','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','Hell Let Loose','2K','2022-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','Hell is Us','Square Enix','2021-10-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Heavenly Bodies','Square Enix','2021-03-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Haven','Wired Productions','2022-02-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0037','Haunted Space','Annapurna Interactive','2021-03-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Hades','William Chyr Studio','2021-05-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0027','Gunvolt Chronicles Luminous Avenger iX 2','Tripwire Interactive','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Guilty Gear Strive','Wales Interactive','2021-05-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0011','Grid Legends','Electronic Arts','2022-08-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','GreedFall','Electronic Arts','2021-08-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','GraviFire','Electronic Arts','2020-12-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0003','Grand Theft Auto: The Trilogy – The Definitive Edition','Sega','2021-09-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Grand Theft Auto V','Electronic Arts','2021-09-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','Granblue Fantasy: Relink','Daedalic Entertainment','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','Granblue Fantasy Versus: Rising','Bandai Namco Entertainment','2021-08-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Goonya Fighter: Purupuru Shokkan Edition','Sega','2023-02-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0035','Goodbye Volcano High','Sega','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','Godfall','Sega','1905-07-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','God of War Ragnarök','Square Enix','2021-09-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','Ghostwire: Tokyo','Square Enix','2022-02-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Ghost of Tsushima Directors Cut','Frontier Foundry','2021-09-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0001','Genshin Impact','WB Games','2022-04-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','Fuga: Melodies of Steel 2','NIS America','2023-07-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Freddy Spaghetti','Wired Productions','2023-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Forspoken','Annapurna Interactive','2021-07-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0017','Foreclosed','Armor Games Studios','2021-11-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Fooll Manager 2023','Sony Interactive Entertainment','2022-09-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Fobia: St. Dinfna Hotel','Electronic Arts','2021-05-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Flea Madness','Bandai Namco Entertainment','2022-07-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','Five Nights at Freddys: Security Breach','PQube','2021-09-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Fire Commander','EastAsiaSoft','2021-04-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0005','Final Fantasy XVI','SNK','2022-02-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Final Fantasy XIV','10tons','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Final Fantasy VII Rebirth','Sold Out','2021-08-31','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','FIFA 23','Private Division','2021-09-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','FIFA 22','Private Division','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','FIFA 21','Ember Lab','2021-09-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Fatal Frame: Mask of the Lunar Eclipse','Tate Multimedia','2022-05-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','Fatal Frame: Maiden of Black Water','10tons','2020-11-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','Farming Simulator 22','Ubisoft','2022-11-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0021','Far Cry 6','Ubisoft','2021-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Fall Guys','Ubisoft','2020-11-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','The Falconeer: Warrior Edition','Frontier Developments','2021-11-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0022','F1 Manager 2022','Source Byte','2022-11-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0059','F1 2021','Mixtvision Games','2021-09-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0052','F1 22','Sega','2021-04-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','F.I.S.T.: Forged In Shadow Torch','505 Games','2023-02-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0005','Exoprimal','Bandai Namco Entertainment','2022-09-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','Exophobia','Superbrothers','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0029','Evil Genius 2: World Domination','Electronic Arts','2021-03-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Evergate','Deep Silver','2021-10-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','Ever Forward','Blowfish Studios','2020-12-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','Escape from Life Inc','Modus Games','2021-08-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0031','Enlisted','Sometimes You','2021-03-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Endling: Extinction is Forever','Ubisoft','2020-12-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0021','Endless Dungeon','Annapurna Interactive','2021-08-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Ender Lilies: Quietus of the Knights','Mantisco','2021-08-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0040','ELEX II','Curve Digital','2021-06-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','The Elder Scrolls Online','Nacon','2021-08-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Elden Ring','Milestone','2021-09-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0052','Eiyuden Chronicle: Rising','Sony Interactive Entertainment','2022-02-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Eiyuden Chronicle: Hundred Heroes','Focus Home Interactive','2021-05-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','eFooll 2022','Portkey Games','2023-02-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0027','Edge of Eternity','IO Interactive','2021-01-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0057','Earth Defense Force 6','TinyBuild','2022-07-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0001','Dynasty Warriors 9: Empires','Team17','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0065','Dying: 1983','Nacon','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0014','Dying Light 2 Stay Human','2pt Interactive','2021-12-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0010','Dustborn','The Game Bakers','2020-12-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0009','Dragon Quest X Offline','Supergiant Games','2021-08-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0024','Dragon Ball Z: Kakarot','Inti Creates','2022-01-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Doom Eternal','Prime Matter','2022-11-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','Dolmen','Arc System Works','2021-06-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','Doki Doki Literature Club Plus!','Electronic Arts','2022-02-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','Doctor Who: The Edge of Reality','Focus Home Interactive','2021-06-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','DNF Duel','Sometimes You','2021-03-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','Disgaea 6: Defiance of Destiny','Rockstar Games','2021-11-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Disco Elysium: The Final Cut','Rockstar Games','2022-03-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Disciples: Liberation','Rockstar Games','2022-03-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Dirt 5','Cygames','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0061','The Diofield Chronicle','Cygames','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Dinos Reborn','Sony Interactive Entertainment','2022-03-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','Devil May Cry 5: Special Edition','WB Games','2022-10-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','Destruction AllStars','Mutan','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0080','Destiny 2','KO_OP','2023-06-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Demons Souls','Gearbox Publishing','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','Demon Turf','Sony Interactive Entertainment','2022-11-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Deliver Us The Moon','Bethesda Softworks','2022-03-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Deathloop','All in! Games','2021-09-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','Death Stranding Directors Cut','Sony Interactive Entertainment','2021-09-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','Death Stranding 2 (working title)','Sony Interactive Entertainment','2021-08-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','Deadcraft','miHoYo','2021-04-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Dead Space','CyberConnect2','2023-05-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','Dead Island 2','CyberConnect2','2021-07-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','DC Universe Online','Ratalaika Games','2020-12-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','Daymare: 1994 Sandcastle','Epic Games','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','Darq: Complete Edition','Square Enix','2023-01-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','The Dark Pictures Anthology: House of Ashes','Merge Games','2021-08-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','CYGNI: All Guns Blazing','Sega','2023-02-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0021','Cyberpunk 2077','Maximum Games','2022-06-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','Curved Space','ScottGames','2021-12-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0001','Curse of the Sea Rats','Versus Evil','2021-11-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0069','Crisis Core: Final Fantasy VII Reunion','Square Enix','2023-06-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0024','Cris Tales','Square Enix','2021-05-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0035','Crimsonland','Square Enix','2021-06-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','Cricket 22','Electronic Arts','2022-09-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','Crash Drive 3','Electronic Arts','2021-10-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0009','Crash Bandicoot 4: Its About Time','Electronic Arts','2020-12-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Conway: Disappearance at Dahlia View','Koei Tecmo','2023-03-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Control 2','Koei Tecmo','2021-10-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0007','Concept Destruction','Giants Software','2021-11-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Company of Heroes 3','Ubisoft','2021-10-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0054','Clid the Snail','Epic Games','2022-06-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0030','Chorus','Wired Productions','2021-08-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0024','Chivalry 2','Frontier Developments','2022-08-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','Chicory: A Colorful Tale','Electronic Arts','2021-07-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Chernobylite','Electronic Arts','2022-07-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Century: Age of Ashes','Bilibili','2021-09-07','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Centipede: Recharged','Capcom','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','Cant Drive This','PM Studios','2021-10-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','The Callisto Protocol','Focus Home Interactive','2022-11-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0034','Call of the Sea','Rebellion Developments','2021-11-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Call of Duty: Vanguard','Boss Team Games','2022-05-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','Call of Duty: Modern Warfare II','PQube','2021-06-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0079','Call of Duty: Black Ops Cold War','PM Studios','2021-08-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','Bugsnax','Sometimes You','2021-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','Bridge Constructor: The Walking Dead','Gaijin Entertainment','2021-03-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0037','Breakout: Recharged','HandyGames','2022-11-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','Blood Bowl 3','THQ Nordic','2022-03-01','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','Blazing Strike','Bethesda Softworks','2021-06-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','Blast Brigade vs. the Evil Legion of Dr. Cread','Bandai Namco Entertainment','2022-02-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Black Myth: Wukong','505 Games','2022-05-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0061','Black Legend','505 Games','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0019','Biomutant','Konami','2021-09-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','The Binding of Isaac: Repentance','Dear Villagers','2022-02-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','Beyond Contact','D3 Publisher','2023-06-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','Battlefield 2042','Electronic Arts','2023-03-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0003','Batora: Lost Haven','10tons','2022-01-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','Balan Wonderworld','Koei Tecmo','2022-02-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0035','Babylons Fall','Techland Publishing','2022-02-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Axiom Verge 2','Wizards of the Coast','2021-06-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0014','Avatar: Frontiers of Pandora','Sometimes You','2021-02-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0007','Auto Chess','Ratalaika Games','2021-03-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0002','Atelier Marie Remake: The Alchemist of Salburg','Bandai Namco Entertainment','2023-01-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','Astros Playroom','Bethesda Softworks','2021-06-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Astria Ascending','Prime Matter','2022-05-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','Assetto Corsa Competizione','Serenity Forge','2021-06-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0013','Assassins Creed Valhalla','BBC Studios','2021-09-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0054','The Ascent','Nexon','2022-06-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','Arrog','Hi-Rez Studios','2022-12-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','Archetype Arcadia','Nippon Ichi Software','2022-06-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0067','Arcadegeddon','ZA/UM','2021-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0034','Arcade Paradise','Kalypso Media','2021-10-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0018','Aragami 2','Codemasters','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','Apsulov: End of Gods','Square Enix','2022-09-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0070','Anodyne 2: Return to Dust','Vision Edge Entertainment','1905-07-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0050','Anno 1800','Blizzard Entertainment','2023-06-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','Among Us','Blizzard Entertainment','2021-09-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','Aliens: Dark Descent','Capcom','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0040','Alice Gear Aegis CS: Concerto of Simulatrix','Sony Interactive Entertainment','2021-02-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0030','Alex Kidd in Miracle World DX','THQ Nordic','2022-08-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Alan Wake II','Bungie','2020-12-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','Age of Wonders 4','Sony Interactive Entertainment','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','Aeterna Noctis','Playtonic Friends','2021-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0027','Abandoned','JP: Aniplex','2021-10-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','','Wired Productions','2022-06-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0042','','Coffee Stain Studios','2022-01-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0060','','GungHo Online Entertainment','2022-09-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','','Bethesda Softworks','2021-09-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0006','','Devolver Digital','2021-11-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0057','','Sony Interactive Entertainment','2021-09-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0032','','JP Marvelous','2022-05-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0038','','Electronic Arts','2023-01-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','','Deep Silver','2023-04-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','','Behaviour Interactive','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','','Outright Games','2022-09-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0012','','Leonardo Interactive','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','','WayForward','2022-03-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','','Epic Games','2021-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0041','','Feardemic','2021-03-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0038','','Bandai Namco Entertainment','2021-10-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','','CD Projekt','2022-02-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','','Yacht Club Games','2021-01-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0009','','Serenity Forge','2021-10-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','','Maximum Games','2021-06-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','','PQube','2023-04-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0061','','Paradox Interactive','2022-03-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0038','','Gaijin Entertainment','2020-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','','Square Enix','2022-12-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0040','','Modus Games','2021-07-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','','10tons','2021-01-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','','Pearl Abyss','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','','Nacon','2021-11-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0025','','M2H','2021-07-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0077','','Activision','2021-03-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','','Sold Out','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0030','','505 Games','2021-02-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','','Ratalaika Games','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0051','','Sega','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','','Koch Media','2021-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','','Nacon','2023-03-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','','Deep Silver','2021-12-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','','Deep Silver','2021-06-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0044','','Finji','2021-06-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0050','','All In! Games','2022-04-21','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0037','','Playwing','2022-09-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0038','','Atari, Inc.','2021-09-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0075','','Square Enix','2022-05-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0015','','Perp Games','2021-03-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0048','','Krafton','2022-12-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','','Raw Fury','2021-05-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','','Activision','2021-11-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0050','','Activision','2022-10-28','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0039','','Activision','2020-11-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0004','','Ratalaika Games','2021-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0036','','Young Horses','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0056','','Headup Games','2020-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','','Atari','2022-02-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0020','','Outright Games','2022-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','','2K','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0077','','Ziggurat Interactive','2021-09-09','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0028','','Nacon','2023-02-23','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','','Aksys Games','Q2 2023','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0052','','Game Science','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0049','','Warcave','2021-03-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0058','','THQ Nordic','2022-09-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','','Nicalis','2021-11-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0063','','Electronic Arts','2021-11-19','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0040','','Team17','2022-10-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0047','','Larian Studios','2023-08-31','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0046','','Square Enix','2021-03-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0077','','WB Games','2021-10-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0066','','Square Enix','2022-03-03','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0068','','Lienzo','2022-03-10','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0027','','Ubisoft','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','','Dragonest Game','2021-03-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','','Koei Tecmo','2021-01-26','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0041','','Koei Tecmo','2023-07-13','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0052','','Sony Interactive Entertainment','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0011','','Dear Villagers','2021-09-30','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0045','','Acme Gamestudio','2022-10-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0033','','505 Games','2022-02-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','','Ubisoft','2020-11-12','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0064','','Ubisoft','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0077','','Curve Digital','2022-03-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0029','','Annapurna Interactive','2022-01-25','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0074','','Funselektor Labs','2021-10-06','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0009','','nakana.io','2021-02-05','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0050','','GoldFire Studios','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','','IllFonic','2021-07-08','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0027','','Wired Productions','2022-08-11','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0072','','Lince Works','2021-09-17','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','','Digerati Distribution','2021-08-27','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0023','','Electronic Arts','2022-03-29','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0043','','Ratalatika Games','2021-02-18','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','','ThinkingStars','2022-03-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0053','','Ubisoft','2023-03-16','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0076','','Innersloth','2021-12-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0055','','Cold Iron Studios','2021-08-24','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0029','','Focus Entertainment','2023-06-20','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0026','','Sabec Limited','2021-03-31','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0042','','Mages','2023-03-14','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0009','','Microids','2022-10-04','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0073','','Merge Games','2021-06-22','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0008','','Epic Games Publishing','1905-07-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0071','','Paradox Interactive','2023-05-02','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0062','','Aeternum Game Studios','2021-12-15','Playstation 5','20000','MATTSP0001');
INSERT INTO SANPHAM ( MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE,MATTSP)
VALUES ('TL0016','','Joindots','2021-02-19','Playstation 5','20000','MATTSP0001');

-- Insert khách hàng
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'671174810359',N'Nguyễn Huy Hải',N'0903000030','1997-03-05',N'customer_101@example.com',N'100/17 Trần Hưng Đạo P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'532635261541',N'Nguyễn Thị Thanh Thảo',N'0903000052','1997-03-06',N'customer_102@example.com',N'93/5 Bis ấp 3 P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'368511413984',N'Hứa Trần Linh Uyên',N'0903000096','1997-03-07',N'customer_103@example.com',N'176 Lê Lai P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'620900401294',N'Trần Anh Tuấn',N'0903000280','1997-03-08',N'customer_104@example.com',N'122 Lô B C/C Cô Giang P.Cô Giang  Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'332404140514',N'Nguyễn Ngọc Thư',N'0903000368','1997-03-09',N'customer_105@example.com',N'3 Nguyễn Huệ P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'713134731100',N'Trần Minh Tuyết',N'0903000499','1997-03-10',N'customer_106@example.com',N'258/17/15 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'618543871850',N'Nguyễn Vĩnh Khương',N'0903000606','1997-03-11',N'customer_107@example.com',N'54 Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'608668537253',N'Trần Thị Hà',N'0903000612','1997-03-12',N'customer_108@example.com',N'453/77/d18 Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'684142405650',N'Nguyễn Tiến Quyết',N'0903000659','1997-03-13',N'customer_109@example.com',N'7 LÊ Duẩn P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'360682333808',N'Nguyễn Thị Kim Hậu',N'0903000737','1997-03-14',N'customer_110@example.com',N'120 Lý Thái Tổ P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'207459618459',N'Lê Thị Dưỡng',N'0903000775','1997-03-15',N'customer_12@example.com',N'A2/10 KP2 P.Tân Phong Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'593490285189',N'Nguyễn Thị Hoàng Vân',N'0903000791','1997-03-16',N'customer_111@example.com',N'1/60/6 Trần Văn Đang P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'219351888869',N'Nguyễn Thị Diễm',N'0903000815','1997-03-17',N'customer_112@example.com',N'400A Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'982150476743',N'Lê Thành Nam',N'0903000835','1997-03-18',N'customer_113@example.com',N'22 Phòng 209 Nguyễn Trãi Khu Chung Cư P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'774350549257',N'Nguyễn Lê Ngọc',N'0903001001','1997-03-19',N'customer_114@example.com',N'21B/9 Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'524389372126',N'Huỳnh Thị Sông Hương',N'0903001003','1997-03-20',N'customer_115@example.com',N'19 Nguyễn Trung Trực P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'923371122690',N'Huỳnh Thị Thanh Loan',N'0903001124','1997-03-21',N'customer_116@example.com',N'6B/13 ấp 4 Đường 23 P.Tân Quy Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'676807514266',N'Lê Thanh Anh Tuấn',N'0903001128','1997-03-22',N'customer_117@example.com',N'319/21 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'725610174738',N'Trần Quang Thảo',N'0903001131','1997-03-23',N'customer_118@example.com',N'8A/8C2 Thái Văn Lung P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'463681975192',N'Đào Thị Ngọc Mai',N'0903001139','1997-03-24',N'customer_119@example.com',N'3/6 KP1 Tổ 02 P.An Khánh Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'725031651955',N'Dương Thị Hoa',N'0903001165','1997-03-25',N'customer_120@example.com',N'7A Phạm Viết Chánh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'232331878937',N'Lê Ngọc Thọ',N'0903001211','1997-03-26',N'customer_13@example.com',N'68/4 KP4 P.Phú Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'334107690504',N'Lý Kim Giàu',N'0903001217','1997-03-27',N'customer_121@example.com',N'235/31 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'979331263631',N'Đỗ Phương Thảo',N'0903001218','1997-03-28',N'customer_122@example.com',N'208 Nguyễn Đình Chiểu P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'251641870854',N'Dương Kim Xuyến',N'0903001257','1997-03-29',N'customer_123@example.com',N'650 KP04 P.An Phú Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'842688135353',N'Lê Xuân Hồng',N'0903001306','1997-03-30',N'customer_124@example.com',N'240 Pasteur P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'311574935156',N'Lương Thanh Tùng',N'0903001337','1997-03-31',N'customer_125@example.com',N'164 KP2 Nguyễn Duy Trinh P.Bình Trưng Tây Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'998565014089',N'Nguyễn Thị Ngọc Thơ',N'0903001356','1997-04-01',N'customer_126@example.com',N'174/67/4 Nguyễn Thiện Thuật P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'684972626194',N'Nguyễn Đức Hợp',N'0903001409','1997-04-02',N'customer_127@example.com',N'647 Điện BIên Phủ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'280964037305',N'Đỗ Tuyết Dung',N'0903001602','1997-04-03',N'customer_128@example.com',N'41/19 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'741597780843',N'Võ Anh Tuấn',N'0903001630','1997-04-04',N'customer_129@example.com',N'306 Nguyễn Thị Minh Khai P.05 Q.03 TPHCM(Cửa Hàng Mật Ong)');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'514776155490',N'Trương Thị Quỳnh Giao',N'0903001671','1997-04-05',N'customer_130@example.com',N'101/22 Trần Khắc Chân P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'112952896173',N'Nguyễn Thị Thanh Vân',N'0903001697','1997-04-06',N'customer_14@example.com',N'20/16H Kỳ Đồng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'703030233703',N'Trương Thị Kim Oanh',N'0903001716','1997-04-07',N'customer_131@example.com',N'59/76 Huỳnh Tịnh Của P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'604436931009',N'Nguyễn Lê Hiếu',N'0903001726','1997-04-08',N'customer_132@example.com',N'402/23 Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'135330055680',N'Cao Trí Nhân',N'0903001781','1997-04-09',N'customer_133@example.com',N'359/7 Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'598465326889',N'Phạm Vũ Hồng',N'0903001787','1997-04-10',N'customer_134@example.com',N'242/44 Nguyễn Thiện Thuật P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'466932338551',N'Đặng Thị Ngọc Thủy',N'0903001805','1997-04-11',N'customer_135@example.com',N'136/20 Trần Quang Diệu P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'124176922572',N'Châu Bạch Loan',N'0903001806','1997-04-12',N'customer_136@example.com',N'74/6A KP4 Tổ 09 P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'252359514842',N'Đỗ Thị Ngọc linh',N'0903001911','1997-04-13',N'customer_136@example.com',N'235/88 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'940495002671',N'Trần Hữu Lộc',N'0903001957','1997-04-14',N'customer_136@example.com',N'218C Nguyễn Thị Minh Khai P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'805876307201',N'Nguyễn Thị Hương',N'0903002115','1997-04-15',N'customer_136@example.com',N'202/24 Trần Quốc Thảo Tổ 45 P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'775899044405',N'Võ Trọng Bân Xưởng Điện Khí Bason',N'0903002210','1997-04-16',N'customer_136@example.com',N'02 Tôn Đức Thắng Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'581291678162',N'Đặng Thị Phương Ngọc',N'0903002233','1997-04-17',N'customer_136@example.com',N'198 Nguyễn Đình Chiểu P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'428908726636',N'Lê Huỳnh Giao',N'0903002274','1997-04-18',N'customer_136@example.com',N'210 Cô Bắc P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'682897469737',N'Trần Kiến Vinh',N'0903002287','1997-04-19',N'customer_136@example.com',N'287 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'451478149602',N'Nguyễn Minh Hoàng',N'0903002325','1997-04-20',N'customer_136@example.com',N'25/3E KP1 P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'182857050497',N'Trần Tiểu Liên',N'0903002378','1997-04-21',N'customer_136@example.com',N'299 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'999162553830',N'Phạm Hồng Phương',N'0903002463','1997-04-22',N'customer_136@example.com',N'TK31/5 Nguyễn Cảnh Chân P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'555875503580',N'Đỗ Thu Nam Bình',N'0903002568','1997-04-23',N'customer_136@example.com',N'219 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'592216070259',N'Trần Nguyễn Minh Hoàng',N'0903002600','1997-04-24',N'customer_136@example.com',N'10 Phan Bội Châu P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'381139346008',N'Trần Quang Vinh-
CTY XNK Ngành In TPHCM',N'0903002627','1997-04-25',N'customer_136@example.com',N'391A Trần Hưng Đạo P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'958393450417',N'Nguyễn Thị Mao',N'0903002774','1997-04-26',N'customer_136@example.com',N'TK21/54 Nguyễn Cảnh Chân P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'575081568759',N'Phạm Thị Thanh Hiển',N'0903002929','1997-04-27',N'customer_136@example.com',N'10/70 Kỳ Đồng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'928533927801',N'Nguyễn Thị Kim Thúy',N'0903002953','1997-04-28',N'customer_136@example.com',N'8A/2C2 Thái Văn Lung P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'890757339215',N'Nguyễn Thu Hường',N'0903002994','1997-04-29',N'customer_136@example.com',N'70-72 Hàm Nghi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'853369268388',N'Lê Thị Thanh Thu',N'0903003007','1997-04-30',N'customer_136@example.com',N'17 Phan Kế Bính P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'549419045534',N'Tô Kiều Trinh',N'0903003195','1997-05-01',N'customer_136@example.com',N'462B/51 CMT8 P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'633858308754',N'Lê Quốc Thắng',N'0903003201','1997-05-02',N'customer_136@example.com',N'118/45 Trần Quang Diệu P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'450822389642',N'Võ Phương Đông',N'0903003266','1997-05-03',N'customer_136@example.com',N'2A Đường Số 21 KP3 P.Tân Quy Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'788011135514',N'Lê Thị Ngọc Mai',N'0903003314','1997-05-04',N'customer_136@example.com',N'73 Cao Thắng P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'466033072912',N'Vũ Hoàng Anh',N'0903003377','1997-05-05',N'customer_136@example.com',N'139 Nguyễn Thông P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'457952040787',N'Trần Tấn Đức',N'0903003565','1997-05-06',N'customer_136@example.com',N'45/31 Trần Hưng Đạo Lầu 2 P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'637548507823',N'Lê Phú Hưng',N'0903003605','1997-05-07',N'customer_136@example.com',N'23 Trần Quí Khoách P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'926431945419',N'Ngô Quỳnh Hương',N'0903003636','1997-05-08',N'customer_136@example.com',N'23/3 Bà Lê Chân P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'686128752238',N'Ngô Quỳnh Hương -',N'0903003737','1997-05-09',N'customer_136@example.com',N'23/3 Bà Lê Chân P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'406875924118',N'Nguyễn Thị Thanh Thúy',N'0903003918','1997-05-10',N'customer_136@example.com',N'171/22A Cô Bắc P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'721514351084',N'Nguyễn Minh Phượng',N'0903003934','1997-05-11',N'customer_136@example.com',N'6/2 Nguyễn Siêu P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'701547727028',N'Nguyễn Lâm Tấn Ngọt',N'0903003989','1997-05-12',N'customer_136@example.com',N'88/7 Lưu Trọng Lư P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'701812012414',N'Lê Đình Hưng',N'0903004028','1997-05-13',N'customer_136@example.com',N'C6/7 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'988457328805',N'Tô Hán Minh',N'0903004032','1997-05-14',N'customer_136@example.com',N'353/30 Phạm Ngũ Lão P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'884688499742',N'Cù Nam Tiến',N'0903005542','1997-05-15',N'customer_136@example.com',N'85/16 Trần Đình Xu P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'109414608099',N'Trần Thị Thu Hương',N'0903005550','1997-05-16',N'customer_136@example.com',N'58 Thạch Thị Thanh P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'225255662793',N'Nguyễn Quốc Toàn',N'0903005571','1997-05-17',N'customer_136@example.com',N'190 Pasteur P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'428240625095',N'Trương Đình Kiệt',N'0903005655','1997-05-18',N'customer_136@example.com',N'391 Nguyễn Công Trứ P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'641067875502',N'Lê Thị Huyền',N'0903005738','1997-05-19',N'customer_136@example.com',N'51/118/20 Cao Thắng P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'242791091338',N'Nguyễn Thắng Lợi',N'0903005750','1997-05-20',N'customer_136@example.com',N'23 Lô I KP1 P.Tân Phú Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'349627968802',N'Trần Đức Lợi',N'0903005788','1997-05-21',N'customer_136@example.com',N'239/67/18A Trần Văn Đang P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'897038376276',N'Bùi Thanh Long',N'0903005882','1997-05-22',N'customer_136@example.com',N'107/10 Trương Định P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'394185530189',N'Phạm Đăng Vượng',N'0903005978','1997-05-23',N'customer_136@example.com',N'83 Cống Quỳnh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'930858697090',N'Trần Vũ Lâm-CTY TNHH Sơn Jotun VN',N'0903006225','1997-05-24',N'customer_136@example.com',N'6 Lầu 17 Phòng 1718 Lê Thánh Tôn P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'634845046973',N'Vũ Đình Khu',N'0903006396','1997-05-25',N'customer_136@example.com',N'Đội 3 C14 01 Nguyễn Thông Ga Sài Gòn P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'971064147370',N'Nguyễn Đình Nghĩa',N'0903006477','1997-05-26',N'customer_136@example.com',N'128 ấp 01 P.An Phú Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'896797935884',N'Nguyễn Tiến Ân',N'0903006747','1997-05-27',N'customer_136@example.com',N'262/18A Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'271813416317',N'Đặng Thân Chí',N'0903006767','1997-05-28',N'customer_136@example.com',N'80 Đinh Tiên Hoàng P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'133292057247',N'Nguyễn Thị Tám',N'0903006864','1997-05-29',N'customer_136@example.com',N'304/19 Tổ 31 P.An Lợi Đông Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'106449569514',N'Bùi Xuân Hợi',N'0903006879','1997-05-30',N'customer_136@example.com',N'393/11 Trần Hưng Đạo P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'179501843203',N'Lê Kim Phượng',N'0903006930','1997-05-31',N'customer_136@example.com',N'362/10 Hai Bà Trưng P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'684456104675',N'Lưu Đình Khoa',N'0903006968','1997-06-01',N'customer_136@example.com',N'404/77 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'626954898523',N'Đoàn Thị Loan',N'0903007072','1997-06-02',N'customer_136@example.com',N'64 Thạch Thị Thanh P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'841752281004',N'Bùi Thị Thu Hương',N'0903007188','1997-06-03',N'customer_136@example.com',N'4/301 Lê Lợi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'333154708378',N'Dương Thành Nghĩa',N'0903007686','1997-06-04',N'customer_136@example.com',N'3/5 Lương Định Của P.Bình Khánh Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'687166840498',N'Nguyễn Phước Trí',N'0903007705','1997-06-05',N'customer_136@example.com',N'458/36A. Huỳnh Tấn Phát P.Bình Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'333680576984',N'Nguyễn Thị Mỹ Dung',N'0903007858','1997-06-06',N'customer_136@example.com',N'136/14 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'180541517685',N'Trần Kim Long',N'0903007871','1997-06-07',N'customer_136@example.com',N'012 Lô C C/C Trần Quốc Thảo P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'190262607079',N'Từ Chiêu Lương',N'0903007878','1997-06-08',N'customer_136@example.com',N'2/4 Phan Liêm P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'985607500642',N'Lợi Phối Nhi',N'0903007890','1997-06-09',N'customer_136@example.com',N'1/8 Phan Văn Trường P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'425836204242',N'Hồ Ngọc Châu Long',N'0903008027','1997-06-10',N'customer_136@example.com',N'235 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'616477158958',N'Trần Kim Lan',N'0903008099','1997-06-11',N'customer_136@example.com',N'145B Nguyễn Đình Chiểu Q.03 TPHCM-CTY Sing Việt');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'445599879435',N'Nguyễn Việt Hùng - Công Ty TNHH Một Thành Viên Đại Trường Tiến',N'0903008171','1997-06-12',N'customer_136@example.com',N'4/10 KP1 P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'443795173948',N'Nguyễn Thị Ngọc Dung',N'0903008180','1997-06-13',N'customer_136@example.com',N'78A Cao Thắng P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'389254642909',N'Nguyễn Phi Tâm',N'0903008200','1997-06-14',N'customer_136@example.com',N'192B/1A CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'693005256323',N'Phan Thị Thanh Huyên',N'0903008209','1997-06-15',N'customer_136@example.com',N'192B/1A CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'672593240366',N'Phạm Thanh Thế',N'0903008254','1997-06-16',N'customer_136@example.com',N'134 Hàm Nghi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'143775037716',N'Hà Thị Mai Anh-Cty TNHH Châu Việt Anh',N'0903008490','1997-06-17',N'customer_136@example.com',N'50 Phạm Ngọc Thạch P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'255275052098',N'Phạm Kim Loan-DNTN Khách Sạn Hải Hà',N'0903008499','1997-06-18',N'customer_136@example.com',N'122 Lê Lai P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'802496636595',N'Trần Hữu Hiệp',N'0903008866','1997-06-19',N'customer_136@example.com',N'351/58 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'366360209367',N'Đinh Thị Hồng Nga',N'0903008875','1997-06-20',N'customer_136@example.com',N'228B Điện Biên Phủ P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'395117624582',N'Nguyễn Anh Tuấn',N'0903009088','1997-06-21',N'customer_136@example.com',N'3/8B Nguyễn Văn Thủ P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'260579511779',N'Tạ Thị Thảo',N'0903009786','1997-06-22',N'customer_136@example.com',N'235C Nhà Sách Nguyễn Văn Cừ P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'674201338621',N'Khổng Hữu Trình',N'0903009821','1997-06-23',N'customer_136@example.com',N'237/76 Trần Văn Đang P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'334194055415',N'Nguyễn Thị Bạch Yến',N'0903010070','1997-06-24',N'customer_136@example.com',N'60 Đinh Công Tráng P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'738564047300',N'Vũ Hải Thành',N'0903010121','1997-06-25',N'customer_136@example.com',N'23/1 Lương Định Của KP77 P.An Khánh Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'510513589728',N'Phan Xuân Mai',N'0903010233','1997-06-26',N'customer_136@example.com',N'29 Phạm Ngọc Thạch P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'920774927588',N'Thân Hải Thanh',N'0903010316','1997-06-27',N'customer_136@example.com',N'6/16 CMT8 P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'416804913180',N'Nguyễn Thị Mỹ Linh',N'0903010467','1997-06-28',N'customer_136@example.com',N'635/2 Nguyễn Đình Chiểu P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'495967505364',N'Nguyễn Thanh Phong',N'0903010468','1997-06-29',N'customer_136@example.com',N'329/32 Trần Hưng Đạo P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'348536727748',N'Nguyễn Đức Nghĩa',N'0903010470','1997-06-30',N'customer_136@example.com',N'03 Công Trường Quốc Tế Q.03 TPHCM-Đại Học Quốc Gia TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'730354427551',N'Nguyễn Anh Tuấn',N'0903010498','1997-07-01',N'customer_136@example.com',N'524/186A Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'931420372651',N'Đặng Chí Công',N'0903010515','1997-07-02',N'customer_136@example.com',N'111/22 Đinh Tiên Hoàng P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'717266593660',N'Bảo Thịnh',N'0903010525','1997-07-03',N'customer_136@example.com',N'220/31B Lê Văn Sĩ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'148854900732',N'Vương Đình Duy Linh',N'0903010633','1997-07-04',N'customer_136@example.com',N'240A/42C Cách Mạng Tháng Tám P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'926969228341',N'Huỳnh Trọng Nghĩa',N'0903010678','1997-07-05',N'customer_136@example.com',N'554/44 C Lô F Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'740806429054',N'Võ Thị Thu Sương',N'0903010703','1997-07-06',N'customer_136@example.com',N'107AT Trần Văn Đang P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'940255002557',N'Trần Thị Minh Hoàng',N'0903010802','1997-07-07',N'customer_136@example.com',N'220/80 Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'326165097342',N'Võ Minh Trứ',N'0903010904','1997-07-08',N'customer_136@example.com',N'80/41 Trần Quang Diệu P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'423611885497',N'Phan Hữu Thanh',N'0903011617','1997-07-09',N'customer_136@example.com',N'549/15 Nguyễn Đình Chiểu P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'370465152801',N'Trần Kim Lang',N'0903012108','1997-07-10',N'customer_136@example.com',N'353/52B Điện Biên Phủ P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'215777194278',N'Lê Thị Xuân Phương',N'0903012213','1997-07-11',N'customer_136@example.com',N'109/8 ấp 3 P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'930703938223',N'Đỗ Thị Lệ Thu',N'0903012669','1997-07-12',N'customer_136@example.com',N'146 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM-CTY Cổ Phần XD CN Descon');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'507199664604',N'Phạm Anh Tuấn',N'0903012877','1997-07-13',N'customer_136@example.com',N'1A Phạm Ngọc Thạch P.Bến Nghé Q.01 TPHCM-Đinh Thế Phương');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'339730039130',N'Đoàn Hùng Thanh',N'0903013033','1997-07-14',N'customer_136@example.com',N'453/KC35 Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'872267522225',N'Lâm Thị Sơn Nữ',N'0903013344','1997-07-15',N'customer_136@example.com',N'78/08Bis ấp 5 P.Tân Kiểng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'932637124441',N'Đinh Hải Yến',N'0903013445','1997-07-16',N'customer_136@example.com',N'17A Ngô Văn Năm P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'301369038813',N'Nguyễn Thị Cúc',N'0903013707','1997-07-17',N'customer_136@example.com',N'115/76 Trần Đình Xu P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'200149475683',N'Nguyễn Thị Phi Vân',N'0903013711','1997-07-18',N'customer_136@example.com',N'39 Đặng Dung P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'579195012947',N'Lê Hồ Thức',N'0903013717','1997-07-19',N'customer_136@example.com',N'314 Bến Chương Dương P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'710962922518',N'Lê Quang Thức',N'0903013837','1997-07-20',N'customer_136@example.com',N'78/1 Lâm Văn Bền P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'792231387816',N'Bạch Thái Hùng',N'0903017788','1997-07-21',N'customer_136@example.com',N'142 Điện Biên Phủ P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'636165270756',N'Nguyễn Ngọc Tỏa',N'0903030030','1997-07-22',N'customer_136@example.com',N'269F/206 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'154562527755',N'Hà Thị Thu Hiền-Cty TNHH XD TM Thiên Long Nam',N'0903030055','1997-07-23',N'customer_136@example.com',N'12 Nguyễn Bá Luân P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'208413996422',N'Lê Tấn Dũng',N'0903030209','1997-07-24',N'customer_136@example.com',N'270 Nguyễn Thiện Thuật P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'166655896768',N'Phạm Hoàng Anh Tuấn',N'0903030323','1997-07-25',N'customer_136@example.com',N'B20/11D Đường 51 KP5 P.Bình Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'803418413846',N'Phạm Đức Trị-NH TM CP VN Tín Nghĩa',N'0903030349','1997-07-26',N'customer_136@example.com',N'50-52 Phạm Hồng Thái P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'873468255850',N'Nguyễn Ngọc Chấn',N'0903030355','1997-07-27',N'customer_136@example.com',N'390/9 CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'457775306958',N'Dương Tấn Dũng',N'0903030380','1997-07-28',N'customer_136@example.com',N'12/2 KP2 P.Phú Mỹ Q.07 TPHCM-Đội An Ninh CA H.Nhà Bè');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'627051696158',N'Võ Thị Kim Chi',N'0903030868','1997-07-29',N'customer_136@example.com',N'135/15 Trần Hưng Đạo P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'603686194019',N'Nguyễn Hào Hiệp',N'0903030979','1997-07-30',N'customer_136@example.com',N'369 Võ Văn Tần Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'866611920574',N'Phạm Thị Phước Lộc',N'0903031221','1997-07-31',N'customer_136@example.com',N'16/75/45 Nguyễn Thiện Thuật P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'790918905937',N'Đoàn Thị Thanh Tâm',N'0903032001','1997-08-01',N'customer_136@example.com',N'24/13Z KP2 Trần Xuân Soạn Tổ 16 P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'449199153759',N'Nguyễn Thị Tuyết Trinh-CTY TNHH TM DV Truyền Thông Hoàng Phi Tường',N'0903033035','1997-08-02',N'customer_136@example.com',N'215G3 Nguyễn Văn Hưởng P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'439657464557',N'Nguyễn Quỳnh Trang',N'0903033343','1997-08-03',N'customer_136@example.com',N'221/4 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'628594505040',N'Nguyễn Xuân Trang',N'0903033360','1997-08-04',N'customer_136@example.com',N'235/1 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'799504723546',N'Trần Quốc Uy',N'0903033433','1997-08-05',N'customer_136@example.com',N'61/34 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'271603854737',N'Thân Trọng Xuân Phương',N'0903034422','1997-08-06',N'customer_136@example.com',N'285/11 Võ Văn Tần Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'790370902067',N'Nguyễn Thị An',N'0903034433','1997-08-07',N'customer_136@example.com',N'48/6 Trần Đình Xu P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'243371042741',N'Bảo Vũ',N'0903035039','1997-08-08',N'customer_136@example.com',N'B202 Hưng Vượng I Nguyễn Văn Linh P.Phú Mỹ Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'652905581106',N'Đặng Hồng Nhung',N'0903035878','1997-08-09',N'customer_136@example.com',N'177 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'286155407258',N'Nguyễn Do',N'0903036673','1997-08-10',N'customer_136@example.com',N'32/11 Vườn Chuối P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'408738152075',N'Phạm Tấn Thành',N'0903037379','1997-08-11',N'customer_136@example.com',N'B12/7 P.Bình An Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'193034031567',N'Nguyễn Thị Bạch Tuyết',N'0903038844','1997-08-12',N'customer_136@example.com',N'498 CMT8 P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'112519077438',N'Nguyễn Đình Mỹ Quyên',N'0903039698','1997-08-13',N'customer_136@example.com',N'116 Lê Lai P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'565206352670',N'Trương Thị Thu',N'0903300541','1997-08-14',N'customer_136@example.com',N'18/164/D1 Nguyễn Thị Minh Khai P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'227839653510',N'Huỳnh Thị Kim Hoa',N'0903301245','1997-08-15',N'customer_136@example.com',N'369 Võ Văn Tần P.05 Q.03 TPHCM-Lê Tấn Đào');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'374287662748',N'Nguyễn Nghĩa Bình',N'0903301634','1997-08-16',N'customer_136@example.com',N'175/11 Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'165089190658',N'Trần Chánh Thảo',N'0903302728','1997-08-17',N'customer_136@example.com',N'128/9 Bàn Cờ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'891339972759',N'Nguyễn Đức Thành',N'0903303093','1997-08-18',N'customer_136@example.com',N'355 C/C 353 Nguyễn Trãi Lầu 2 P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'693339037484',N'Bạch Thị Mai Liên',N'0903306340','1997-08-19',N'customer_136@example.com',N'35 Trần Quang Diệu P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'594551289126',N'Hứa Kim Loan',N'0903308466','1997-08-20',N'customer_136@example.com',N'265/7/21 Phạm Ngũ Lão P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'184181512771',N'Lâm Quang Vũ',N'0903308803','1997-08-21',N'customer_136@example.com',N'26/2 Nguyễn Bỉnh Khiêm P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'843354397772',N'Phạm Ngọc Lâm',N'0903309585','1997-08-22',N'customer_136@example.com',N'18 Lê Thị Riêng P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'865831832571',N'Trần Phạm Mai Anh',N'0903309898','1997-08-23',N'customer_136@example.com',N'148 Điện Biên Phủ P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'430280509897',N'Lã Mạnh Tuấn',N'0903310466','1997-08-24',N'customer_136@example.com',N'402/18 Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'756021955718',N'Lê Trương Hồng Vân',N'0903310602','1997-08-25',N'customer_136@example.com',N'762 Nguyễn Đình Chiểu Q.03 TPHCM-Hoàng Đôn');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'838222479960',N'Lâm Việt Hùng',N'0903311811','1997-08-26',N'customer_136@example.com',N'110 Điện Biên Phủ P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'644982151011',N'Trần Ngọc Khang',N'0903312631','1997-08-27',N'customer_136@example.com',N'TK15/1 Nguyễn Cảnh Chân P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'972436811609',N'Từ Công Phương',N'0903313155','1997-08-28',N'customer_136@example.com',N'57/10 Bùi Viện P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'463692833863',N'Nguyễn Thị Thủy Tiên',N'0903313924','1997-08-29',N'customer_136@example.com',N'205/13J Trần Văn Đang P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'518184544176',N'Trần Thị Huỳnh Nga',N'0903314330','1997-08-30',N'customer_136@example.com',N'1A Lê Thị Hồng Gấm P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'626266226339',N'Ngô Tấn Quang',N'0903314567','1997-08-31',N'customer_136@example.com',N'189 C/X Đường Sắt Lý Thái Tổ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'953307912479',N'Phạm Lê Minh',N'0903315347','1997-09-01',N'customer_136@example.com',N'3/4A Nguyễn Văn Qúy P.Phú Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'527838018230',N'Chu Thị Kiều Lan',N'0903316483','1997-09-02',N'customer_136@example.com',N'109 Võ Thị Sáu P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'403672106540',N'Phạm Thị Ngọc Minh',N'0903316655','1997-09-03',N'customer_136@example.com',N'104-106/206 Nguyễn Huệ P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'520433195010',N'Lê Sứ',N'0903316956','1997-09-04',N'customer_136@example.com',N'236/7 KP3 P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'337555760532',N'Nguyễn Minh Nhựt',N'0903318350','1997-09-05',N'customer_136@example.com',N'1/60/20B1 Trần Văn Đang P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'322679899982',N'Đoàn Hoài Minh',N'0903318888','1997-09-06',N'customer_136@example.com',N'215F Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'141976429298',N'Trần Thị Tố Sâm',N'0903319747','1997-09-07',N'customer_136@example.com',N'441/46/4 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'349315253594',N'Nguyễn Hữu Thắng',N'0903319898','1997-09-08',N'customer_136@example.com',N'4A-4B Võ Thị Sáu P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'881129052568',N'Ngô Thị Đài Trang',N'0903320595','1997-09-09',N'customer_136@example.com',N'76/34 Cây Bàng P.Thủ Thiêm Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'380613097665',N'Lê Ngọc Thuận',N'0903321000','1997-09-10',N'customer_136@example.com',N'68/223 Trần Quang Khải P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'619226418224',N'Nguyễn Thị Thanh Sơn-CTY TNHH Phương Nam',N'0903321181','1997-09-11',N'customer_136@example.com',N'24 Trương Định P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'786539566849',N'Nguyễn Quốc Lâm Viên',N'0903321535','1997-09-12',N'customer_136@example.com',N'80/68 Trần Quang Diệu P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'142553815975',N'Lê Quang Linh',N'0903321686','1997-09-13',N'customer_136@example.com',N'357 Trần Hưng Đạo P.Cầu Kho Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'380223932983',N'Nguyễn Hữu Nam',N'0903321717','1997-09-14',N'customer_136@example.com',N'1/5 Đường số 1 P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'886087885159',N'Đoàn Ngọc Sơn',N'0903321959','1997-09-15',N'customer_136@example.com',N'D18/10 KP3 P.Bình Khánh Q.2 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'825398431686',N'Trần Thái Ngọc Duy',N'0903322347','1997-09-16',N'customer_136@example.com',N'28 Mạc Đỉnh Chi P.Đakao Q.01 TPHCM-CTY Decofi');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'140842988945',N'Nguyễn Thị Ngọc Hòa',N'0903322393','1997-09-17',N'customer_136@example.com',N'27/13 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'161670854577',N'Lê Thành Nhân',N'0903322436','1997-09-18',N'customer_136@example.com',N'94/11 Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'351558318172',N'Nguyễn Trung Tú-CTY TNHH MTV Đầu Tư Phát Triển Công Nghiệp Và Vận Tải (Tracodi.co;Ltd)',N'0903322656','1997-09-19',N'customer_136@example.com',N'89 CMT8 P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'286881644192',N'Hoàng Thị Phương',N'0903322696','1997-09-20',N'customer_136@example.com',N'66/10 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'972383569167',N'Lê Minh Quang',N'0903322777','1997-09-21',N'customer_136@example.com',N'54-56 Nguyễn Trãi P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'332289907888',N'Lê Thị Bích Hạnh',N'0903322888','1997-09-22',N'customer_136@example.com',N'173 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'368821187633',N'Tạ Hoàng Nhi',N'0903323254','1997-09-23',N'customer_136@example.com',N'114/2/6 Đề Thám P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'729472618899',N'Trương Tuấn Anh',N'0903323256','1997-09-24',N'customer_136@example.com',N'79 Trương Định P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'987984101617',N'Hoắc Bá Thuận',N'0903323455','1997-09-25',N'customer_136@example.com',N'193 Võ Văn Tần P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'129175558087',N'Trần Quang',N'0903323838','1997-09-26',N'customer_136@example.com',N'98F Lê Lai P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'148853307580',N'Hứa Lê Ngọc',N'0903323969','1997-09-27',N'customer_136@example.com',N'43 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'551796864190',N'Trần Tấn Quốc',N'0903324541','1997-09-28',N'customer_136@example.com',N'150/43 Nguyễn Cư Trinh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'505208247970',N'Lê Thị Thuận',N'0903325705','1997-09-29',N'customer_136@example.com',N'235/86B Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'941988678288',N'Lê Thị Kim Thu',N'0903326565','1997-09-30',N'customer_136@example.com',N'362/23C Hai Bà Trưng P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'357967140171',N'Trần Bê Ca',N'0903326868','1997-10-01',N'customer_136@example.com',N'1/202 Nguyễn Thiệp P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'743242825044',N'Nguyễn Ngọc Kha-K/S Bến Nghé',N'0903327732','1997-10-02',N'customer_136@example.com',N'9/6 KP2 P.Tân Thuận Đông Q.07 TPHCM-Lê Thị Trang Đài');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'129715412688',N'Nguyễn Ngọc Kha-K/S Bến Nghé',N'0903327732','1997-10-03',N'customer_136@example.com',N'9/6 KP2 P.Tân Thuận Đông Q.07 TPHCM-Lê Thị Trang Đài');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'832896998201',N'Lê Thanh Bình',N'0903328558','1997-10-04',N'customer_136@example.com',N'245/25 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'305043345610',N'Nguyễn Thị Hải(Nguyễn Kim Hải)',N'0903328877','1997-10-05',N'customer_136@example.com',N'205/39/38 Trần Văn Đang P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'431459983628',N'Phạm Quốc Khanh',N'0903328888','1997-10-06',N'customer_136@example.com',N'BD3 Hưng Vượng 3 Phú Mỹ Hưng P.Tân Phong Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'164494321144',N'Đinh Nguyễn Thanh Dương',N'0903329378','1997-10-07',N'customer_136@example.com',N'101 Hồ Tùng Mậu P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'736219756064',N'Nguyễn Anh Tuấn',N'0903329878','1997-10-08',N'customer_136@example.com',N'34 Nguyễn Du P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'419222852901',N'Đỗ Bích Thủy-CTYTNHH Nam Việt',N'0903330001','1997-10-09',N'customer_136@example.com',N'22Bis Lê Thánh Tôn P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'743818272502',N'Châu Chí Hiền',N'0903330005','1997-10-10',N'customer_136@example.com',N'25/25 Cống Quỳnh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'793366755609',N'Trần Việt Tiến-CTY CP MT Gia Long',N'0903330011','1997-10-11',N'customer_136@example.com',N'63 Lý Chính Thắng P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'533962692938',N'Trần Việt Tiến-CTY CP MT Gia Long',N'0903330011','1997-10-12',N'customer_136@example.com',N'63 Lý Chính Thắng P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'888501541390',N'Hoàng Đức Thọ',N'0903330097','1997-10-13',N'customer_136@example.com',N'280 Điện Biên Phủ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'955374625165',N'Nguyễn Hoài Lâm',N'0903330144','1997-10-14',N'customer_136@example.com',N'41 Lưu Văn Lang P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'877174466072',N'Nguyễn Thị Lan',N'0903330239','1997-10-15',N'customer_136@example.com',N'263/1 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'516685681694',N'Nguyễn Thị Thanh Nhã',N'0903330258','1997-10-16',N'customer_136@example.com',N'TK29/18 Nguyễn Cảnh Chân P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'596158850796',N'Nguyễn Quốc Hùng',N'0903330294','1997-10-17',N'customer_136@example.com',N'13 Trần Khánh Dư P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'911091159502',N'Nguyễn Thị Kim Hậu',N'0903330330','1997-10-18',N'customer_136@example.com',N'120 Lý Thái Tổ P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'493706848634',N'Nguyễn Xuân Trường',N'0903330379','1997-10-19',N'customer_136@example.com',N'9-19 Lầu 4 Hồ Tùng Mậu P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'136600990133',N'Lê Anh Tuấn',N'0903330390','1997-10-20',N'customer_136@example.com',N'15/5 KP1 Huỳnh Tấn Phát P.Phú Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'964479032723',N'Phan Thị Hiệp',N'0903330559','1997-10-21',N'customer_136@example.com',N'15/6B Cô Bắc P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'417439180677',N'Phạm Thị Tý',N'0903330589','1997-10-22',N'customer_136@example.com',N'1A Đề Thám P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'316492792539',N'Nguyễn Thanh Hùng',N'0903330597','1997-10-23',N'customer_136@example.com',N'35/9B Trần Đình Xu P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'382720002686',N'Trần Huấn Vinh',N'0903330768','1997-10-24',N'customer_136@example.com',N'457 Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'385581334842',N'Dương Thị Thanh Mai',N'0903330866','1997-10-25',N'customer_136@example.com',N'459B3 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'697619577673',N'Nguyễn Minh Lợi',N'0903330876','1997-10-26',N'customer_136@example.com',N'543/36 Nguyễn Đình Chiểu P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'236269233807',N'Trần Anh Vinh',N'0903331010','1997-10-27',N'customer_136@example.com',N'26/11 Trương Định P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'328512656715',N'Ngô Xuân Trường',N'0903331035','1997-10-28',N'customer_136@example.com',N'205 Lương Đình Của P.Bình Khánh Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'783027049929',N'Nguyễn Ngọc Tri',N'0903331059','1997-10-29',N'customer_136@example.com',N'404/59 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'896873518552',N'Hà Quang Luyến',N'0903331212','1997-10-30',N'customer_136@example.com',N'195 Nguyễn Cư Trinh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'253353568610',N'Nguyễn Tấn Phong',N'0903331218','1997-10-31',N'customer_136@example.com',N'137 Nguyễn Trãi P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'893446171142',N'Nguyễn Trần Diễm Linh',N'0903331234','1997-11-01',N'customer_136@example.com',N'15 Phạm Viết Chánh P.Nguyễn Cư Trinh Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'894399155515',N'Nguyễn Thế Vinh',N'0903331308','1997-11-02',N'customer_136@example.com',N'148D Lý Chính Thắng P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'845509459207',N'Nguyễn Thành Phương- DNTN Khách Sạn Kim Thanh',N'0903331335','1997-11-03',N'customer_136@example.com',N'645/19 Điện Biên Phủ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'147724597786',N'Nguyễn Hữu Hạnh-VPĐD Nokia Tại TPHCM',N'0903331344','1997-11-04',N'customer_136@example.com',N'225/3 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'663300338084',N'Dương Ngọc Dũng',N'0903331467','1997-11-05',N'customer_136@example.com',N'25/5D/1 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'610014066401',N'Nguyễn Sơn Tùng',N'0903331500','1997-11-06',N'customer_136@example.com',N'79 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'490331964336',N'Nguyễn Trọng Chinh',N'0903331501','1997-11-07',N'customer_136@example.com',N'35/1H Huỳnh Tấn Phát P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'920924011018',N'Dương Thị Ninh-Công Ty Cổ Phần Thương Mại Dịch Vụ Ninh Giang',N'0903331508','1997-11-08',N'customer_136@example.com',N'77/8A Lâm Văn Bền P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'440025476252',N'Nguyễn Hồng Ân',N'0903331563','1997-11-09',N'customer_136@example.com',N'238B Pasteur P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'285824678962',N'Trần Hữu Hòa',N'0903331593','1997-11-10',N'customer_136@example.com',N'Trường Marie Curie 159 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'776266683048',N'Trần Thị Minh Hiếu',N'0903331604','1997-11-11',N'customer_136@example.com',N'47C/4 Trần Văn Đang P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'508792711303',N'Huỳnh Thị Nguyệt',N'0903331789','1997-11-12',N'customer_136@example.com',N'04 Hồ Xuân Hương P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'670272011168',N'Phạm Vũ Khánh Toàn',N'0903331799','1997-11-13',N'customer_136@example.com',N'8 Nguyễn Huệ P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'808438342112',N'Quách Thọ Niên',N'0903331843','1997-11-14',N'customer_136@example.com',N'13T/59-61 Trần Đình Xu P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'130949990167',N'Trương Đình Kiệt',N'0903331848','1997-11-15',N'customer_136@example.com',N'391 Nguyễn Công Trứ P.Cầu Ông Lãnh Q.01 TPHCM-DNTN TM Phước Thành');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'311058133346',N'Biện Thị Thưởng',N'0903331885','1997-11-16',N'customer_136@example.com',N'417B Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'248832153114',N'Chung Ngọc',N'0903331918','1997-11-17',N'customer_136@example.com',N'73 Hồ Tùng Mậu P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'867850621237',N'Trương Minh Thành',N'0903331926','1997-11-18',N'customer_136@example.com',N'137/51 Trần Đình Xu P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'433947301444',N'Nguyễn Thị Hương',N'0903331977','1997-11-19',N'customer_136@example.com',N'510A Xa Lộ Hà Nội Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'946591806478',N'Thiều Quang Sinh',N'0903332147','1997-11-20',N'customer_136@example.com',N'260 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'772904003642',N'Lưu Hán Quang',N'0903332162','1997-11-21',N'customer_136@example.com',N'60 Ký Con P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'822162013245',N'Đào Tuấn Tú',N'0903332237','1997-11-22',N'customer_136@example.com',N'212/47/2 Nguyễn Thiện Thuật P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'903554037573',N'Huỳnh Thị Thủy Tiên-CTY TNHH Dược Phẩm Biển Loan',N'0903332306','1997-11-23',N'customer_136@example.com',N'24 Lê Lợi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'542574167176',N'Đặng Ngọc Phúc',N'0903332317','1997-11-24',N'customer_136@example.com',N'749 Bis An Lợi Đông Tổ 37 P.An Lợi Đông Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'163825435160',N'Trần Thị ánh Hào',N'0903332336','1997-11-25',N'customer_136@example.com',N'18/4A5 Nguyễn Thị Minh Khai P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'558173521922',N'Mai Ngọc Thiện Minh',N'0903332343','1997-11-26',N'customer_136@example.com',N'196 Điện Biên Phủ P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'405349973828',N'Nguyễn Như Sương',N'0903332457','1997-11-27',N'customer_136@example.com',N'258 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'155154188702',N'Ngô Thị Thu Trang',N'0903332509','1997-11-28',N'customer_136@example.com',N'184/34/16 Lý Chính Thắng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'158478447664',N'Phạm Thị Đoan',N'0903332545','1997-11-29',N'customer_136@example.com',N'38 Võ Văn Tần Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'354140860453',N'Quang Tùng',N'0903332592','1997-11-30',N'customer_136@example.com',N'3 Pasteur P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'159621570155',N'Đoàn Thị Kiều Thu',N'0903332737','1997-12-01',N'customer_136@example.com',N'02 Tôn Đức Thắng P.Bến Nghé Q.01 TPHCM-Phòng Chính Trị XNLH Ba Son');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'254439009340',N'Trần Thị Thu Hồng',N'0903332797','1997-12-02',N'customer_136@example.com',N'55A KP1 Tổ 1 P.Thạnh Mỹ Lợi Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'945940084748',N'Hứa Thị Phụng',N'0903332828','1997-12-03',N'customer_136@example.com',N'189B Cống Quỳnh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'299263376714',N'Phạm Thị Thu Cúc',N'0903333014','1997-12-04',N'customer_136@example.com',N'2A-4A Tôn Đức Thắng Q.01 TPHCM-KS Legend');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'985094091454',N'Hoàng Thị Minh Tiến',N'0903333082','1997-12-05',N'customer_136@example.com',N'16/35/32 Kỳ Đồng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'146491982039',N'Trần Trọng Thụy Vy-Công Ty CP Điện Máy Máy Tính Viễn Thông Hợp Nhất',N'0903333092','1997-12-06',N'customer_136@example.com',N'27B Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'742613696138',N'Trần Trọng Tùng',N'0903333095','1997-12-07',N'customer_136@example.com',N'68/7G Trần Quang Khải P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'793042310755',N'Đặng Ngọc Hùng',N'0903333120','1997-12-08',N'customer_136@example.com',N'117/12 Cống Quỳnh P.Nguyễn Cư Trinh Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'300247935941',N'Nguyễn Hồng Phong',N'0903333137','1997-12-09',N'customer_136@example.com',N'45/27 Nguyễn Đôn Triết P.Bình Trưng Đông Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'267073111827',N'Doãn Hồng Quang',N'0903333203','1997-12-10',N'customer_136@example.com',N'53 Hàm Nghi P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'979410835869',N'Trần Bích Liên',N'0903333224','1997-12-11',N'customer_136@example.com',N'151/4 Tôn Thất Đạm P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'434993849679',N'Trương Đức Minh',N'0903333229','1997-12-12',N'customer_136@example.com',N'44/8Bis KP1 P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'777283046330',N'Tháí Thị Thu Hương',N'0903333260','1997-12-13',N'customer_136@example.com',N'136E CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'205378772687',N'Huỳnh Thị Thu Lan',N'0903333266','1997-12-14',N'customer_136@example.com',N'27B/1 Võ Thị Sáu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'996988774532',N'Lê Hữu Giáp',N'0903333294','1997-12-15',N'customer_136@example.com',N'57 Đường Số 5 KP4 P.Bình An Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'792281780238',N'Nguyễn Huy Hoàng',N'0903333347','1997-12-16',N'customer_136@example.com',N'25/8A Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'474011973754',N'Lê Hoàng Chương - CH Đồng Hồ Swiss Watch',N'0903333354','1997-12-17',N'customer_136@example.com',N'34 Lê Duẩn Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'226198184206',N'Đỗ Quốc Hải',N'0903333362','1997-12-18',N'customer_136@example.com',N'56 Trương Quyền P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'948908021555',N'Nguyễn Thị Bích Trâm',N'0903333403','1997-12-19',N'customer_136@example.com',N'34/6 KP3 P.Tân Kiểng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'396820948177',N'Cao Hồng Hải',N'0903333416','1997-12-20',N'customer_136@example.com',N'14/12 Kỳ Đồng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'447358130264',N'Trần Quang',N'0903333426','1997-12-21',N'customer_136@example.com',N'151/3 Đồng Khởi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'520698899491',N'Nguyễn Bích Phượng',N'0903333463','1997-12-22',N'customer_136@example.com',N'54 Nguyễn Khắc Nhu P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'756616175393',N'Tất Lệ Trân',N'0903333480','1997-12-23',N'customer_136@example.com',N'111 Mỹ Hưng P.Tân Phong Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'932624133504',N'Nguyễn Thị Phương Dung',N'0903333489','1997-12-24',N'customer_136@example.com',N'83-85 Nguyễn Thiện Thuật P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'160882846088',N'Trần Kiên Định',N'0903333525','1997-12-25',N'customer_136@example.com',N'135/21 Trần Hưng Đạo P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'948569538412',N'Võ Khắc Thái',N'0903333589','1997-12-26',N'customer_136@example.com',N'82 Bà Huyện Thanh Quan P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'321311092189',N'Trịnh Thị Bích Thủy',N'0903333619','1997-12-27',N'customer_136@example.com',N'59/11A Phạm Viết Chánh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'998521455640',N'Dương Thị Ngọc Nga',N'0903333627','1997-12-28',N'customer_136@example.com',N'28 Huỳnh Thúc Kháng P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'800424958285',N'Phạm Tự Quốc CTY TNHH SX -TM Liên Cơ',N'0903333652','1997-12-29',N'customer_136@example.com',N'52A/63 KP4 P.Tân Quy Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'430908128758',N'Quách Tuấn Khải-VietNam Representative Office Of Ebro Valves(ThaiLand) Co,Ltd',N'0903333656','1997-12-30',N'customer_136@example.com',N'23 Phùng Khắc Khoan P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'907161955898',N'Trần Thị Được',N'0903333725','1997-12-31',N'customer_136@example.com',N'293 Bến Chương Dương P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'453797869891',N'Trầm Kim Thạch',N'0903333759','1998-01-01',N'customer_136@example.com',N'23 Đường 49B P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'269642420434',N'Nguyễn Thanh Tùng',N'0903333776','1998-01-02',N'customer_136@example.com',N'89B Hàm Nghi P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'368103091409',N'Nguyễn Thị Thanh Tâm',N'0903333834','1998-01-03',N'customer_136@example.com',N'22/3 Trần Não P.Bình Khánh Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'478780493355',N'Phạm Bích Hường',N'0903333857','1998-01-04',N'customer_136@example.com',N'339/18A1 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'158517737670',N'Nguyễn Thị Huỳnh Mai',N'0903333874','1998-01-05',N'customer_136@example.com',N'223Bis Hai Bà Trưng P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'471311119027',N'Nguyễn Hồng Hòa',N'0903333928','1998-01-06',N'customer_136@example.com',N'137/14B Nguyễn Cư Trinh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'657684756521',N'Cao Đình Ngọc',N'0903334142','1998-01-07',N'customer_136@example.com',N'167 Ký Con P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'403216548996',N'Đặng Thị Mai Hương',N'0903334218','1998-01-08',N'customer_136@example.com',N'34 Lầu 9 Lê Duẩn P.Bến Nghé Q.01 TPHCM-Đào Viết Cảnh(Conoco)');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'355599534926',N'Huỳnh Trọng Đức-CTY CP Đầu Tư Và TM A.M.C',N'0903334222','1998-01-09',N'customer_136@example.com',N'130 Hàm Nghi P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'928616440174',N'Trần Anh Kiệt',N'0903334224','1998-01-10',N'customer_136@example.com',N'18 Nguyễn Cảnh Chân P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'869015842271',N'Phạm Anh Tuấn',N'0903334242','1998-01-11',N'customer_136@example.com',N'47A/58 Trần Văn Đang P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'983400274649',N'Vũ Quang Vinh',N'0903334459','1998-01-12',N'customer_136@example.com',N'56 Nguyễn Hữu Cảnh P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'346064561789',N'Châu Nhật Thanh',N'0903334468','1998-01-13',N'customer_136@example.com',N'447 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'933416399882',N'Lê Trung Tuấn',N'0903334477','1998-01-14',N'customer_136@example.com',N'107 Nguyễn Thái Bình P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'920077454566',N'Hàng Bội Thi',N'0903334535','1998-01-15',N'customer_136@example.com',N'36 Nguyễn Thiện Thuật P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'443775421535',N'Trần Minh Phước',N'0903334554','1998-01-16',N'customer_136@example.com',N'235 Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'605150474230',N'Nguyễn Ngọc Yến',N'0903334602','1998-01-17',N'customer_136@example.com',N'99 Bùi Viện P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'697417815955',N'Vương Hồng Châu',N'0903334647','1998-01-18',N'customer_136@example.com',N'16/8 Nguyễn Văn Hưởng Tổ 31 KP4 P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'321151951912',N'Phạm Thị Thu Hà',N'0903334676','1998-01-19',N'customer_136@example.com',N'212B/D27B Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'455624980087',N'Nguyễn Xuân Trường',N'0903334833','1998-01-20',N'customer_136@example.com',N'41 Võ Thị Sáu Tổ 98 P.ĐaKao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'540559328900',N'Phan Thanh Vũ',N'0903334868','1998-01-21',N'customer_136@example.com',N'270 CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'904404651248',N'Ngô Bích Thủy',N'0903334888','1998-01-22',N'customer_136@example.com',N'43 Pasteur P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'995846713460',N'Đinh Xuân Hiệp',N'0903334923','1998-01-23',N'customer_136@example.com',N'302/2Bis Hai Bà Trưng P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'454827235490',N'Nguyễn Thị Kim Loan',N'0903334934','1998-01-24',N'customer_136@example.com',N'307B Trần Quốc Thảo C/C Trần Quốc Thảo P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'811135199079',N'Lê Dũng',N'0903334999','1998-01-25',N'customer_136@example.com',N'7/8 Vườn Chuối P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'132513106415',N'Tống Hùng Vân-CTY TNHH TM Và DV Quỳnh Lan',N'0903335033','1998-01-26',N'customer_136@example.com',N'56-58-60 Hai Bà Trưng P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'514175556156',N'Nguyễn Thanh Hương',N'0903335080','1998-01-27',N'customer_136@example.com',N'6 Quốc Hương P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'490192059653',N'Nguyễn Quốc Khánh',N'0903335207','1998-01-28',N'customer_136@example.com',N'198/8 Bùi Viện P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'946192442863',N'Nguyễn Ngọc Thảo',N'0903335225','1998-01-29',N'customer_136@example.com',N'TK33/6 Nguyễn Cảnh Chân P.Cầu Kho Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'294280321687',N'Trịnh Tiêng',N'0903335332','1998-01-30',N'customer_136@example.com',N'214/B10 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'557109110221',N'Võ Thị Thanh',N'0903335504','1998-01-31',N'customer_136@example.com',N'443/185KT Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'991941411843',N'Đoàn Thế Trung',N'0903335526','1998-02-01',N'customer_136@example.com',N'14 Đường 13 KP4 P.An Phú Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'233599910786',N'Tô Quốc Dũng',N'0903335533','1998-02-02',N'customer_136@example.com',N'559 KP4 P.An Phú Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'256269365780',N'Vũ Thị Phương Mai',N'0903335541','1998-02-03',N'customer_136@example.com',N'99 Bác Sĩ Yersin P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'980834506958',N'Nguyễn Thụy Khánh',N'0903335734','1998-02-04',N'customer_136@example.com',N'26 Thái Văn Lung P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'408357823913',N'Hà Minh Tiến',N'0903335822','1998-02-05',N'customer_136@example.com',N'462F/29 CMT8 P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'328409145558',N'Vũ Anh Tuấn',N'0903335828','1998-02-06',N'customer_136@example.com',N'432 Nguyễn Thị Minh Khai P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'285136459210',N'Trần Hồng Thắng',N'0903335858','1998-02-07',N'customer_136@example.com',N'50 Nguyễn Thái Bình P.Nguyễn Thái Bình Q.01 TPHCM-CTY TNHH DL TM Hồng Hà (Trần Hồng Thắng)');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'212435739725',N'Mai Ngọc Thiên Trang',N'0903335900','1998-02-08',N'customer_136@example.com',N'2E/19 KP2 P.Tân Quy Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'551932918629',N'Trần Ngọc Ngân-CTY Điện Cố Đỉnh',N'0903335953','1998-02-09',N'customer_136@example.com',N'61/34 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'399169240823',N'Trần Minh Trung',N'0903336322','1998-02-10',N'customer_136@example.com',N'67 Mạc Đĩnh Chi P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'431448126534',N'Nguyễn Thế Trường',N'0903336360','1998-02-11',N'customer_136@example.com',N'31 Phạm Viết Chánh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'129094057776',N'Nguyễn Thị Kim Hậu',N'0903336633','1998-02-12',N'customer_136@example.com',N'441/37 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'151398480673',N'Trần Đức Dũng',N'0903336806','1998-02-13',N'customer_136@example.com',N'31Bis Huỳnh Định Của P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'841122562991',N'Tăng Tố Nga',N'0903337333','1998-02-14',N'customer_136@example.com',N'73 Lý Tự Trọng P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'484457710644',N'Nguyễn Thanh Hồng',N'0903337338','1998-02-15',N'customer_136@example.com',N'6/101B Cao Thắng P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'222013026428',N'Nguyễn Thị Ô Liu',N'0903337689','1998-02-16',N'customer_136@example.com',N'304D Hai Bà Trưng P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'782903883198',N'Nguyễn Thị Thu Thủy-TCTY Thủy Sản VN',N'0903337714','1998-02-17',N'customer_136@example.com',N'4 Đồng Khởi Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'426079076100',N'Tăng Nhuận Danh',N'0903337891','1998-02-18',N'customer_136@example.com',N'382/5 Nguyễn Thị Minh Khai P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'890852982685',N'Nguyễn Ngọc Trinh',N'0903337913','1998-02-19',N'customer_136@example.com',N'8A/3D2 Thái Văn Lung P.Bến Nghé Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'831657801152',N'Hà Quốc Vũ-Tổng CTY Cơ Khí GTVT Sài Gòn',N'0903337938','1998-02-20',N'customer_136@example.com',N'262 Trần Hưng Đạo P.Nguyễn Cư Trinh Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'146115947365',N'Đoàn Đức Thân',N'0903337959','1998-02-21',N'customer_136@example.com',N'178/4 Pasteur P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'565769134259',N'Trần Hồng Tuyến',N'0903337969','1998-02-22',N'customer_136@example.com',N'54 Mai Thị Lựu P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'344448940213',N'Trần Đình Lam',N'0903338003','1998-02-23',N'customer_136@example.com',N'110 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'895095353579',N'Trần Thị Huyền',N'0903338061','1998-02-24',N'customer_136@example.com',N'15 Lê Duẩn P.Bến Nghé Q.01 TPHCM-Thư Viện');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'591165059291',N'Hoàng Tuấn Kiệt',N'0903338066','1998-02-25',N'customer_136@example.com',N'338/31 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'930657286701',N'Phạm Bá Tâm',N'0903338079','1998-02-26',N'customer_136@example.com',N'51/54/18 Cao Thắng P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'155345837305',N'Ngô Hên',N'0903338128','1998-02-27',N'customer_136@example.com',N'92C1-C2 Lê Thánh Tôn Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'939711011893',N'Trần Huy Mật',N'0903338151','1998-02-28',N'customer_136@example.com',N'3/B07 KP4 P.Bình An Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'598077729010',N'Dương Quốc Tiến-VPĐD Nokia Tại TPHCM',N'0903338153','1998-03-01',N'customer_136@example.com',N'8A/8D1 Thái Văn Lung P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'964697393551',N'Dư Thanh Long',N'0903338160','1998-03-02',N'customer_136@example.com',N'46/102 Võ Văn Tần P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'455634312822',N'Lưu Thế Vinh',N'0903338180','1998-03-03',N'customer_136@example.com',N'55/11D Trần Đình Xu P.Cầu Kho Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'347839916953',N'Lê Thanh Tùng',N'0903338346','1998-03-04',N'customer_136@example.com',N'429/23E Lê Văn Sỹ P.12 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'154083423618',N'Lê Thị Hương',N'0903338389','1998-03-05',N'customer_136@example.com',N'23A ấp 6 P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'505760437260',N'Nguyễn Thị Thu Hiền',N'0903338418','1998-03-06',N'customer_136@example.com',N'175 Nguyễn Đình Chiểu P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'879818929953',N'Nguyễn Tiến Minh',N'0903338462','1998-03-07',N'customer_136@example.com',N'148 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'870245196373',N'Nguyễn Trọng Dân',N'0903338508','1998-03-08',N'customer_136@example.com',N'11I Lương Hữu Khánh P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'936183061518',N'Lou Nhật Dục',N'0903338551','1998-03-09',N'customer_136@example.com',N'85 Đề Thám P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'510847033372',N'Khương Vị Quốc',N'0903338587','1998-03-10',N'customer_136@example.com',N'27 Pasteur P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'736329298038',N'Đỗ Hữu Tâm',N'0903338609','1998-03-11',N'customer_136@example.com',N'82 Bà Huyện Thanh Quan P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'771525405234',N'Vũ Việt Hùng-Đảng ủy Khối Bộ Xây Dựng',N'0903338625','1998-03-12',N'customer_136@example.com',N'14 Kỳ Đồng P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'910604139624',N'Phạm Thị Phương Nghị',N'0903338659','1998-03-13',N'customer_136@example.com',N'11 Nguyễn Du P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'228954023994',N'Lâm Trường Sơn',N'0903338688','1998-03-14',N'customer_136@example.com',N'15 Lê Duẩn Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'625318544243',N'Dương Thị Thanh Mai',N'0903338827','1998-03-15',N'customer_136@example.com',N'459B3 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'146878951838',N'Huỳnh Thị Thương',N'0903338989','1998-03-16',N'customer_136@example.com',N'559/20 KP3 P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'682672642883',N'Phạm Thị Ngọc Minh',N'0903339044','1998-03-17',N'customer_136@example.com',N'104-106/206 Nguyễn Huệ P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'225097706814',N'Hồ Thị Ngọc Liên',N'0903339119','1998-03-18',N'customer_136@example.com',N'23 Lý Tự Trọng P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'967756415596',N'Nguyễn Quang Huế',N'0903339134','1998-03-19',N'customer_136@example.com',N'45/9 Đinh Tiên Hoàng P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'780716365439',N'Lê Viết Toàn',N'0903339198','1998-03-20',N'customer_136@example.com',N'31 CMT8 P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'762160600040',N'Nguyễn Thị Hoa Huệ',N'0903339255','1998-03-21',N'customer_136@example.com',N'15 Nguyễn Thiệp P.Bền Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'168508059576',N'Đoàn Hùng Phi',N'0903339294','1998-03-22',N'customer_136@example.com',N'181 Đồng Khởi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'997666233677',N'Lê Nguyên Thắng',N'0903339325','1998-03-23',N'customer_136@example.com',N'442C CMT8 P.11 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'909188368777',N'Nguyễn Thị Cúc',N'0903339345','1998-03-24',N'customer_136@example.com',N'02 Lê Thị Hồng Gấm P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'880525204526',N'Ping Hải Đường',N'0903339372','1998-03-25',N'customer_136@example.com',N'150A Nguyễn Văn Cừ P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'952518201166',N'Lê Minh Đức',N'0903339392','1998-03-26',N'customer_136@example.com',N'1+2C ấp 4 P.Tân Qui Đông Q.Nhà Bè TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'921042328863',N'Võ Thành Lân',N'0903339431','1998-03-27',N'customer_136@example.com',N'10/6 Vườn Chuối P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'376991428130',N'Lê Thị Minh Hương',N'0903339468','1998-03-28',N'customer_136@example.com',N'291 Phạm Ngũ Lão P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'485165847061',N'Nguyễn Thị Minh Hằng',N'0903339475','1998-03-29',N'customer_136@example.com',N'76/5 Võ Thị Sáu P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'194512891058',N'Nguyễn Quang Thự',N'0903339488','1998-03-30',N'customer_136@example.com',N'81/2 KP1 P.Phú Mỹ Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'169174457636',N'Lê Thanh Hoàng',N'0903339495','1998-03-31',N'customer_136@example.com',N'541/7A Điện Biên Phủ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'426280353028',N'Lương Thị Thanh Hằng',N'0903339562','1998-04-01',N'customer_136@example.com',N'200/14 Cô Giang P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'863240855850',N'Nguyễn Duy Lộc',N'0903339578','1998-04-02',N'customer_136@example.com',N'339/49/1 Lê Văn Sỹ P.13 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'305522896920',N'Liên Quang Hùng',N'0903339588','1998-04-03',N'customer_136@example.com',N'541/23 Điện Biên Phủ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'117681720209',N'Lê Ngọc Thanh',N'0903339597','1998-04-04',N'customer_136@example.com',N'63Bis Phó Đức Chính P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'180323432360',N'Nguyễn Thành Lân',N'0903339615','1998-04-05',N'customer_136@example.com',N'95 Nguyễn Công Trứ P.Nguyễn Thái Bình Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'173009546778',N'Nguyễn Tấn Hoàng',N'0903339649','1998-04-06',N'customer_136@example.com',N'C84 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'374474559190',N'Đặng Thị Bích Loan',N'0903339800','1998-04-07',N'customer_136@example.com',N'4BisJ Nguyễn Trung Ngạn P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'725264910667',N'Ngô Thành Cát',N'0903339905','1998-04-08',N'customer_136@example.com',N'12 Cô Giang P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'521927719904',N'Nguyễn Thị Lệ Hoa',N'0903339941','1998-04-09',N'customer_136@example.com',N'563/12 Nguyễn Đình Chiễu P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'953464129191',N'Nguyễn Việt Chi',N'0903339969','1998-04-10',N'customer_136@example.com',N'161 Pasteur P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'869019134724',N'Lê Mạnh Hùng',N'0903340151','1998-04-11',N'customer_136@example.com',N'62/113/12 Lý Chính Thắng P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'216483738420',N'Trần Thanh Hải',N'0903340226','1998-04-12',N'customer_136@example.com',N'52 KP1 P.Tân Phong Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'458446302280',N'Nguyễn Trần Chinh',N'0903340506','1998-04-13',N'customer_136@example.com',N'372/1 CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'962764906148',N'Phan Viết Nam-CTY TNHH Quảng Cáo TM P.N',N'0903340889','1998-04-14',N'customer_136@example.com',N'169/5 Võ Thị Sáu P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'604961923365',N'Đặng Thanh Minh',N'0903341010','1998-04-15',N'customer_136@example.com',N'405 Điện Biên Phủ P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'378856479791',N'Lê Quang Huấn',N'0903341134','1998-04-16',N'customer_136@example.com',N'385/24B Điện Biên Phủ P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'655559082500',N'Võ Thị Hoàng Quân',N'0903341136','1998-04-17',N'customer_136@example.com',N'95A C/X Đô Thành P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'728972562671',N'Bùi Long Vinh',N'0903341177','1998-04-18',N'customer_136@example.com',N'20/9 ấp 4 P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'292952516657',N'Trần Thiện Khánh',N'0903341329','1998-04-19',N'customer_136@example.com',N'333/10 KP III P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'395684675990',N'Nguyễn Thị Bích Ngân',N'0903341555','1998-04-20',N'customer_136@example.com',N'2 Phùng Khắc Khoan Lầu 3 Phòng TH2 Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'511331993835',N'Trần Mạnh Lực',N'0903341565','1998-04-21',N'customer_136@example.com',N'70 Trương Quyền P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'692374418454',N'Ngô Thị Ngọc Hoa',N'0903341727','1998-04-22',N'customer_136@example.com',N'408/11A Nguyễn Thị Minh Khai P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'969817093208',N'Nguyễn Thị Kim Lan',N'0903341767','1998-04-23',N'customer_136@example.com',N'159 Cách Mạng Tháng Tám P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'491353715384',N'Trần Viết Tâm',N'0903341769','1998-04-24',N'customer_136@example.com',N'L1233 Nguyễn Văn Hưởng-Khu Biệt Thự Thảo Điền1 P.Thảo Điền Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'925534121771',N'Trịnh Tuấn Anh',N'0903342121','1998-04-25',N'customer_136@example.com',N'235/64 Nam Kỳ Khởi Nghĩa P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'546823196706',N'Lưu Khương Thùy',N'0903342288','1998-04-26',N'customer_136@example.com',N'183 Lý Chính Thắng P.07 Q.03 TPHCM - VPĐD Nissho IWai HCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'509196704026',N'Nguyễn Ngọc Châu',N'0903342323','1998-04-27',N'customer_136@example.com',N'62/117 Lý Chính Thắng P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'963125654431',N'Hàng Tấn Phước',N'0903343267','1998-04-28',N'customer_136@example.com',N'4/61A Trần Khắc Chân P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'417869461667',N'Nguyễn Thị ánh Mai- CTY CP Thương Mại Nguyễn Kim',N'0903343333','1998-04-29',N'customer_136@example.com',N'63-65-67 Trần Hưng Đạo P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'396265763012',N'Trần Đình Nghĩa',N'0903343400','1998-04-30',N'customer_136@example.com',N'72/8 Trần Quốc Toản P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'544271915182',N'Nguyễn Trung Hà',N'0903343536','1998-05-01',N'customer_136@example.com',N'77 Phạm Viết Chánh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'321974092192',N'Trần Trường Huấn',N'0903343555','1998-05-02',N'customer_136@example.com',N'357/9 Nguyễn Thiện Thuật P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'188425390110',N'Huỳnh Xuân Tuấn',N'0903343838','1998-05-03',N'customer_136@example.com',N'163 Hai Bà Trưng P.06 Q.03 TPHCM-WHITFORD');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'661376484096',N'Châu Ngọc Chánh',N'0903344242','1998-05-04',N'customer_136@example.com',N'342/23 CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'943585065273',N'Nguyễn Thị Thu Hồng',N'0903344338','1998-05-05',N'customer_136@example.com',N'303 Lô A4 Tầng 4 C/C 189B Cống Quỳnh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'648815573158',N'Trương Trần Minh Châu',N'0903344444','1998-05-06',N'customer_136@example.com',N'49B ấp 5 P.Tân Kiểng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'270380169317',N'Trương Du Ngọc Diệp',N'0903344455','1998-05-07',N'customer_136@example.com',N'25 Lê Duẩn Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'705112660671',N'Trương Du Ngọc Diệp',N'0903344455','1998-05-08',N'customer_136@example.com',N'25 Lê Duẩn Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'735348725841',N'Hoàng Thị Thanh Mai',N'0903344636','1998-05-09',N'customer_136@example.com',N'94/13 Trần Khắc Trân P.Tân Định Q.01 TPHCM-Vũ Đức Tiến');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'465391599986',N'Nguyễn Thị Thu Vân',N'0903344948','1998-05-10',N'customer_136@example.com',N'260 Lý Tự Trọng P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'462952654927',N'Lê Quang Thanh',N'0903345359','1998-05-11',N'customer_136@example.com',N'27B Bàn Cờ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'779369954681',N'Nguyễn Thị Kim Chi',N'0903345435','1998-05-12',N'customer_136@example.com',N'190 Nam Kỳ Khởi Nghĩa P.06 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'497452657852',N'Đặng Vũ Đỗ Quỳnh Giao',N'0903345440','1998-05-13',N'customer_136@example.com',N'364 Lầu 2 Võ Văn Tần P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'354932250086',N'Vũ Thị Nở',N'0903345543','1998-05-14',N'customer_136@example.com',N'26/41A Đỗ Quang Đẩu P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'844821698858',N'Nguyễn Việt Cường',N'0903345602','1998-05-15',N'customer_136@example.com',N'134 Võ Thị Sáu P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'961295760937',N'Đặng Phương Thảo',N'0903345647','1998-05-16',N'customer_136@example.com',N'240/4 Lê Thánh Tôn P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'775134415303',N'Bùi Sơn Nguyễn Lâm',N'0903345674','1998-05-17',N'customer_136@example.com',N'4-4C KP Mỹ An Đại Lộ Nguyễn Văn Linh P.Tân Phú Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'866992225514',N'Nguyễn Như Trang',N'0903345778','1998-05-18',N'customer_136@example.com',N'2/5 Nguyễn Thành ý P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'101180042371',N'Tiêu La Hậu',N'0903346545','1998-05-19',N'customer_136@example.com',N'207/4 Trần Hưng Đạo P.Cô Giang Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'431629803841',N'Phan Ngọc ánh Tuyết',N'0903346592','1998-05-20',N'customer_136@example.com',N'8/5A KP4 P.Bình Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'257052960482',N'Lê Tấn Dũng',N'0903346699','1998-05-21',N'customer_136@example.com',N'183 Lý Chính Thắng P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'701624119122',N'Trần Thị Tuyết Mai',N'0903346788','1998-05-22',N'customer_136@example.com',N'145/12/24 Nguyễn Thiện Thuật P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'379054371559',N'Phạm Thị Lan Hương',N'0903347112','1998-05-23',N'customer_136@example.com',N'385D Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'515964366232',N'Trần Ngọc Phượng',N'0903348541','1998-05-24',N'customer_136@example.com',N'31/5 KP2 P.Phú Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'818016930362',N'Nguyễn Hoàng Nghĩa',N'0903348686','1998-05-25',N'customer_136@example.com',N'2A-4A Tôn Đức Thắng Lầu 7 Sài Gòn Riverside Q.01 TPHCM-CTY LD Điều Hành Côn Sơn');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'396269475843',N'Nguyễn Thị Huyền Trân-VPD CTY Sojitz Corp',N'0903348899','1998-05-26',N'customer_136@example.com',N'183 Lý Chính Thắng P.07 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'418629397978',N'Lê Ngọc Duy',N'0903349131','1998-05-27',N'customer_136@example.com',N'128 Võ Thị Sáu P.08 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'267666755341',N'Ngô Quang Minh',N'0903349996','1998-05-28',N'customer_136@example.com',N'48 C/X Đường Sắt-Lý Thái Tổ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'434603559741',N'Phan Khắc ánh',N'0903350171','1998-05-29',N'customer_136@example.com',N'263/25 Nguyễn Trãi P.Nguyễn Cư Trinh Q.1 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'210544643502',N'Trần Minh Phượng',N'0903350206','1998-05-30',N'customer_136@example.com',N'52/55 Nguyễn Hứu Cầu Tổ 139 P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'511368437836',N'Trần Minh Quyền',N'0903350450','1998-05-31',N'customer_136@example.com',N'333/654B Điện Biên Phủ P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'240001010721',N'Từ Thị Phú Hiển-CTY TNHH T Vấn Du Học Quốc Tế Vinh Hiển',N'0903350686','1998-06-01',N'customer_136@example.com',N'426 Võ Văn Tần P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'413737242650',N'Từ Thị Phú Hiển-CTY TNHH T Vấn Du Học Quốc Tế Vinh Hiển',N'0903350686','1998-06-02',N'customer_136@example.com',N'426 Võ Văn Tần P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'993685155767',N'Từ Thị Phú Hiển-CTY TNHH T Vấn Du Học Quốc Tế Vinh Hiển',N'0903350686','1998-06-03',N'customer_136@example.com',N'426 Võ Văn Tần P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'819440543073',N'Phan Thị Anh Thư',N'0903350770','1998-06-04',N'customer_136@example.com',N'66 Nguyễn Thông P.09 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'586917964543',N'Đào Quốc Thái',N'0903351351','1998-06-05',N'customer_136@example.com',N'582 KP2 P.Bình Trưng Đông Q.2 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'958270661366',N'Trương Vĩnh Tùng',N'0903351505','1998-06-06',N'customer_136@example.com',N'28-30 Lầu 1 Nguyễn Cư Trinh P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'733833039870',N'Vũ Minh Sơn',N'0903351588','1998-06-07',N'customer_136@example.com',N'96/20 Lê Lai P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'393576976589',N'Trần Thị ái Hồng',N'0903351816','1998-06-08',N'customer_136@example.com',N'69 Nguyễn Cư Trinh P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'882369904613',N'Phạm Minh Tuân',N'0903351920','1998-06-09',N'customer_136@example.com',N'37 Khu Silicô KP3 P.Bình Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'718029098307',N'Nguyễn Minh Đức',N'0903352095','1998-06-10',N'customer_136@example.com',N'49 Yersin P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'466811114806',N'Đỗ Tấn Thịnh',N'0903352221','1998-06-11',N'customer_136@example.com',N'96/16 Lê Thị Riêng P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'935602965513',N'Vũ Mạnh Cường',N'0903352524','1998-06-12',N'customer_136@example.com',N'335/652 C Điện Biên Phủ P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'444906511824',N'Lương Thị Kim Phi',N'0903352575','1998-06-13',N'customer_136@example.com',N'7 Nguyễn Trãi P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'403227877330',N'Nguyễn Thắng Trụ-Công Ty TNHH TM DV Và Du Lịch Hoàn Ốc',N'0903352888','1998-06-14',N'customer_136@example.com',N'24B Nguyễn Thị Định P.An Phú Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'968833449128',N'Nguyễn Hoàng Hoa',N'0903353367','1998-06-15',N'customer_136@example.com',N'611/31 Điện Biên Phủ P.01 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'616815714933',N'Lưu Quốc Linh',N'0903353393','1998-06-16',N'customer_136@example.com',N'167 Nguyễn Thị Minh Khai P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'958807094683',N'Trương Thị Kim Phượng',N'0903353838','1998-06-17',N'customer_136@example.com',N'212/186 Nguyễn Văn Nguyễn P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'178997010697',N'Vũ Thị Hồng Phúc',N'0903353883','1998-06-18',N'customer_136@example.com',N'372/1 CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'787288571975',N'Trần Thị Cẩm Hà',N'0903354007','1998-06-19',N'customer_136@example.com',N'453/36 Nguyễn Đình Chiểu P.05 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'771176745799',N'Nguyễn Tấn Lũy',N'0903354050','1998-06-20',N'customer_136@example.com',N'387/2 Nguyễn Trãi P.Nguyễn Cư Trinh Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'760302999703',N'Nguyễn Khắc Thành',N'0903354414','1998-06-21',N'customer_136@example.com',N'372/11E CMT8 P.10 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'620126654138',N'Nguyễn Thị Thanh Nga',N'0903355544','1998-06-22',N'customer_136@example.com',N'80 Nguyễn Hữu Cầu P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'771135278563',N'Vũ Trịnh hà',N'0903355559','1998-06-23',N'customer_136@example.com',N'141/23 Bàn Cờ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'342271142403',N'Lê Bích Phượng',N'0903355565','1998-06-24',N'customer_136@example.com',N'559/20 ấp 3 Tân Quy Tây Q.7 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'704460597778',N'Vũ Ngọc Huỳnh',N'0903355660','1998-06-25',N'customer_136@example.com',N'76B ấp Tân Lập Tổ 03 P.Bình Trưng Đông Q.02 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'753238486267',N'Chu Thị Hải',N'0903355999','1998-06-26',N'customer_136@example.com',N'39 Lê Anh Xuân P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'462525232102',N'Lê Thị Dương',N'0903356339','1998-06-27',N'customer_136@example.com',N'107/13 Huỳnh Tấn Phát P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'644612952987',N'Trần Hớn Toàn',N'0903357225','1998-06-28',N'customer_136@example.com',N'65/8 ấp 04 P.Tân Thuận Đông Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'267807179870',N'Dương Trường Sơn',N'0903357252','1998-06-29',N'customer_136@example.com',N'85/7 Trần Khắc Chân P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'184475924935',N'Trần Tiền',N'0903357761','1998-06-30',N'customer_136@example.com',N'585/83 Nguyễn Đình Chiểu P.02 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'112146132100',N'Mai Trí Diễn',N'0903358588','1998-07-01',N'customer_136@example.com',N'51 Hai Bà Trưng P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'575171158718',N'Lê Thanh Thanh',N'0903358663','1998-07-02',N'customer_136@example.com',N'40/3E Gò Ô Môi KP2 Tổ 23 P.Phú Thuận Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'577769031640',N'Đặng Thanh Vân',N'0903358898','1998-07-03',N'customer_136@example.com',N'247/7a Trần Xuân Soạn P.Tân Hưng Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'884402952027',N'Nguyễn Thị Mỹ Nương',N'0903359119','1998-07-04',N'customer_136@example.com',N'9/2 ấp 3 P.Phú Mỹ Q.Nhà Bè TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'638413028227',N'Trần Hữu Phúc',N'0903360172','1998-07-05',N'customer_136@example.com',N'14 Nguyễn An Ninh P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'260277376346',N'Trần Thị Miền',N'0903360414','1998-07-06',N'customer_136@example.com',N'3/1 Nguyễn Văn Thủ P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'149338185454',N'Nguyễn Phương Anh',N'0903360636','1998-07-07',N'customer_136@example.com',N'213/1A Đồng Khởi P.Bến Nghé Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'101055003214',N'Trần Kim Chi',N'0903360777','1998-07-08',N'customer_136@example.com',N'284/9A Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'391988927266',N'Lê Thị Thu Huyền',N'0903362488','1998-07-09',N'customer_136@example.com',N'69 C/XĐô Thành P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'303813212588',N'Phạm Minh Tuấn',N'0903362929','1998-07-10',N'customer_136@example.com',N'529/8 Điện Biên Phủ P.03 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'943540848258',N'Huỳnh Phước Thuận',N'0903362949','1998-07-11',N'customer_136@example.com',N'94B Cao Thắng P.04 Q.03 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'983839968234',N'Châu Kim Oanh',N'0903363444','1998-07-12',N'customer_136@example.com',N'68/25A Trần Quang Khải P.Tân Định Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'676099436628',N'Phạm Thị Thảo Ly',N'0903363531','1998-07-13',N'customer_136@example.com',N'102/9 ấp 3 P.Tân Thuận Tây Q.07 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'980488692771',N'Vương Trọng Khôi',N'0903363633','1998-07-14',N'customer_136@example.com',N'78 Lý Tự Trọng P.Bến Thành Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'933232811441',N'Nguyễn Tiến Dũng',N'0903363939','1998-07-15',N'customer_136@example.com',N'242/2 Bùi Viện P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'165932089515',N'Vương Hồng Chương',N'0903364664','1998-07-16',N'customer_136@example.com',N'25-27 Nguyễn Huy Tự P.Đakao Q.01 TPHCM');
INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)
VALUES (N'153470781060',N'Lê Du',N'0903364933','1998-07-17',N'customer_136@example.com',N'95/13 Nguyễn Trãi P.Bến Nghé Q.01 TPHCM');

--Insert nhân viên
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'961139161526',N'Nguyễn Đặng Hương',N'0903365799','1998-07-18',N'employee_136@example.com',N'58/16 Nguyễn Phúc Nguyên P.09 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'349933101178',N'Võ Thành Phụng',N'0903365878','1998-07-19',N'employee_136@example.com',N'65A CMT8 P.Bến Thành Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'148177779648',N'Trần Nữ Thanh Tuyền',N'0903366096','1998-07-20',N'employee_136@example.com',N'59 Đông Du Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'369797464641',N'Đỗ Thị Thu Thảo',N'0903366317','1998-07-21',N'employee_136@example.com',N'189 Cô Giang P.Cô Giang Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'388336711610',N'Đặng Trung Hậu',N'0903366500','1998-07-23',N'employee_136@example.com',N'73 Yersin P.Cầu Ông Lãnh Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'869297295261',N'Nguyễn Tuấn Lê Viết Phương',N'0903366735','1998-07-24',N'employee_136@example.com',N'541/1C Trần Hưng Đạo P.Cầu Kho Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'955116710686',N'Lê Thanh Hùng',N'0903366777','1998-07-25',N'employee_136@example.com',N'87 Đường 39 P.Bình Trưng Tây Q.02 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'728014272032',N'Nguyễn Thị Ngọc Thủy',N'0903367722','1998-07-26',N'employee_136@example.com',N'338/7 Nguyễn Đình Chiểu P.04 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'256772971420',N'Lê Xuân Phớ',N'0903367856','1998-07-27',N'employee_136@example.com',N'57-59 Đỗ Quang Đẩu P.Phạm Ngũ Lão Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'518833447398',N'Bùi Thanh Vân',N'0903368145','1998-07-28',N'employee_136@example.com',N'96 Nguyễn Trãi P.Bến Thành Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'703716368569',N'Lý Minh Tùng',N'0903368285','1998-07-29',N'employee_136@example.com',N'144 Cô Giang P.Cô Giang Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'276663426658',N'Đinh Tấn Trung',N'0903368541','1998-07-30',N'employee_136@example.com',N'239/67/18H Trần Văn Đang P.11 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'154968774746',N'Phạm Thị Thanh Phương',N'0903370090','1998-07-31',N'employee_136@example.com',N'240/4 CMT8 P.10 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'315609032957',N'Nguyễn Kim Thanh',N'0903371636','1998-08-01',N'employee_136@example.com',N'C-101 Lý Văn Phức P.Tân Định Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'333287910676',N'Nguyễn Thanh Liêm',N'0903372233','1998-08-02',N'employee_136@example.com',N'56/16 Lý Thái Tổ P.02 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'801322425624',N'Trương Quang Đoàn',N'0903372476','1998-08-03',N'employee_136@example.com',N'284/45 Lê Văn Sỹ P.14 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'802957614109',N'Trịnh Nguyệt Hà',N'0903373050','1998-08-04',N'employee_136@example.com',N'316 Nguyễn Thiện Thuật P.03 Q.03 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'792435464449',N'Trang Trung Trực',N'0903373161','1998-08-05',N'employee_136@example.com',N'31B Nguyễn Đình Chiểu P.Đakao Q.01 TPHCM');
INSERT INTO NHANVIEN (CHUCVU,TINHTRANG,NGBDL,CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI)VALUES (N'Nhân viên bán hàng',1,'2023-03-02',N'183156114256',N'Lê Khánh Nguyên',N'0903373333','1998-08-06',N'employee_136@example.com',N'292 Nam Kỳ Khởi Nghĩa Q.03 TPHCM');

select * from NHANVIEN
alter table nhanvien alter column CCCD bigint not null
alter table nhanvien drop constraint CHK_CCCDNV_LENGTH
delete from NHANVIEN
delete from HOADON
-- Insert bảng CTUUDAI
INSERT INTO CTUUDAI (MACTUD, TENCTUD, MOTA, NGBD, NGKT)
VALUES (1, 'UuDai1', 'Mô tả 1', '2023-01-01', '2023-12-31');
-- Insert bảng HOADON
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0009','KH0017','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0018','KH0389','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0027','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0014','KH0041','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0009','KH0100','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0019','KH0074','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0014','KH0180','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0007','KH0444','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0036','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0013','KH0446','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0012','KH0459','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0001','KH0185','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0005','KH0451','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0001','KH0001','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0003','KH0207','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0001','KH0356','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0010','KH0419','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0346','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0012','KH0473','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0017','KH0228','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0001','KH0102','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0016','KH0165','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0007','KH0051','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0007','KH0370','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0155','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0461','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0013','KH0115','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0013','KH0183','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0002','KH0295','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0007','KH0444','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0005','KH0094','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0013','KH0345','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0004','KH0373','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0006','KH0109','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0009','KH0264','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0013','KH0466','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0016','KH0452','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0011','KH0245','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0008','KH0441','CTUD0001','2023-06-08','2023-06-17','100000');
INSERT INTO HOADON (MANV, MAKH, MACTUD, NGLAPHD, NGTRAG, TONGTIEN)
VALUES('NV0009','KH0238','CTUD0001','2023-06-08','2023-06-17','100000');


select * from chitiethd
select * from sanpham
select * from hoadon
select* from ctuudai
select HOADON.MAHD, MANV, MAKH, MACTUD, NGLAPHD, NGTRAG,SANPHAM.MASP, COUNT, TONGTIEN
from HOADON join CHITIETHD on HOADON.MAHD=CHITIETHD.MAHD
		join SANPHAM on CHITIETHD.MASP=SANPHAM.MASP


