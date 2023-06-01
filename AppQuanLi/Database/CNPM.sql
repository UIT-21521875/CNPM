create database CNPM
GO

use CNPM
GO

-- Tao bang SANPHAM
 CREATE TABLE SANPHAM
 (
	MASP INT NOT NULL,
    MATL INT NOT NULL,
    TENSP VARCHAR(255) NOT NULL,
    NHAPH VARCHAR(255) NOT NULL,
    NGPH DATE,
    NENTANG VARCHAR(100) NOT NULL,
    GIATHUE DECIMAL(10,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (MASP),
    FOREIGN KEY (MATL) REFERENCES THELOAI(MATL)
 );
 GO

 -- TAO BANG THE LOAI
 CREATE TABLE THELOAI
 (
	MATL INT NOT NULL,
    TENTL VARCHAR(100) NOT NULL 
    PRIMARY KEY (MATL)
 );
 GO

 -- TAO BANG THONG TIN
  CREATE TABLE THONGTIN
 (
	MATT INT NOT NULL,
    CCCD INT NOT NULL,
    HOTEN VARCHAR(50) NOT NULL,
    SODT VARCHAR(50) NOT NULL,
    NGSINH DATE,
    EMAIL VARCHAR(100) NOT NULL,
    DIACHI VARCHAR(255) NOT NULL,
    PRIMARY KEY (MATT)
 );
 GO

 -- TAO BANG KHACHHANG
  CREATE TABLE KHACHHANG
 (
	MAKH INT NOT NULL,
    MATT INT NOT NULL,
    DIEMTICH INT NOT NULL DEFAULT 0,
    PRIMARY KEY (MAKH),
    FOREIGN KEY (MATT) REFERENCES THONGTIN(MATT)    
 );
 GO

 -- TAO BANG PHIEUCSKH
   CREATE TABLE PHIEUCSKH
 (
	MACSKH INT NOT NULL,
    MAKH INT NOT NULL,
    NGLAP DATE NOT NULL DEFAULT GETDATE(),
    NOIDUNG VARCHAR(255) NOT NULL,
    PRIMARY KEY (MACSKH),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)    
 );
 GO

 -- TAO BANG NHANVIEN
    CREATE TABLE NHANVIEN
 (
	MANV INT NOT NULL,
    MATT INT NOT NULL,
    CHUCVU VARCHAR(255) NOT NULL,
    TINHTRANG INT NOT NULL DEFAULT 0, -- 1: ĐANG LAM VIEC && 0: CHUA LAM VIEC
    NGBDL DATE NOT NULL,
    PRIMARY KEY (MANV),
    FOREIGN KEY (MATT) REFERENCES THONGTIN(MATT)    
 );
 GO

 -- TAO BANG CTUUDAI
    CREATE TABLE CTUUDAI
 (
	MACTUD INT NOT NULL,
    TENCTUD VARCHAR(255) NOT NULL,
    MOTA VARCHAR(255) NOT NULL DEFAULT N'Chưa có mô tả',
    NGBD DATE NOT NULL,
    NGKT DATE NOT NULL,
    PRIMARY KEY (MACTUD)   
 ); 
 GO

 -- TAO BANG HOADON
  CREATE TABLE HOADON
 (
	MAHD INT NOT NULL,
    MANV INT NOT NULL,
    MAKH INT NOT NULL,
    MACTUD INT NOT NULL,
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
	MACTHD INT NOT NULL,
    MAHD INT NOT NULL,
    MASP INT NOT NULL,
    COUNT INT NOT NULL DEFAULT 0,
    PRIMARY KEY (MACTHD),
	FOREIGN KEY (MAHD) REFERENCES HOADON(MAHD),
	FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)    
 ); 
 GO

 -- TAO BANG BAO CAO
      CREATE TABLE BAOCAO
 (
	MABC INT NOT NULL,
    MAHD INT NOT NULL,
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
	MATTSP INT NOT NULL,
    TRANGTHAI VARCHAR(255) NOT NULL,
    PRIMARY KEY (MATTSP) 
 ); 
 GO

-- TAO BANG KHO
      CREATE TABLE KHO
 (
	MAKHO INT NOT NULL,
    MASP INT NOT NULL,
    MATTSP INT NOT NULL,
    SOLUONG INT NOT NULL,
    PRIMARY KEY (MAKHO),
	FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP), 
    FOREIGN KEY (MATTSP) REFERENCES TINHTRANGSP(MATTSP)
 ); 
 GO

 -- TAO BANG NHAPKHO
  CREATE TABLE NHAPKHO
 (
	MANK INT NOT NULL,
    MAKHO INT NOT NULL,
    MANV INT NOT NULL,
    TINHTRANG VARCHAR(100) NOT NULL DEFAULT N'Đủ hàng', -- Đủ hàng||Thiếu hàng
    NGNHAP DATE NOT NULL,
    SOLUONG INT NOT NULL,
    TONGTIEN DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (MANK),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV),
    FOREIGN KEY (MAKHO) REFERENCES KHO(MAKHO)
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
SELECT * FROM NHANVIEN
delete  from NHANVIEN
-- Tạo check constraint cho giá thuê:
ALTER TABLE SANPHAM
ADD CONSTRAINT CHK_GIATHUE
CHECK (GIATHUE >= 0);
-- Tạo check constraint cho tổng tiền của hóa đơn:
ALTER TABLE HOADON
ADD CONSTRAINT CHK_TONGTIEN
CHECK (TONGTIEN >= 0);
-- Tạo check constraint cho tổng tiền của nhập kho:
ALTER TABLE NHAPKHO
ADD CONSTRAINT CHK_NK_TONGTIEN
CHECK (TONGTIEN >= 0);
-- Tạo check constraint cho diem tich của khách hàng:
ALTER TABLE KHACHHANG
ADD CONSTRAINT CHK_DiemTich
CHECK (DIEMTICH >= 0);
-- Tạo check constraint cho so luong ton kho của kho:
ALTER TABLE KHO
ADD CONSTRAINT CHK_SoLuongTonKho
CHECK (SOLUONG >= 0);
-- Tạo check constraint cho ngày trả game và ngày lập hóa đơn của hóa đơn:
ALTER TABLE HOADON
ADD CONSTRAINT CK_HOADON_NGTRAG_NGLAPHD
CHECK (NGTRAG >= NGLAPHD);
-- Tạo check constraint cho ngày bắt đầu và ngày kết thúc của hóa đơn:
ALTER TABLE CTUUDAI
ADD CONSTRAINT CK_CTUUDAI_NGBD_NGKT
CHECK (NGBD <= NGKT);
-- Tạo trigger để tự động cập nhật điểm tích lũy (DIEMTICH) của khách hàng dựa trên số ngày thuê của hóa đơn:
CREATE TRIGGER Trg_UpdateDiemTich
ON HOADON
AFTER INSERT
AS
BEGIN
    UPDATE KHACHHANG
    SET DIEMTICH = DIEMTICH + DATEDIFF(DAY, inserted.NGTRAG, inserted.NGLAPHD)
    FROM KHACHHANG
    INNER JOIN inserted ON KHACHHANG.MAKH = inserted.MAKH;
END;

-- Thay đổi kiểu dữ liệu của cột TENSP trong bảng SANPHAM
ALTER TABLE SANPHAM
ALTER COLUMN TENSP NVARCHAR(255) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột NHAPH trong bảng SANPHAM
ALTER TABLE SANPHAM
ALTER COLUMN NHAPH NVARCHAR(255) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột TENTL trong bảng THELOAI
ALTER TABLE THELOAI
ALTER COLUMN TENTL NVARCHAR(100) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột HOTEN trong bảng THONGTIN
ALTER TABLE THONGTIN
ALTER COLUMN HOTEN NVARCHAR(50) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột SODT trong bảng THONGTIN
ALTER TABLE THONGTIN
ALTER COLUMN SODT NVARCHAR(50) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột EMAIL trong bảng THONGTIN
ALTER TABLE THONGTIN
ALTER COLUMN EMAIL NVARCHAR(100) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột DIACHI trong bảng THONGTIN
ALTER TABLE THONGTIN
ALTER COLUMN DIACHI NVARCHAR(255) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột TINHTRANG trong bảng NHANVIEN
ALTER TABLE NHANVIEN
ALTER COLUMN CHUCVU NVARCHAR(255) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột TENCTUD trong bảng CTUUDAI
ALTER TABLE CTUUDAI
ALTER COLUMN TENCTUD NVARCHAR(255) NOT NULL;

-- Thay đổi kiểu dữ liệu của cột MOTA trong bảng CTUUDAI
ALTER TABLE CTUUDAI
ALTER COLUMN MOTA NVARCHAR(255) NOT NULL ;

-- Thay đổi kiểu dữ liệu của cột TINHTRANG trong bảng TINHTRANGSP
ALTER TABLE TINHTRANGSP
ALTER COLUMN TRANGTHAI NVARCHAR(255) NOT NULL;

ALTER TABLE CTUUDAI
DROP CONSTRAINT DF__CTUUDAI__MOTA__37A5467C;

ALTER TABLE CTUUDAI
ADD CONSTRAINT DF_CTUUDAI_MOTA DEFAULT N'Chưa có mô tả' FOR MOTA;

ALTER TABLE SANPHAM
ALTER COLUMN NENTANG NVARCHAR(100) NOT NULL ;
ALTER TABLE PHIEUCSKH
ALTER COLUMN NOIDUNG NVARCHAR(255) NOT NULL;
ALTER TABLE CTUUDAI

ALTER TABLE NHAPKHO
ALTER COLUMN TINHTRANG NVARCHAR(255) NOT NULL;

ALTER TABLE NHAPKHO
DROP CONSTRAINT DF__NHAPKHO__TRANGTH__6C190EBB;

ALTER TABLE NHAPKHO
ADD CONSTRAINT DF__NHAPKHO__TRANGTH__6C190EBB DEFAULT N'Đủ hàng' FOR TINHTRANG;

drop table TAIKHOAN
DROP TABLE SANPHAM
 
ALTER TABLE SANPHAM
ADD CONSTRAINT PK__SANPHAM__60228A329CD3320F PRIMARY KEY (MASP);
ALTER TABLE KHO
DROP CONSTRAINT FK__KHO__MASP__68487DD7;
ALTER TABLE CHITIETHD
DROP CONSTRAINT [FK__CHITIETHD__MASP__6383C8BA];

ALTER TABLE CHITIETHD
ALTER COLUMN MASP NVARCHAR(255) NOT NULL;
ALTER TABLE KHO
ADD CONSTRAINT FK__KHO__MASP__68487DD7 FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP);
ALTER TABLE CHITIETHD
ADD CONSTRAINT FK__CHITIETHD__MASP__6383C8BA FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP);
-- Tạo trigger tự động tạo mã nhân viên (MANV) duy nhất khi thêm mới một nhân viên vào bảng NHANVIEN
CREATE TRIGGER TR_NHANVIEN_INSERT
ON NHANVIEN
AFTER INSERT
AS
BEGIN
    DECLARE @next_manv INT;
    SET @next_manv = (SELECT ISNULL(MAX(MANV), 0) FROM NHANVIEN) + 1;
    UPDATE NHANVIEN
    SET MANV = @next_manv
    WHERE MANV IS NULL;
END;
-- Tạo trigger tự động tạo mã khách hàng (MAKH) duy nhất khi thêm mới một khách hàng vào bảng KHACHHANG
CREATE TRIGGER TR_KHACHHANG_INSERT
ON KHACHHANG
AFTER INSERT
AS
BEGIN
    DECLARE @next_makh INT;
    SET @next_makh = (SELECT ISNULL(MAX(MAKH), 0) FROM KHACHHANG) + 1;
    UPDATE KHACHHANG
    SET MAKH = @next_makh
    WHERE MAKH IS NULL;
END;
-- Tạo trigger tự động tạo mã thể loại (MATL) duy nhất khi thêm mới một thể loại vào bảng THELOAI
CREATE TRIGGER TR_THELOAI_INSERT
ON THELOAI
AFTER INSERT
AS
BEGIN
    DECLARE @next_matl INT;
    SET @next_matl = (SELECT ISNULL(MAX(MATL), 0) FROM THELOAI) + 1;
    UPDATE THELOAI
    SET MATL = @next_matl
    WHERE MATL IS NULL;
END;
-- Tạo trigger tự động tạo mã thông tin (MATT) duy nhất khi thêm mới một thể loại vào bảng THONGTIN
CREATE TRIGGER TR_THONGTIN_INSERT
ON THONGTIN
AFTER INSERT
AS
BEGIN
    DECLARE @next_matt INT;
    SET @next_matt = (SELECT ISNULL(MAX(MATT), 0) FROM THONGTIN) + 1;
    UPDATE THONGTIN
    SET MATT = @next_matt
    WHERE MATT IS NULL;
END;
-- Tạo trigger tự động tạo mã chăm sóc khách hàng (MACSKH) duy nhất khi thêm mới một thể loại vào bảng PHIEUCSKH
CREATE TRIGGER TR_PHIEUCSKH_INSERT
ON PHIEUCSKH
AFTER INSERT
AS
BEGIN
    DECLARE @next_macskh INT;
    SET @next_macskh = (SELECT ISNULL(MAX(MACSKH), 0) FROM PHIEUCSKH) + 1;
    UPDATE PHIEUCSKH
    SET MACSKH = @next_macskh
    WHERE MACSKH IS NULL;
END;
-- Tạo trigger tự động tạo mã chương trình ưu đãi (MACTUD) duy nhất khi thêm mới một thể loại vào bảng CTUUDAI
CREATE TRIGGER TR_CTUUDAI_INSERT
ON CTUUDAI
AFTER INSERT
AS
BEGIN
    DECLARE @next_mactud INT;
    SET @next_mactud = (SELECT ISNULL(MAX(MACTUD), 0) FROM CTUUDAI) + 1;
    UPDATE CTUUDAI
    SET MACTUD = @next_mactud
    WHERE MACTUD IS NULL;
END;
-- Tạo trigger tự động tạo mã hóa đơn (MAHD) duy nhất khi thêm mới một thể loại vào bảng HOADON
CREATE TRIGGER TR_HOADON_INSERT
ON HOADON
AFTER INSERT
AS
BEGIN
    DECLARE @next_mahd INT;
    SET @next_mahd = (SELECT ISNULL(MAX(MAHD), 0) FROM HOADON) + 1;
    UPDATE HOADON
    SET MAHD = @next_mahd
    WHERE MAHD IS NULL;
END;

-- Tạo trigger tự động tạo mã chi tiết hóa đơn (MACTHD) duy nhất khi thêm mới một thể loại vào bảng CHITIETHD
CREATE TRIGGER TR_CHITIETHD_INSERT
ON CHITIETHD
AFTER INSERT
AS
BEGIN
    DECLARE @next_macthd INT;
    SET @next_macthd = (SELECT ISNULL(MAX(MACTHD), 0) FROM CHITIETHD) + 1;
    UPDATE CHITIETHD
    SET MACTHD = @next_macthd
    WHERE MACTHD IS NULL;
END;

-- Tạo trigger tự động tạo mã báo cáo (MABC) duy nhất khi thêm mới một thể loại vào bảng BAOCAO
CREATE TRIGGER TR_BAOCAO_INSERT
ON BAOCAO
AFTER INSERT
AS
BEGIN
    DECLARE @next_mabc INT;
    SET @next_mabc = (SELECT ISNULL(MAX(MABC), 0) FROM BAOCAO) + 1;
    UPDATE BAOCAO
    SET MABC = @next_mabc
    WHERE MABC IS NULL;
END;

-- Tạo trigger tự động tạo mã tinh trang sản phẩm (MATTSP) duy nhất khi thêm mới một thể loại vào bảng TINHTRANGSP
CREATE TRIGGER TR_TINHTRANGSP_INSERT
ON TINHTRANGSP
AFTER INSERT
AS
BEGIN
    DECLARE @next_mattsp INT;
    SET @next_mattsp = (SELECT ISNULL(MAX(MATTSP), 0) FROM TINHTRANGSP) + 1;
    UPDATE TINHTRANGSP
    SET MATTSP = @next_mattsp
    WHERE MATTSP IS NULL;
END;

-- Tạo trigger tự động tạo mã kho (MAKHO) duy nhất khi thêm mới một thể loại vào bảng KHO
CREATE TRIGGER TR_KHO_INSERT
ON KHO
AFTER INSERT
AS
BEGIN
    DECLARE @next_makho INT;
    SET @next_makho = (SELECT ISNULL(MAX(MAKHO), 0) FROM KHO) + 1;
    UPDATE KHO
    SET MAKHO = @next_makho
    WHERE MAKHO IS NULL;
END;

-- Tạo trigger tự động tạo mã nhập kho (MANK) duy nhất khi thêm mới một thể loại vào bảng NHAPKHO
CREATE TRIGGER TR_NHAPKHO_INSERT
ON NHAPKHO
AFTER INSERT
AS
BEGIN
    DECLARE @next_mank INT;
    SET @next_mank = (SELECT ISNULL(MAX(MANK), 0) FROM NHAPKHO) + 1;
    UPDATE NHAPKHO
    SET MANK = @next_mank
    WHERE MANK IS NULL;
END;
-- Tạo trigger tự động tạo mã sản phẩm (MASP) duy nhất theo quy luật  SP với "000000" khi thêm mới một thể loại vào bảng NHAPKHO
CREATE TRIGGER TR_SANPHAM_INSERT
ON SANPHAM
AFTER INSERT
AS
BEGIN
    DECLARE @next_masp VARCHAR(10);
    SET @next_masp = 'SP' + RIGHT('000000' + CAST((SELECT ISNULL(MAX(RIGHT(MASP, 6)), 0) + 1 FROM SANPHAM) AS VARCHAR(6)), 6);
    UPDATE SANPHAM
    SET MASP = @next_masp
    WHERE MASP IS NULL;
END;

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
-- tạo check constraint cho CCCD  sao cho chỉ được nhập quá 12 số
ALTER TABLE THONGTIN
ADD CONSTRAINT CHK_CCCD_LENGTH CHECK (LEN(CCCD) <= 12);

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

INSERT INTO SANPHAM (MASP, MATL, TENSP, NHAPH, NGPH, NENTANG, GIATHUE)
VALUES
('SP000001', 31, 'Yurukill: The Calumniation Game', 'JP: Izanagi Games', '2022-06-07', 'Playstation 5', 20000),
('SP000003', 19, 'Yuoni', 'Chorus Worldwide', '2021-08-19', 'Playstation 5', 20000),
('SP000004', 52, 'Yu-Gi-Oh! Master Duel', 'Konami', '2022-01-28', 'Playstation 5', 20000),
('SP000005', 78, 'Ys X: Nordics', 'Nihon Falcom', NULL, 'Playstation 5', 20000),
('SP000006', 45, 'Ys VIII: Lacrimosa of Dana', 'NIS America', '2022-11-15', 'Playstation 5', 20000),
('SP000007', 73, 'Ys IX: Monstrum Nox', 'NIS America', '2023-05-09', 'Playstation 5', 20000),
('SP000008', 29, 'Yakuza: Like a Dragon', 'Sega', '2021-03-02', 'Playstation 5', 20000),
('SP000009', 48, 'WWE 2K23', '2K', '2023-03-17', 'Playstation 5', 20000),
('SP000010', 69, 'WWE 2K22', '2K', '2022-03-11', 'Playstation 5', 20000),
('SP000011', 52, 'Wreckfest', 'THQ Nordic', '2021-06-01', 'Playstation 5', 20000),
('SP000013', 56, 'WRC 10', 'Nacon', '2021-09-02', 'Playstation 5', 20000),
('SP000015', 31, 'WRC 9', 'Nacon', '2020-11-12', 'Playstation 5', 20000),
('SP000017', 1, 'Worms Rumble', 'Team17', '2020-12-01', 'Playstation 5', 20000),
('SP000020', 34, 'World War Z', 'Saber Interactive', '2019-04-16', 'Playstation 5', 20000),
('SP000022', 3, 'Wolfenstein: The New Order', 'Bethesda Softworks', '2014-05-20', 'Playstation 5', 20000),
('SP000023', 3, 'Wolfenstein: The Old Blood', 'Bethesda Softworks', '2015-05-05', 'Playstation 5', 20000),
('SP000024', 3, 'Wolfenstein II: The New Colossus', 'Bethesda Softworks', '2017-10-27', 'Playstation 5', 20000),
('SP000025', 42, 'Watch Dogs: Legion', 'Ubisoft', '2020-10-29', 'Playstation 5', 20000),
('SP000026', 3, 'Watch Dogs 2', 'Ubisoft', '2016-11-15', 'Playstation 5', 20000),
('SP000027', 3, 'Watch Dogs', 'Ubisoft', '2014-05-27', 'Playstation 5', 20000),
('SP000039', 31, 'Warhammer: Vermintide 2', 'Fatshark', '2018-03-08', 'Playstation 5', 20000);

SELECT * FROM SANPHAM