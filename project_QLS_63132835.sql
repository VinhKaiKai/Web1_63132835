CREATE DATABASE Project_QLS_63132835
USE Project_QLS_63132835

use master
drop database Project_QLS_63132835

CREATE TABLE KhachHang (
    MaKH INT IDENTITY(1,1) PRIMARY KEY,
    HoTen NVARCHAR(50) ,
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50) ,
    Email VARCHAR(50) ,
    DiaChi NVARCHAR(200) ,
    DienThoai VARCHAR(12),
    GioiTinh NVARCHAR(3) ,
    NgaySinh date
);

-- Dữ liệu mẫu cho bảng KhachHang
INSERT KhachHang VALUES (N'Nguyễn Văn An', 'tai_khoan_a', 'mat_khau_a', 'email_a@example.com', N'123 Đường Hoàng Văn Thụ', '1234567890', N'Nam', '1990-01-01');
INSERT KhachHang VALUES (N'Trần Thị Bình', 'tai_khoan_b', 'mat_khau_b', 'email_b@example.com', N'777 Đường Cách Mạng Tháng Tám', '9876543210', N'Nữ', '1995-05-15');
INSERT KhachHang VALUES (N'Nguyễn Văn Cânh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'101 Đường Trần Hưng Đạo', '5555555555', N'Nam', '1980-12-09');
INSERT KhachHang VALUES (N'Biện Văn vinh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'222 Đường Lê Thánh Tôn', '5555555555', N'Nam', '1980-12-07');
INSERT KhachHang VALUES (N'Trương Văn zoko', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'777 Đường Cách Mạng Tháng Tám', '5555555555', N'Nữ', '1976-11-08');
INSERT KhachHang VALUES (N'Phạm Văn xâm', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'123 Đường Hoàng Văn Thụ', '5555555555', N'Nam', '1980-10-10');
INSERT KhachHang VALUES (N'Phạm Văn ninh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'777 Đường Cách Mạng Tháng Tám', '5555555555', N'Nữ', '1980-04-10');
INSERT KhachHang VALUES (N'Trương Văn minh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'666 Đường Nguyễn Thị Minh Kha', '5555555555', N'Nam', '1985-05-30');
INSERT KhachHang VALUES (N'Nguyễn Văn sang', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'Địa chỉ r', '5555555555', N'Nam', '1986-06-30');
INSERT KhachHang VALUES (N'Phạm Văn dật', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'222 Đường Lê Thánh Tôn', '5555555555', N'Nam', '1980-12-15');
INSERT KhachHang VALUES (N'Biện Văn fimu', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'888 Đường Lê Duẩn', '5555555555', N'Nam', '1980-12-19');
INSERT KhachHang VALUES (N'Nguyễn Văn gãi', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'123 Đường Hoàng Văn Thụ', '5555555555', N'Nữ', '1980-07-10');
INSERT KhachHang VALUES (N'Hồ Văn hòa', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'666 Đường Nguyễn Thị Minh Kha', '5555555555', N'Nam', '1980-12-10');
INSERT KhachHang VALUES (N'Phạm Văn jiko', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'222 Đường Lê Thánh Tôn', '5555555555', N'Nữ', '1987-12-28');
INSERT KhachHang VALUES (N'Trương Văn khánh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'888 Đường Lê Duẩn', '5555555555', N'Nam', '1980-12-27');
INSERT KhachHang VALUES (N'Nguyễn Văn lâm', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'888 Đường Lê Duẩn', '5555555555', N'Nam', '1990-12-29');
INSERT KhachHang VALUES (N'Phạm Văn quỳnh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'123 Đường Hoàng Văn Thụ', '5555555555', N'Nữ', '1980-04-28');
INSERT KhachHang VALUES (N'Hồ Văn wiki', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'444 Đường Võ Văn Tần', '5555555555', N'Nam', '1970-12-13');
INSERT KhachHang VALUES (N'Phạm Văn em', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'101 Đường Trần Hưng Đạo', '5555555555', N'Nam', '1987-02-30');
INSERT KhachHang VALUES (N'Phạm Văn rí', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'222 Đường Lê Thánh Tôn', '5555555555', N'Nữ', '1982-03-10');
INSERT KhachHang VALUES (N'Hồ Văn thái', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'666 Đường Nguyễn Thị Minh Khai', '5555555555', N'Nam', '1983-09-10');
INSERT KhachHang VALUES (N'Phạm Văn yêu', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'333 Đường Phan Xích Long', '5555555555', N'Nữ', '1987-12-10');
INSERT KhachHang VALUES (N'Trương Văn uyên', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'123 Đường Hoàng Văn Thụ', '5555555555', N'Nam', '1988-12-27');
INSERT KhachHang VALUES (N'Phạm Văn in', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'456 Đường Nguyễn Văn Linh', '5555555555', N'Nữ', '1981-12-28');
INSERT KhachHang VALUES (N'Phạm Văn oỏng', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'444 Đường Võ Văn Tần', '5555555555', N'Nam', '1940-12-10');
INSERT KhachHang VALUES (N'Phạm Văn phương', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'444 Đường Võ Văn Tần', '5555555555', N'Nữ', '1930-12-10');
INSERT KhachHang VALUES (N'Trương Văn Sơn', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'888 Đường Lê Duẩn', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Phạm Văn Yên', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'Địa chỉ C', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Hồ Văn Lập', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'456 Đường Nguyễn Văn Linh', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Trương Văn Huy', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'333 Đường Phan Xích Long', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Nguyễn Văn Quân', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'333 Đường Phan Xích Long', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Hồ Văn Vinh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'456 Đường Nguyễn Văn Linh', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Trầm Văn Thịnh', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'101 Đường Trần Hưng Đạo', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Chương Văn Cường', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'444 Đường Võ Văn Tần', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Biện Văn Cường', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'101 Đường Trần Hưng Đạo', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Hồ Văn Cường', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'888 Đường Lê Duẩn', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Nguyễn Văn Cường', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'456 Đường Nguyễn Văn Linh', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Trương Văn Cường', 'tai_khoan_c', 'mat_khau_c', 'email_c@example.com', N'333 Đường Phan Xích Long', '5555555555', N'Nam', '1970-12-10');
INSERT KhachHang VALUES (N'Trầm Quang Vinh', 'admin', '123', 'email_c@example.com', N'333 Đường Phan Xích Long', '5555555555', N'Nam', '1970-12-10');

select * from KhachHang

CREATE TABLE TacGia (
    MaTacGia INT IDENTITY(1,1) PRIMARY KEY,
    TenTacGia NVARCHAR(50) ,
    DiaChi NVARCHAR(50),
    TieuSu NVARCHAR(300) ,
    DienThoai VARCHAR(50) 
);
-- Dữ liệu mẫu cho bảng TacGia
INSERT TacGia VALUES (N'Nguyễn Nhật Ánh', N'Hà Nội', N'Tác giả nổi tiếng với các tác phẩm về tuổi học trò.', '123456789');
INSERT TacGia VALUES (N'Trí Tuệ', N'Silicon Valley', N'Chuyên gia nổi tiếng về trí tuệ nhân tạo.', '987654321');
INSERT TacGia VALUES (N'Chimamanda Ngozi Adichie', N'Lagos', N'Tác giả người Nigeria nổi tiếng với feminism.', '555555555');
INSERT TacGia VALUES ('Nguyen Van A', '123 Duong ABC', 'Tieu su cua Nguyen Van A', '0123456789');
INSERT TacGia VALUES ('Tran Thi B', '456 Duong XYZ', 'Tieu su cua Tran Thi B', '0987654321');
INSERT TacGia VALUES (N'Haruki Murakami', N'Tokyo', N'Tác giả nổi tiếng người Nhật Bản với các tác phẩm văn học độc đáo.', '111111111'),
					(N'J.K. Rowling', N'London', N'Tác giả nổi tiếng với loạt sách Harry Potter.', '222222222'),
					(N'Paulo Coelho', N'Río de Janeiro', N'Tác giả người Brazil nổi tiếng với "Alchemist" và các tác phẩm tâm lý.', '333333333'),
					(N'Maya Angelou', N'St. Louis', N'Nhà thơ và nhà văn nổi tiếng người Mỹ, một trong những hồi ký nổi tiếng nhất.', '444444444'),
					(N'Albert Camus', N'Algiers', N'Nhà văn, triết gia người Pháp-Algeria, đoạt giải Nobel Văn học năm 1957.', '666666666'),
					(N'Agatha Christie', N'Devon', N'Nữ nhà văn trinh thám nổi tiếng người Anh, tác giả của nhiều tác phẩm nổi tiếng.', '777777777'),
					(N'Kazuo Ishiguro', N'London', N'Nhà văn người Anh-Nhật Bản, đoạt giải Nobel Văn học năm 2017.', '888888888'),
					(N'Mark Twain', N'Florida', N'Nhà văn, hài kịch gia, và nhà lãnh đạo xã hội người Mỹ.', '999999999'),
					(N'Virginia Woolf', N'London', N'Nhà văn nổi tiếng người Anh, một trong những tác giả nữ quan trọng nhất thế kỷ 20.', '1010101010'),
					(N'Gabriel García Márquez', N'Aracataca', N'Nhà văn người Colombia, đoạt giải Nobel Văn học năm 1982.', '1212121212'),
					(N'Gabriel García Márquez', N'Aracataca', N'Nhà văn người Colombia, đoạt giải Nobel Văn học năm 1982.', '1212121212'),
					(N'George Orwell', N'Motihari', N'Nhà văn và nhà báo người Anh, tác giả của "1984" và "Đường về Wigan Pier".', '1313131313'),
					(N'Leo Tolstoy', N'Yasnaya Polyana', N'Nhà văn người Nga, tác giả của "Chiến tranh và hòa bình" và "Anna Karenina".', '1414141414'),
					(N'Margaret Atwood', N'Ottawa', N'Nhà văn và nhà thơ người Canada, tác giả của "The Handmaid''s Tale".', '1515151515'),
					(N'F. Scott Fitzgerald', N'St. Paul', N'Nhà văn người Mỹ, tác giả của "The Great Gatsby".', '1616161616'),
					(N'Ayn Rand', N'Saint Petersburg', N'Nhà văn và triết gia người Mỹ gốc Nga, tác giả của "Atlas Shrugged".', '1717171717'),
					(N'Jorge Luis Borges', N'Buenos Aires', N'Nhà văn và nhà thơ người Argentina, tác giả của "Ficciones".', '1818181818'),
					(N'Toni Morrison', N'Lorain', N'Nhà văn và nhà thơ người Mỹ, đoạt giải Nobel Văn học năm 1993.', '1919191919'),
					(N'Ernest Hemingway', N'Oak Park', N'Nhà văn và nhà báo người Mỹ, đoạt giải Nobel Văn học năm 1954.', '2020202020'),
					(N'Jane Austen', N'Steventon', N'Nhà văn người Anh, tác giả của "Pride and Prejudice" và "Sense and Sensibility".', '2121212121'),
					 (N'Virginia Woolf', N'London', N'Nhà văn nổi tiếng người Anh, một trong những tác giả nữ quan trọng nhất thế kỷ 20.', '2222222222'),
					(N'Harper Lee', N'Monroeville', N'Nhà văn người Mỹ, tác giả của "To Kill a Mockingbird".', '3333333333'),
					(N'Mark Twain', N'Florida', N'Nhà văn, hài kịch gia, và nhà lãnh đạo xã hội người Mỹ.', '4444444444'),
					(N'Toni Morrison', N'Lorain', N'Nhà văn và nhà thơ người Mỹ, đoạt giải Nobel Văn học năm 1993.', '5555555555'),
					(N'George Orwell', N'Motihari', N'Nhà văn và nhà báo người Anh, tác giả của "1984" và "Đường về Wigan Pier".', '6666666666');



CREATE TABLE NhaXuatBan (
    MaNXB INT IDENTITY(1,1) PRIMARY KEY,
    TenNXB NVARCHAR(50) ,
    DiaChi NVARCHAR(50),
    DienThoai VARCHAR(50) 
);
INSERT NhaXuatBan VALUES (N'NXB Trẻ', N'Tp.Hồ Chí Minh', '123456789');
INSERT NhaXuatBan VALUES (N'NXB Kim Đồng', N'Hà Nội', '987654321');
INSERT NhaXuatBan VALUES (N'NXB Văn Học', N'Tp.Hồ Chí Minh', '555555555');
INSERT NhaXuatBan VALUES (N'NXB Ánh Dương', N'012 Duong UVW', '0987654321');
INSERT NhaXuatBan VALUES (N'NXB Chu ánh', N'2/4 Nha Trang', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Chu Hoặc', N'2/5 Chu Văn An', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Maika', N'Nguyễn Đình Chiễu', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Hòa Thân', N'Hồ Chí Minh', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Đường Tam', N'789 Cách mạng tháng 9', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Pikachu', N'123 Lê Thánh Tông', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Vinh', N'Đại Mỹ Ninh Thân', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Hắc Kiến Hoa', N'Ninh Hòa Khánh Hòa', '0123456789');
INSERT NhaXuatBan VALUES (N'NXB Nhiếp Viễn', N'Vạn Khánh Vạn Ninh', '0123456789');

CREATE TABLE ChuDe (
    MaChuDe INT IDENTITY(1,1) PRIMARY KEY,
    TenChuDe NVARCHAR(50)
);
INSERT ChuDe VALUES (N'Tâm Lý Học');
INSERT ChuDe VALUES (N'Phát Triển Cá Nhân');
INSERT ChuDe VALUES (N'Trinh Thám');
INSERT ChuDe VALUES (N'Tình yêu');
INSERT ChuDe VALUES (N'Khám phá');
INSERT ChuDe VALUES (N'Học tập');
INSERT ChuDe VALUES (N'Quê hương');

CREATE TABLE Sach (
    MaSach INT IDENTITY(1,1) PRIMARY KEY,
    TenSach NVARCHAR(50) ,
    GiaBan DECIMAL(18,0),
    MoTa NVARCHAR(300) ,
    AnhBia NVARCHAR(50) ,
    NgayCapNhat DATETIME ,
    SoLuongTon INT,
    MaNXB INT NOT NULL FOREIGN KEY REFERENCES NhaXuatBan(MaNXB),
    MaChuDe INT NOT NULL FOREIGN KEY REFERENCES ChuDe(MaChuDe),
	Moi INT
);

select * from Sach

INSERT Sach VALUES (N'Nhà cái đến từ châu âu', 150000, N'Cuốn sách nổi tiếng về phát triển bản thân.', N'dac-nhan-tam.jpg', GETDATE(), 50, 1, 7,0);
INSERT Sach VALUES (N'Toán 1', 150000, N'Cuốn sách nổi tiếng về toán 1.', N'dac-nhan-tam.jpg', GETDATE(), 50, 2, 6,0);
INSERT Sach VALUES (N'Toán 2', 250000, N'Cuốn sách nổi tiếng về toán khó.', N'dac-nhan-tam.jpg', GETDATE(), 50, 3, 6,0);
INSERT Sach VALUES (N'Xác xuất thống kê', 50000, N'Cuốn sách nổi tiếng về xác xuất.', N'dac-nhan-tam.jpg', GETDATE(), 50, 4, 5,0);
INSERT Sach VALUES (N'Vật lý', 140000, N'Cuốn sách nổi tiếng về Vật lý .', N'dac-nhan-tam.jpg', GETDATE(), 50, 5, 4,1);
INSERT Sach VALUES (N'Địa Lý', 110000, N'Cuốn sách nổi tiếng về địa lý thế giới.', N'dac-nhan-tam.jpg', GETDATE(), 50, 6, 3,1);
INSERT Sach VALUES (N'HSK 1', 130000, N'Cuốn sách nổi tiếng về phát triển tiếng trung.', N'dac-nhan-tam.jpg', GETDATE(), 50, 7, 2,1);
INSERT Sach VALUES (N'HSK 2', 155000, N'Cuốn sách nổi tiếng về phát triển tiếng trung cơ bản.', N'dac-nhan-tam.jpg', GETDATE(), 50, 8, 1,0);
INSERT Sach VALUES (N'HSK3', 154000, N'Cuốn sách nổi tiếng về phát triển tiếng trung cơ bản 1.', N'dac-nhan-tam.jpg', GETDATE(), 50, 9, 2,1);
INSERT Sach VALUES (N'HSK4', 153000, N'Cuốn sách nổi tiếng về phát triển tiếng trung trung cấp 1.', N'dac-nhan-tam.jpg', GETDATE(), 50, 10, 3,1);
INSERT Sach VALUES (N'HSK 5', 70000, N'Cuốn sách nổi tiếng về phát triển trung cấp 2.', N'dac-nhan-tam.jpg', GETDATE(), 50, 11, 4,0);
INSERT Sach VALUES (N'HSK 6', 40000, N'Cuốn sách nổi tiếng về phát triển trung cấp 3.', N'dac-nhan-tam.jpg', GETDATE(), 50, 12, 4,1);
INSERT Sach VALUES (N'HSK 7', 90000, N'Cuốn sách nổi tiếng về phát triển Cao cấp 1.', N'dac-nhan-tam.jpg', GETDATE(), 50, 1, 6,1);
INSERT Sach VALUES (N'HSK 8', 10000, N'Cuốn sách nổi tiếng về phát triển Cao cấp 2.', N'dac-nhan-tam.jpg', GETDATE(), 50, 2, 7,0);
INSERT Sach VALUES (N'HSK 9', 20000, N'Cuốn sách nổi tiếng về phát triển Cao cấp thuật.', N'dac-nhan-tam.jpg', GETDATE(), 50, 3, 7,1);
INSERT Sach VALUES (N'TOECI', 30000, N'Cuốn sách nổi tiếng về phát triển bản thân về tiếng anh.', N'dac-nhan-tam.jpg', GETDATE(), 50, 4, 4,0);
INSERT Sach VALUES (N'Hoa ngữ', 50000, N'Cuốn sách nổi tiếng về phát triển dịch thuật.', N'dac-nhan-tam.jpg', GETDATE(), 50, 5, 3,1);
INSERT Sach VALUES (N'Dạy làm con người', 450000, N'Cuốn sách nổi tiếng về phát triển bản thân về làm con người.', N'dac-nhan-tam.jpg', GETDATE(), 50, 6, 7,0);
INSERT Sach VALUES (N'Tình Yêu Quê Hương', 120000, N'Cuốn sách nổi tiếng về phát triển bản thân và yêu thương quê hương.', N'dac-nhan-tam.jpg', GETDATE(), 50, 7, 2,0);
INSERT Sach VALUES (N'Nhớ Cha mẹ', 130000, N'Cuốn sách nổi tiếng về phát triển bản thân về nhớ về công ơn cha mẹ.', N'dac-nhan-tam.jpg', GETDATE(), 50, 8, 2,0);
INSERT Sach VALUES (N'Anh chị là Nhà', 140000, N'Cuốn sách nổi tiếng về phát triển tình yêu thương anh chị.', N'dac-nhan-tam.jpg', GETDATE(), 50, 9, 3,0);
INSERT Sach VALUES (N'Mang yêu thương', 160000, N'Cuốn sách nổi tiếng về phát triển bản thân yêu thương bản thân.', N'dac-nhan-tam.jpg', GETDATE(), 50, 10, 4,0);
INSERT Sach VALUES (N'Trái gió trở trời', 10000, N'Cuốn sách nổi tiếng về phát triển sống gió cuộc đời.', N'dac-nhan-tam.jpg', GETDATE(), 50, 11, 5,0);
INSERT Sach VALUES (N'Bác cười đẹp', 170000, N'Cuốn sách nổi tiếng vê Bác.', N'dac-nhan-tam.jpg', GETDATE(), 50, 12, 6,0);
INSERT Sach VALUES (N'Tam Quốc Chí', 10000, N'Cuốn sách nổi tiếng về tam quốc diễn nghĩa.', N'dac-nhan-tam.jpg', GETDATE(), 50, 13, 4,0);
INSERT Sach VALUES (N'Trường vân chí', 90000, N'Cuốn sách nổi tiếng về ý chí chiến sỹ.', N'dac-nhan-tam.jpg', GETDATE(), 50, 1, 1,0);
INSERT Sach VALUES (N'Đấu la đại lục', 140000, N'Cuốn sách nổi tiếng về Đường tam với cây búa.', N'dac-nhan-tam.jpg', GETDATE(), 50, 12, 2,0);
INSERT Sach VALUES (N'Tau lủa ta lu', 20000, N'Cuốn sách nổi tiếng đấu la đại lục.', N'dac-nhan-tam.jpg', GETDATE(), 50, 1, 1,0);
INSERT Sach VALUES (N'Ai cho lương thiện', 30000, N'Cuốn sách nổi tiếng về chí phèo.', N'dac-nhan-tam.jpg', GETDATE(), 50, 2, 4,0);
INSERT Sach VALUES (N'Liên Quân moblie', 40000, N'Cuốn sách nổi tiếng về phát triển bản thân.', N'dac-nhan-tam.jpg', GETDATE(), 50, 3, 1,0);
INSERT Sach VALUES (N'Tốc Chiến', 50000, N'Cuốn sách nổi tiếng về phát triển chơi game.', N'dac-nhan-tam.jpg', GETDATE(), 50, 4, 3,0);
INSERT Sach VALUES (N'PUBG', 60000, N'Cuốn sách nổi tiếng về phát triển chơi game pubg.', N'dac-nhan-tam.jpg', GETDATE(), 50, 5, 5,0);
INSERT Sach VALUES (N'Kiếm Hạo Trần Tâm', 70000, N'Cuốn sách nổi tiếng về kiếm hạo trần tâm.', N'dac-nhan-tam.jpg', GETDATE(), 50, 6, 6,0);
INSERT Sach VALUES (N'Khoa học 1', 80000, N'Cuốn sách nổi tiếng về phát triển bản thân về khoa học thế giới.', N'dac-nhan-tam.jpg', GETDATE(), 50, 7, 4,0);
INSERT Sach VALUES (N'Viễn tưởng tây thi', 10000, N'Cuốn sách nổi tiếng về nữ nhân đẹp nhất lịch sử.', N'dac-nhan-tam.jpg', GETDATE(), 50, 8, 3,0);
INSERT Sach VALUES (N'Ngọc Ngà công chúa', 20000, N'Cuốn sách nổi tiếng về công chúa thời vua.', N'dac-nhan-tam.jpg', GETDATE(), 50, 9, 7,0);
INSERT Sach VALUES (N'Nữ nhi tình đoạn', 30000, N'Cuốn sách nổi tiếng về nữ nhân.', N'dac-nhan-tam.jpg', GETDATE(), 50, 10, 2,0);
INSERT Sach VALUES (N'Đắc Nhân Tâm', 150000, N'Cuốn sách nổi tiếng về phát triển bản thân.', N'dac-nhan-tam.jpg', GETDATE(), 50, 11, 6,0);
INSERT Sach VALUES (N'Harry Potter', 200000, N'Truyện phù thủy nổi tiếng của J.K. Rowling.', N'harry-potter.jpg', GETDATE(), 30, 2, 5,0);
INSERT Sach VALUES (N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 120000, N'Tác phẩm của Nguyễn Nhật Ánh về tuổi thơ.', N'hoa-vang-co-xanh.jpg', GETDATE(), 40, 1, 3,0);
INSERT Sach VALUES  ('Yêu tôi đi ', 50000, 'Mô tả về tình yêu', 'sach1.jpg', GETDATE(), 100, 6, 1,0);
INSERT Sach VALUES ('Tôi không đi', 70000, 'Cuộc tình éo le của vinh và bear trung', 'sach2.jpg', GETDATE(), 150, 2, 2,0);

select * from KhachHang
select * from KhachHang where MaKH = 10 or HoTen like N'%An%'