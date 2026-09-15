INSERT INTO kategori (nama) VALUES
('Fiksi'),
('Non-Fiksi'),
('Sains'),
('Sejarah'),
('Teknologi'),
('Biografi'),
('Anak-anak'),
('Komik'),
('Agama'),
('Ekonomi');

INSERT INTO rak_buku (lokasi, kapasitas) VALUES
('Lantai 1 - Rak A1', 50),
('Lantai 1 - Rak A2', 50),
('Lantai 1 - Rak B1', 40),
('Lantai 1 - Rak B2', 40),
('Lantai 2 - Rak A1', 60),
('Lantai 2 - Rak A2', 60),
('Lantai 2 - Rak B1', 30),
('Lantai 2 - Rak B2', 30),
('Lantai 3 - Rak A1', 45),
('Lantai 3 - Rak A2', 45);

INSERT INTO buku (id_kategori, id_rak, nama, halaman, penulis, penerbit, tahun_terbit) VALUES
(1, 1, 'Laskar Pelangi', '529', 'Andrea Hirata', 'Bentang Pustaka', 2005),
(1, 2, 'Bumi Manusia', '535', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1980),
(2, 3, 'Sapiens', '443', 'Yuval Noah Harari', 'Pustaka Alvabet', 2011),
(3, 4, 'Cosmos', '365', 'Carl Sagan', 'Random House', 1980),
(4, 5, 'Sejarah Indonesia Modern', '480', 'M.C. Ricklefs', 'Serambi', 2008),
(5, 6, 'Clean Code', '464', 'Robert C. Martin', 'Prentice Hall', 2008),
(6, 7, 'Steve Jobs', '656', 'Walter Isaacson', 'Simon & Schuster', 2011),
(7, 8, 'Cerita Rakyat Nusantara', '210', 'Tim Penulis', 'Gramedia', 2015),
(8, 9, 'One Piece Vol. 1', '192', 'Eiichiro Oda', 'Shueisha', 1997),
(9, 10, 'Pengantar Ilmu Ekonomi', '320', 'N. Gregory Mankiw', 'Salemba Empat', 2018);

INSERT INTO petugas (nama, umur, posisi) VALUES
('Budi Santoso', 28, 'Pustakawan'),
('Siti Aminah', 34, 'Kepala Perpustakaan'),
('Andi Wijaya', 25, 'Pustakawan'),
('Rina Permata', 30, 'Admin'),
('Joko Prasetyo', 40, 'Pustakawan'),
('Dewi Lestari', 27, 'Admin'),
('Agus Salim', 45, 'Kepala Perpustakaan'),
('Maya Sari', 23, 'Pustakawan'),
('Fajar Nugroho', 31, 'Admin'),
('Nurul Hidayah', 29, 'Pustakawan');

INSERT INTO peminjaman (id_petugas, id_buku, nama_peminjam) VALUES
(1, 1, 'Rizky Ramadhan'),
(2, 2, 'Ayu Kartika'),
(3, 3, 'Fahri Hakim'),
(1, 4, 'Putri Wulandari'),
(4, 5, 'Dimas Setiawan'),
(5, 6, 'Nadia Salsabila'),
(2, 7, 'Bagas Pratama'),
(6, 8, 'Indah Permatasari'),
(3, 9, 'Rendra Kurniawan'),
(7, 10, 'Sri Wahyuni');

