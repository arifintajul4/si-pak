-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Agu 2021 pada 05.49
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `kd_aturan` int(11) NOT NULL,
  `kd_gejala1` char(4) NOT NULL,
  `kd_gejala2` char(4) DEFAULT NULL,
  `kd_gejala3` char(4) DEFAULT NULL,
  `kd_diagnosis` char(4) NOT NULL,
  `kd_solusi` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`kd_aturan`, `kd_gejala1`, `kd_gejala2`, `kd_gejala3`, `kd_diagnosis`, `kd_solusi`) VALUES
(1, 'G001', 'G003', 'G008', 'D001', 'S003'),
(2, 'G001', 'G008', NULL, 'D001', 'S003'),
(3, 'G001', 'G003', NULL, 'D001', 'S001'),
(4, 'G001', 'G002', NULL, 'D003', 'S003'),
(5, 'G001', NULL, NULL, 'D002', 'S002'),
(52, 'G004', 'G009', 'G013', 'D005', 'S008'),
(53, 'G004', 'G006', 'G007', 'D003', 'S003'),
(54, 'G004', 'G013', NULL, 'D005', 'S012'),
(55, 'G004', 'G012', NULL, 'D008', 'S011'),
(56, 'G004', 'G011', NULL, 'D007', 'S010'),
(57, 'G004', 'G010', NULL, 'D006', 'S009'),
(58, 'G004', 'G009', NULL, 'D005', 'S008'),
(59, 'G004', 'G008', NULL, 'D001', 'S007'),
(60, 'G004', 'G007', NULL, 'D003', 'S006'),
(61, 'G004', 'G006', NULL, 'D003', 'S005'),
(62, 'G004', 'G005', NULL, 'D004', 'S004'),
(64, 'G004', NULL, NULL, 'D002', 'S013'),
(65, 'G014', 'G016', NULL, 'D005', 'S015'),
(66, 'G014', 'G015', NULL, 'D009', 'S014'),
(67, 'G014', NULL, NULL, 'D005', 'S016'),
(68, 'G017', 'G019', NULL, 'D010', 'S018'),
(69, 'G017', 'G018', NULL, 'D008', 'S017'),
(70, 'G017', 'G003', NULL, 'D001', 'S001'),
(71, 'G017', NULL, NULL, 'D009', 'S014'),
(73, 'G021', 'G025', NULL, 'D011', 'S022'),
(74, 'G021', 'G024', NULL, 'D006', 'S021'),
(75, 'G021', 'G023', NULL, 'D007', 'S010'),
(76, 'G021', 'G022', NULL, 'D001', 'S010'),
(77, 'G021', 'G018', NULL, 'D008', 'S017'),
(78, 'G021', 'G016', NULL, 'D005', 'S015'),
(79, 'G021', NULL, NULL, 'D009', 'S014'),
(80, 'G026', 'G028', 'G034', 'D006', 'S024'),
(81, 'G026', 'G027', 'G033', 'D005', 'S023'),
(82, 'G026', 'G034', NULL, 'D006', 'S024'),
(83, 'G026', 'G033', NULL, 'D005', 'S023'),
(84, 'G026', 'G029', NULL, 'D012', 'S025'),
(85, 'G026', 'G028', NULL, 'D006', 'S024'),
(86, 'G026', 'G027', NULL, 'D005', 'S023'),
(87, 'G026', NULL, NULL, 'D009', 'S014'),
(88, 'G030', 'G011', 'G013', 'D005', 'S026'),
(89, 'G030', 'G011', 'G013', 'D005', 'S016'),
(90, 'G030', 'G013', NULL, 'D005', 'S016'),
(91, 'G030', 'G011', NULL, 'D005', 'S026'),
(92, 'G030', NULL, NULL, 'D005', 'S026'),
(93, 'G031', 'G027', NULL, 'D004', 'S027'),
(94, 'G031', NULL, NULL, 'D004', 'S027'),
(95, 'G032', 'G034', NULL, 'D012', 'S029'),
(96, 'G032', 'G033', NULL, 'D007', 'S010'),
(97, 'G032', NULL, NULL, 'D004', 'S029'),
(98, 'G035', 'G036', NULL, 'D012', 'S030'),
(99, 'G035', NULL, NULL, 'D013', 'S031');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kd_basis_pengetahuan` int(11) NOT NULL,
  `kd_diagnosis` char(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `nilai_mb` float NOT NULL,
  `nilai_md` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kd_basis_pengetahuan`, `kd_diagnosis`, `kd_gejala`, `nilai_mb`, `nilai_md`) VALUES
(1, 'D001', 'G001', 0.9, 0.1),
(2, 'D001', 'G003', 0.8, 0.2),
(3, 'D001', 'G004', 0.9, 0.1),
(4, 'D001', 'G008', 0.8, 0.2),
(5, 'D001', 'G017', 0.8, 0.2),
(6, 'D001', 'G021', 0.6, 0.4),
(7, 'D001', 'G022', 0.8, 0.2),
(8, 'D002', 'G001', 0.9, 0.1),
(9, 'D002', 'G004', 0.9, 0.1),
(10, 'D003', 'G001', 0.6, 0.4),
(11, 'D003', 'G002', 0.9, 0.1),
(12, 'D003', 'G004', 0.7, 0.3),
(13, 'D003', 'G006', 0.9, 0.1),
(14, 'D003', 'G007', 0.8, 0.2),
(15, 'D004', 'G004', 0.7, 0.3),
(16, 'D004', 'G005', 0.8, 0.2),
(17, 'D004', 'G031', 0.9, 0.1),
(18, 'D004', 'G032', 0.7, 0.3),
(19, 'D005', 'G004', 0.8, 0.2),
(20, 'D005', 'G009', 0.9, 0.1),
(21, 'D005', 'G013', 0.8, 0.2),
(22, 'D005', 'G014', 0.8, 0.2),
(23, 'D005', 'G016', 0.9, 0.1),
(24, 'D005', 'G021', 0.7, 0.3),
(25, 'D005', 'G026', 0.7, 0.3),
(26, 'D005', 'G027', 0.9, 0.1),
(27, 'D005', 'G030', 0.9, 0.1),
(28, 'D006', 'G004', 0.7, 0.3),
(29, 'D006', 'G010', 0.9, 0.1),
(30, 'D006', 'G021', 0.7, 0.3),
(31, 'D006', 'G024', 0.8, 0.2),
(32, 'D006', 'G026', 0.7, 0.3),
(33, 'D006', 'G028', 0.8, 0.2),
(34, 'D007', 'G004', 0.7, 0.3),
(35, 'D007', 'G011', 0.9, 0.1),
(36, 'D007', 'G021', 0.7, 0.3),
(37, 'D007', 'G023', 0.8, 0.2),
(38, 'D007', 'G032', 0.8, 0.2),
(39, 'D007', 'G033', 0.8, 0.2),
(40, 'D008', 'G004', 0.7, 0.3),
(41, 'D008', 'G012', 0.8, 0.2),
(42, 'D008', 'G017', 0.7, 0.3),
(43, 'D008', 'G018', 0.8, 0.2),
(44, 'D008', 'G021', 0.9, 0.1),
(45, 'D009', 'G014', 0.8, 0.2),
(46, 'D009', 'G015', 0.9, 0.1),
(47, 'D009', 'G017', 0.6, 0.4),
(48, 'D009', 'G020', 0.9, 0.1),
(49, 'D009', 'G021', 0.8, 0.2),
(50, 'D009', 'G026', 0.8, 0.2),
(51, 'D010', 'G017', 0.7, 0.3),
(52, 'D010', 'G019', 0.9, 0.1),
(53, 'D011', 'G021', 0.7, 0.3),
(54, 'D011', 'G025', 0.9, 0.1),
(55, 'D012', 'G026', 0.8, 0.2),
(56, 'D012', 'G029', 0.9, 0.1),
(57, 'D012', 'G032', 0.6, 0.4),
(58, 'D012', 'G034', 0.8, 0.2),
(59, 'D012', 'G035', 0.7, 0.3),
(60, 'D012', 'G036', 0.8, 0.2),
(61, 'D013', 'G035', 0.8, 0.2),
(62, 'D005', 'G018', 0.7, 0.3),
(63, 'D005', 'G011', 0.8, 0.2),
(66, 'D005', 'G033', 0.8, 0.2),
(67, 'D006', 'G034', 0.8, 0.2),
(68, 'D004', 'G027', 0.8, 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosis`
--

CREATE TABLE `diagnosis` (
  `kd_diagnosis` char(4) NOT NULL,
  `nama_diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `diagnosis`
--

INSERT INTO `diagnosis` (`kd_diagnosis`, `nama_diagnosis`) VALUES
('D001', 'Masalah pada Power Supply'),
('D002', 'Masalah pada Motherboard'),
('D003', 'Masalah Umum'),
('D004', 'Masalah pada Monitor'),
('D005', 'Masalah pada Harddisk'),
('D006', 'Masalah pada RAM'),
('D007', 'Masalah pada VGA Card'),
('D008', 'Masalah pada Prosesor'),
('D009', 'Masalah pada Sistem Operasi'),
('D010', 'Masalah pada Hardware Lain'),
('D011', 'Masalah pada LAN'),
('D012', 'Masalah pada Driver'),
('D013', 'Masalah pada Port USB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` char(4) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  `is_first` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nama_gejala`, `is_first`) VALUES
('G001', 'Komputer mati total', 1),
('G002', 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 0),
('G003', 'Tegangan listrik tidak stabil', 0),
('G004', 'Komputer hidup tapi tidak booting', 1),
('G005', 'Lampu power monitor mati meski telah ditekan tombol powernya', 0),
('G006', 'koneksi kabel power monitor dan kabel VGA belum terpasang dengan baik', 0),
('G007', 'Pin kabel konektor VGA bengkok atau patah', 0),
('G008', 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 0),
('G009', 'Terdapat pesan DISK BOOT FAILURE atau semacamnya', 0),
('G010', 'Terdengar suara beep berkali-kali dan panjang', 0),
('G011', 'Terdengar suara beep 1 atau 2 kali', 0),
('G012', 'Prosesor overheat', 0),
('G013', 'Harddisk atau Windows Corrupt', 0),
('G014', 'Komputer booting tetapi selalu masuk safe mode', 1),
('G015', 'Sistem Operasi Bermasalah', 0),
('G016', 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 0),
('G017', 'Komputer mati total tiba-tiba setelah menyala', 1),
('G018', 'CPU terlalu panas/overheat', 0),
('G019', 'Terdapat masalah pada Hardware lain', 0),
('G020', 'Komputer menyala tapi hanya masuk ke setting BIOS', 0),
('G021', 'Komputer mengalami macet (hang)', 1),
('G022', 'Power Supply kekurangan daya', 0),
('G023', 'heatsink pada VGA Card mengalami panas yang tidak biasa', 0),
('G024', '2 RAM terpasang dan hanya 1 terbaca atau RAM yang digunakan tidak identik', 0),
('G025', 'Terasa berat ketika mengkases data dari komputer lain', 0),
('G026', 'Komputer mengalami blue screen windows', 1),
('G027', 'Munculnya blue screen of death dengan pesan pada bagian storage', 0),
('G028', 'Terdapat sektor RAM yang mengalami cacat fisik', 0),
('G029', 'Terdapat Driver yang bermasalah', 0),
('G030', 'Terdengar suara aneh dari Harddisk', 1),
('G031', 'Monitor berkedip saat digunakan', 1),
('G032', 'Terdapat garis-garis pada monitor', 1),
('G033', 'Pin-pin pada VGA Card kotor', 0),
('G034', 'Driver VGA belum diperbarui', 0),
('G035', 'Semua port USB tidak berfungsi', 1),
('G036', 'Driver hardware yang terpasang ke port USB belum diperbarui / terpasang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `tanggal`) VALUES
(1, '2021-08-08'),
(2, '2021-08-08'),
(3, '2021-08-08'),
(4, '2021-08-08'),
(5, '2021-08-08'),
(6, '2021-08-08'),
(7, '2021-08-08'),
(8, '2021-08-08'),
(9, '2021-08-08'),
(10, '2021-08-08'),
(11, '2021-08-08'),
(12, '2021-08-08'),
(13, '2021-08-08'),
(14, '2021-08-08'),
(15, '2021-08-08'),
(16, '2021-08-08'),
(17, '2021-08-08'),
(18, '2021-08-08'),
(19, '2021-08-08'),
(20, '2021-08-08'),
(21, '2021-08-08'),
(22, '2021-08-08'),
(23, '2021-08-08'),
(24, '2021-08-08'),
(25, '2021-08-08'),
(26, '2021-08-08'),
(27, '2021-08-08'),
(28, '2021-08-08'),
(29, '2021-08-08'),
(30, '2021-08-08'),
(31, '2021-08-08'),
(32, '2021-08-08'),
(33, '2021-08-08'),
(34, '2021-08-08'),
(35, '2021-08-08'),
(36, '2021-08-08'),
(37, '2021-08-08'),
(38, '2021-08-08'),
(39, '2021-08-08'),
(40, '2021-08-08'),
(41, '2021-08-08'),
(42, '2021-08-08'),
(43, '2021-08-08'),
(44, '2021-08-08'),
(45, '2021-08-08'),
(46, '2021-08-08'),
(47, '2021-08-08'),
(48, '2021-08-08'),
(49, '2021-08-08'),
(50, '2021-08-08'),
(51, '2021-08-08'),
(52, '2021-08-08'),
(53, '2021-08-08'),
(54, '2021-08-08'),
(55, '2021-08-08'),
(56, '2021-08-08'),
(57, '2021-08-08'),
(58, '2021-08-09'),
(59, '2021-08-09'),
(60, '2021-08-09'),
(61, '2021-08-09'),
(62, '2021-08-09'),
(63, '2021-08-09'),
(64, '2021-08-09'),
(65, '2021-08-09'),
(66, '2021-08-09'),
(67, '2021-08-09'),
(68, '2021-08-09'),
(69, '2021-08-09'),
(70, '2021-08-09'),
(71, '2021-08-09'),
(72, '2021-08-09'),
(73, '2021-08-09'),
(74, '2021-08-09'),
(75, '2021-08-09'),
(76, '2021-08-09'),
(77, '2021-08-09'),
(78, '2021-08-09'),
(79, '2021-08-09'),
(80, '2021-08-09'),
(81, '2021-08-09'),
(82, '2021-08-09'),
(83, '2021-08-09'),
(84, '2021-08-09'),
(85, '2021-08-09'),
(86, '2021-08-09'),
(87, '2021-08-09'),
(88, '2021-08-09'),
(89, '2021-08-09'),
(90, '2021-08-09'),
(91, '2021-08-09'),
(92, '2021-08-09'),
(93, '2021-08-09'),
(94, '2021-08-09'),
(95, '2021-08-09'),
(96, '2021-08-09'),
(97, '2021-08-09'),
(98, '2021-08-09'),
(99, '2021-08-09'),
(100, '2021-08-09'),
(101, '2021-08-09'),
(102, '2021-08-09'),
(103, '2021-08-09'),
(104, '2021-08-09'),
(105, '2021-08-09'),
(106, '2021-08-09'),
(107, '2021-08-09'),
(108, '2021-08-09'),
(109, '2021-08-09'),
(110, '2021-08-09'),
(111, '2021-08-09'),
(112, '2021-08-09'),
(113, '2021-08-09'),
(114, '2021-08-09'),
(115, '2021-08-09'),
(116, '2021-08-09'),
(117, '2021-08-09'),
(118, '2021-08-09'),
(119, '2021-08-09'),
(120, '2021-08-09'),
(121, '2021-08-09'),
(122, '2021-08-09'),
(123, '2021-08-09'),
(124, '2021-08-09'),
(125, '2021-08-09'),
(126, '2021-08-09'),
(127, '2021-08-09'),
(128, '2021-08-09'),
(129, '2021-08-09'),
(130, '2021-08-09'),
(131, '2021-08-09'),
(132, '2021-08-09'),
(133, '2021-08-09'),
(134, '2021-08-09'),
(135, '2021-08-09'),
(136, '2021-08-09'),
(137, '2021-08-09'),
(138, '2021-08-09'),
(139, '2021-08-09'),
(140, '2021-08-09'),
(141, '2021-08-09'),
(142, '2021-08-09'),
(143, '2021-08-09'),
(144, '2021-08-09'),
(145, '2021-08-09'),
(146, '2021-08-09'),
(147, '2021-08-09'),
(148, '2021-08-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `id_hasil` int(11) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `kd_diagnosis` char(4) NOT NULL,
  `solusi` text NOT NULL,
  `nilai_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id`, `id_hasil`, `gejala`, `diagnosis`, `kd_diagnosis`, `solusi`, `nilai_cf`) VALUES
(1, 1, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(2, 1, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(3, 2, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(4, 3, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(5, 4, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(6, 4, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(7, 4, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(8, 5, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(9, 5, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(10, 5, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(11, 6, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(12, 6, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(13, 6, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(14, 7, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(15, 8, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(16, 8, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(17, 9, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.8),
(18, 9, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.8),
(19, 10, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(20, 10, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(21, 11, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(22, 11, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(23, 11, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(24, 11, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(25, 11, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(26, 11, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(27, 12, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(28, 12, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(29, 12, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(30, 12, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(31, 12, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(32, 12, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(33, 13, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(34, 13, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(35, 13, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(36, 13, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(37, 13, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(38, 13, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(39, 14, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(40, 14, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(41, 14, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(42, 14, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(43, 14, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(44, 14, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(45, 15, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(46, 16, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(47, 16, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(48, 16, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(49, 16, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(50, 16, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(51, 16, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(52, 17, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(53, 17, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(54, 17, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(55, 17, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(56, 17, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(57, 17, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(58, 18, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(59, 18, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(60, 18, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(61, 18, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(62, 18, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(63, 18, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(64, 19, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(65, 19, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(66, 19, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(67, 19, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(68, 19, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(69, 19, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(70, 19, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(71, 19, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(72, 19, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(73, 19, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(74, 19, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(75, 19, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(76, 20, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(77, 20, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(78, 20, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(79, 20, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(80, 20, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(81, 20, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(82, 21, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(83, 21, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(84, 21, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(85, 21, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(86, 21, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(87, 21, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(88, 22, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(89, 22, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(90, 22, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(91, 22, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(92, 22, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(93, 22, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(94, 23, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(95, 23, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(96, 23, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(97, 23, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(98, 23, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(99, 23, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(100, 24, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(101, 24, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(102, 24, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(103, 24, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(104, 24, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(105, 24, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(106, 25, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(107, 25, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(108, 25, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(109, 25, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(110, 25, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(111, 25, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(112, 26, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(113, 26, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(114, 26, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(115, 26, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(116, 26, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(117, 26, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(118, 26, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(119, 26, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(120, 26, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(121, 26, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(122, 26, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(123, 26, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(124, 27, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(125, 27, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(126, 27, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(127, 27, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(128, 27, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(129, 27, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(130, 28, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(131, 28, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(132, 29, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(133, 29, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(134, 30, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(135, 31, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(136, 32, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(137, 33, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(138, 34, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(139, 34, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(140, 34, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(141, 34, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(142, 34, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(143, 34, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(144, 35, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(145, 36, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(146, 37, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(147, 38, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(148, 39, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(149, 40, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(150, 40, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(151, 40, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(152, 41, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(153, 41, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(154, 41, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(155, 41, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(156, 42, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97);
INSERT INTO `riwayat` (`id`, `id_hasil`, `gejala`, `diagnosis`, `kd_diagnosis`, `solusi`, `nilai_cf`) VALUES
(157, 42, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(158, 42, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(159, 42, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(160, 43, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(161, 43, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(162, 43, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(163, 44, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(164, 44, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(165, 44, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(166, 45, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(167, 45, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(168, 45, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(169, 46, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(170, 46, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(171, 46, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(172, 47, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(173, 47, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(174, 47, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(175, 48, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(176, 48, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(177, 48, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(178, 48, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(179, 49, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(180, 49, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(181, 49, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(182, 49, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(183, 50, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(184, 50, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(185, 50, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(186, 50, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(187, 51, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(188, 51, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(189, 51, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(190, 52, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(191, 52, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(192, 52, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(193, 53, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(194, 53, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(195, 53, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(196, 54, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(197, 54, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(198, 54, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(199, 54, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(200, 55, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(201, 55, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(202, 55, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(203, 55, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(204, 56, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(205, 56, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(206, 56, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(207, 57, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(208, 57, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(209, 57, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(210, 57, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(211, 60, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(212, 60, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(213, 60, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(214, 61, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(215, 61, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(216, 61, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(217, 62, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(218, 62, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(219, 62, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(220, 63, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(221, 63, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(222, 63, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(223, 64, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(224, 64, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(225, 64, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(226, 65, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(227, 65, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(228, 65, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(229, 66, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(230, 66, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(231, 66, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(232, 66, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(233, 67, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(234, 67, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(235, 67, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(236, 67, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(237, 68, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(238, 69, 'Komputer mati total', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(239, 70, 'Semua port USB tidak berfungsi', 'Masalah pada Driver', 'D012', 'Lakukan scan hardware menggunakan device manager : Klik Start - klik Run - Ketik \"devmgmt.msc\" dan kemudian klik OK. Device Manager akan terbuka. Pada Device Manager klik pada Computer. Klik pada Scan for hardware changes. Check USB device apakah sudah berfungsi sekarang. Langkah kedua bisa dengan melakukan restart komputer. Langkah kedua Disable and re-enable the USB controller melalui device manager dan restart komputer (otomatis komputer akan melakukan scan hardware dan reinstall semua USB Controller.', 0.76),
(240, 71, 'Semua port USB tidak berfungsi', 'Masalah pada Port USB', 'D013', 'CPU perlu dibawa ke tempat service untuk ditindaklanjuti lebih jauh.', 0.6),
(241, 72, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(242, 72, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(243, 72, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.8),
(244, 73, 'Komputer hidup tapi tidak booting', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.95),
(245, 73, 'koneksi kabel power monitor dan kabel VGA belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.', 0.88),
(246, 73, 'Pin kabel konektor VGA bengkok atau patah', 'Masalah Umum', 'D003', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.', 0.76),
(247, 74, 'Komputer hidup tapi tidak booting', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.97),
(248, 74, 'Terdapat pesan DISK BOOT FAILURE atau semacamnya', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.92),
(249, 74, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows', 0.84),
(250, 75, 'Komputer mati total', 'Masalah pada Motherboard', 'D002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.', 0.8),
(251, 76, 'Komputer mati total', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(252, 77, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(253, 78, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(254, 79, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(255, 79, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(256, 79, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(257, 80, 'Komputer mengalami macet (hang)', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(258, 80, 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.88),
(259, 80, 'CPU terlalu panas/overheat', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(260, 81, 'Komputer mengalami macet (hang)', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.93),
(261, 81, 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(262, 81, 'CPU terlalu panas/overheat', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(263, 82, 'Komputer mengalami macet (hang)', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.93),
(264, 82, 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(265, 82, 'CPU terlalu panas/overheat', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(266, 83, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.6),
(267, 84, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(268, 85, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.6),
(269, 86, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(270, 87, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.', 0.6),
(271, 88, 'Komputer mengalami macet (hang)', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.88),
(272, 89, 'Komputer mengalami macet (hang)', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(273, 90, 'Komputer mengalami macet (hang)', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(274, 90, 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.88),
(275, 90, 'CPU terlalu panas/overheat', 'Masalah pada LAN', 'D011', 'Untuk memastikan komputer hang karena koneksi jaringan (LAN) lepaskan dulu kabel jaringan pada komputer kemudian jalankan komputer seperti biasa. Apabila semua berjalan secara normal dapat dipastikan komputer hang karena koneksi jaringan. Beberapa cara yang bisa dilakukan adalah pastikan konektor RJ45 terpasang dengan benar bila perlu lakukan crimping ulang. Gunakan perintah ping untuk memeriksa koneksi jaringan (contoh perintah: ping -l 200 192.168.0.1). Lakukan reset pada hub (switch) LAN. Caranya bisa dengan mencabut kabel power Hub/Switch tersebut lalu tunggu beberapa saat kemudian masukan kembali. Cara lain yang bisa dilakukan adalah dengan memindahkan kabel jaringan dari port yang satu ke port yang lain (biasanya ada beberapa port dalam hub yang menjadi rusak karena masalah-masalah tertentu).', 0.88),
(276, 90, 'Power Supply kekurangan daya', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.76),
(277, 90, 'heatsink pada VGA Card mengalami panas yang tidak biasa', 'Masalah pada RAM', 'D006', 'Periksalah kembali RAM yang terpasang dengan kapasitas memori yang terbaca oleh komputer sebab ada kalanya ketika memasang beberapa keping RAM tetapi yang terbaca hanya satu keping saja. Beberapa RAM yang digunakan tetapi tidak identik (sama tipe dan kapasitasnya) bukannya malah mempercepat komputer tetapi malah memperlambat dan membuat hang komputer.', 0.76),
(278, 90, '2 RAM terpasang dan hanya 1 terbaca atau RAM yang digunakan tidak identik', 'Masalah pada Power Supply', 'D001', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.68),
(279, 91, 'Komputer hidup tapi tidak booting', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.95),
(280, 91, 'koneksi kabel power monitor dan kabel VGA belum terpasang dengan baik', 'Masalah Umum', 'D003', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.', 0.88),
(281, 91, 'Pin kabel konektor VGA bengkok atau patah', 'Masalah Umum', 'D003', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.', 0.76),
(282, 92, 'Komputer hidup tapi tidak booting', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.97),
(283, 92, 'Terdapat pesan DISK BOOT FAILURE atau semacamnya', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.92),
(284, 92, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows', 0.84),
(285, 93, 'Komputer hidup tapi tidak booting', 'Masalah pada Motherboard', 'D002', 'Jika kipas Processor / VGA berputar tetapi komputer masih belum menyala maka kemungkinan ada yang tidak beres dengan BIOS motherboard atau motherboard memang sudah rusak. Coba lakukan RESET BIOS dengan cara mengganti baterai CMOS lalu tunggu selama 30 menit dan nyalakan komputer. Jika masih belum bisa maka motherboard perlu diganti.', 0.8),
(286, 94, 'Komputer hidup tapi tidak booting', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.97),
(287, 94, 'Lampu power monitor mati meski telah ditekan tombol powernya', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.95),
(288, 94, 'koneksi kabel power monitor dan kabel VGA belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Dengan menggunakan tester bila ternyata tegangannya kurang dari 12 atau 5 volt (tergantung kapasitas Power Supply) berarti power supply harus di ganti.', 0.92),
(289, 94, 'Pin kabel konektor VGA bengkok atau patah', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.92),
(290, 94, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah Umum', 'D003', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.', 0.88),
(291, 94, 'Terdapat pesan DISK BOOT FAILURE atau semacamnya', 'Masalah pada RAM', 'D006', 'Buka cover CPU lalu cabut RAM. Coba bersihkan bagian kaki RAM (pin) dengan penghapus dan pasang RAM kembali pada tempatnya dan nyalakan kembali Komputer. jika belum bisa pindahkan RAM di slot lain. jika masih juga maka RAM perlu diganti atau cek di komputer lain', 0.88),
(292, 94, 'Terdengar suara beep berkali-kali dan panjang', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.88);
INSERT INTO `riwayat` (`id`, `id_hasil`, `gejala`, `diagnosis`, `kd_diagnosis`, `solusi`, `nilai_cf`) VALUES
(293, 94, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows', 0.84),
(294, 94, 'Prosesor overheat', 'Masalah pada Monitor', 'D004', 'Terdapat kerusakan pada monitor komputer. Monitor dapat dibawa ke tempat servis monitor untuk ditangani ahli monitor.', 0.76),
(295, 94, 'Harddisk atau Windows Corrupt', 'Masalah Umum', 'D003', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.', 0.76),
(296, 95, 'Komputer hidup tapi tidak booting', 'Masalah pada Monitor', 'D004', 'Terdapat kerusakan pada monitor komputer. Monitor dapat dibawa ke tempat servis monitor untuk ditangani ahli monitor.', 0.76),
(297, 96, 'Komputer hidup tapi tidak booting', 'Masalah Umum', 'D003', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.', 0.88),
(298, 97, 'Komputer hidup tapi tidak booting', 'Masalah Umum', 'D003', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.', 0.76),
(299, 98, 'Komputer hidup tapi tidak booting', 'Masalah pada Power Supply', 'D001', 'Dengan menggunakan tester bila ternyata tegangannya kurang dari 12 atau 5 volt (tergantung kapasitas Power Supply) berarti power supply harus di ganti.', 0.92),
(300, 99, 'Komputer hidup tapi tidak booting', 'Masalah pada Harddisk', 'D005', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.', 0.92),
(301, 100, 'Komputer hidup tapi tidak booting', 'Masalah pada RAM', 'D006', 'Buka cover CPU lalu cabut RAM. Coba bersihkan bagian kaki RAM (pin) dengan penghapus dan pasang RAM kembali pada tempatnya dan nyalakan kembali Komputer. jika belum bisa pindahkan RAM di slot lain. jika masih juga maka RAM perlu diganti atau cek di komputer lain', 0.88),
(302, 101, 'Komputer hidup tapi tidak booting', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.88),
(303, 102, 'Komputer hidup tapi tidak booting', 'Masalah pada Prosesor', 'D008', 'Cek kondisi Heatsink dan fan Processor. Apakah fan masih bisa berputar atau kotor atau bahkan ada kerusakan sehingga fan terlepas dari dudukannya. Bersihkan fan atau heatsink apabila kotor. Kalau komputer masih bisa masuk ke BIOS maka temperatur processor ini bisa dilihat pada bagian Hardware Monitor.', 0.76),
(304, 103, 'Komputer hidup tapi tidak booting', 'Masalah pada Harddisk', 'D005', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows', 0.84),
(305, 104, 'Komputer booting tetapi selalu masuk safe mode', 'Masalah pada Harddisk', 'D005', 'Harddisk perlu diganti yang baru.', 0.6),
(306, 105, 'Komputer booting tetapi selalu masuk safe mode', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.92),
(307, 106, 'Komputer booting tetapi selalu masuk safe mode', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.92),
(308, 107, 'Komputer booting tetapi selalu masuk safe mode', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.92),
(309, 107, 'Sistem Operasi Bermasalah', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.92),
(310, 108, 'Komputer mati total tiba-tiba setelah menyala', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.2),
(311, 109, 'Komputer mati total tiba-tiba setelah menyala', 'Masalah pada Hardware Lain', 'D010', 'Lakukan pengecekan terhadap seluruh hardware seperti RAM/VGA Card/Harddisk/dll karena hardware yang tidak kompatibel ataupun proses penginstallan hardware yang salah prosedur sehingga menyebabkan hardware menjadi malfungsi. Gunakanlah hardware yang kompatibel dan juga sesuai dengan spesifikasi umum dari komputer. Apabila mungkin selalu cek pemasangan soket-soket dari hardware agar tidak terjadi error pada saat komputer dijalankan dan mengalami gejala mati sendiri.', 0.88),
(312, 109, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.84),
(313, 109, 'CPU terlalu panas/overheat', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.76),
(314, 110, 'Komputer mengalami macet (hang)', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.6),
(315, 111, 'Komputer mengalami macet (hang)', 'Masalah pada Prosesor', 'D008', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.', 0.92),
(316, 111, 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 'Masalah pada Harddisk', 'D005', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.', 0.88),
(317, 111, 'CPU terlalu panas/overheat', 'Masalah pada LAN', 'D011', 'Untuk memastikan komputer hang karena koneksi jaringan (LAN) lepaskan dulu kabel jaringan pada komputer kemudian jalankan komputer seperti biasa. Apabila semua berjalan secara normal dapat dipastikan komputer hang karena koneksi jaringan. Beberapa cara yang bisa dilakukan adalah pastikan konektor RJ45 terpasang dengan benar bila perlu lakukan crimping ulang. Gunakan perintah ping untuk memeriksa koneksi jaringan (contoh perintah: ping -l 200 192.168.0.1). Lakukan reset pada hub (switch) LAN. Caranya bisa dengan mencabut kabel power Hub/Switch tersebut lalu tunggu beberapa saat kemudian masukan kembali. Cara lain yang bisa dilakukan adalah dengan memindahkan kabel jaringan dari port yang satu ke port yang lain (biasanya ada beberapa port dalam hub yang menjadi rusak karena masalah-masalah tertentu).', 0.88),
(318, 111, 'Power Supply kekurangan daya', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.76),
(319, 111, 'heatsink pada VGA Card mengalami panas yang tidak biasa', 'Masalah pada RAM', 'D006', 'Periksalah kembali RAM yang terpasang dengan kapasitas memori yang terbaca oleh komputer sebab ada kalanya ketika memasang beberapa keping RAM tetapi yang terbaca hanya satu keping saja. Beberapa RAM yang digunakan tetapi tidak identik (sama tipe dan kapasitasnya) bukannya malah mempercepat komputer tetapi malah memperlambat dan membuat hang komputer.', 0.76),
(320, 111, '2 RAM terpasang dan hanya 1 terbaca atau RAM yang digunakan tidak identik', 'Masalah pada Power Supply', 'D001', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.68),
(321, 112, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.8),
(322, 113, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(323, 113, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(324, 113, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.8),
(325, 114, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.97),
(326, 114, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(327, 114, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(328, 115, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.97),
(329, 115, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(330, 115, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(331, 116, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.97),
(332, 116, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(333, 116, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Harddisk perlu diganti yang baru.', 0.92),
(334, 117, 'Komputer mengalami blue screen windows', 'Masalah pada Sistem Operasi', 'D009', 'Lakukan install ulang windows atau repair windows', 0.6),
(335, 118, 'Komputer mengalami blue screen windows', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.88),
(336, 118, 'Munculnya blue screen of death dengan pesan pada bagian storage', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.88),
(337, 118, 'Pin-pin pada VGA Card kotor', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.4),
(338, 119, 'Komputer mengalami blue screen windows', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.95),
(339, 119, 'Munculnya blue screen of death dengan pesan pada bagian storage', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.88),
(340, 119, 'Pin-pin pada VGA Card kotor', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.76),
(341, 120, 'Komputer mengalami blue screen windows', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(342, 120, 'Terdapat sektor RAM yang mengalami cacat fisik', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(343, 120, 'Driver VGA belum diperbarui', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.4),
(344, 121, 'Komputer mengalami blue screen windows', 'Masalah pada Driver', 'D012', 'Apabila driver mengalami kerusakan maka tentunya komunikasi antara sistem operasi tidak akan bisa berjalan dengan lancar dan bahkan bisa mengakibatkan crash sistem yang cukup parah seperti Blue Screen Windows. Lakukan update atau pembaruan pada semua driver.', 0.97),
(345, 121, 'Terdapat Driver yang bermasalah', 'Masalah pada Driver', 'D012', 'Apabila driver mengalami kerusakan maka tentunya komunikasi antara sistem operasi tidak akan bisa berjalan dengan lancar dan bahkan bisa mengakibatkan crash sistem yang cukup parah seperti Blue Screen Windows. Lakukan update atau pembaruan pada semua driver.', 0.92),
(346, 121, 'Driver VGA belum diperbarui', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.4),
(347, 122, 'Komputer mengalami blue screen windows', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(348, 122, 'Terdapat sektor RAM yang mengalami cacat fisik', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(349, 122, 'Driver VGA belum diperbarui', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.4),
(350, 123, 'Komputer mengalami blue screen windows', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.9),
(351, 123, 'Terdapat sektor RAM yang mengalami cacat fisik', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(352, 123, 'Driver VGA belum diperbarui', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(353, 124, 'Komputer mengalami blue screen windows', 'Masalah pada Harddisk', 'D005', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.', 0.88),
(354, 125, 'Komputer mengalami blue screen windows', 'Masalah pada RAM', 'D006', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.', 0.76),
(355, 126, 'Komputer mengalami blue screen windows', 'Masalah pada Driver', 'D012', 'Apabila driver mengalami kerusakan maka tentunya komunikasi antara sistem operasi tidak akan bisa berjalan dengan lancar dan bahkan bisa mengakibatkan crash sistem yang cukup parah seperti Blue Screen Windows. Lakukan update atau pembaruan pada semua driver.', 0.92),
(356, 127, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.8),
(357, 128, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(358, 129, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.97),
(359, 129, 'Terdengar suara beep 1 atau 2 kali', 'Masalah pada Harddisk', 'D005', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data', 0.92),
(360, 129, 'Harddisk atau Windows Corrupt', 'Masalah pada Harddisk', 'D005', 'Harddisk perlu diganti yang baru.', 0.92),
(361, 130, 'Terdengar suara aneh dari Harddisk', 'Masalah pada Harddisk', 'D005', 'Harddisk perlu diganti yang baru.', 0.92),
(362, 131, 'Monitor berkedip saat digunakan', 'Masalah pada Monitor', 'D004', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service', 0.8),
(363, 132, 'Monitor berkedip saat digunakan', 'Masalah pada Monitor', 'D004', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service', 0.8),
(364, 133, 'Monitor berkedip saat digunakan', 'Masalah pada Monitor', 'D004', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service', 0.92),
(365, 134, 'Monitor berkedip saat digunakan', 'Masalah pada Monitor', 'D004', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service', 0.92),
(366, 135, 'Terdapat garis-garis pada monitor', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.84),
(367, 135, 'Pin-pin pada VGA Card kotor', 'Masalah pada Driver', 'D012', 'Monitor perlu dibawa ke tempat service atau diganti.', 0.68),
(368, 136, 'Monitor berkedip saat digunakan', 'Masalah pada Monitor', 'D004', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service', 0.8),
(369, 137, 'Terdapat garis-garis pada monitor', 'Masalah pada VGA Card', 'D007', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain', 0.84),
(370, 137, 'Pin-pin pada VGA Card kotor', 'Masalah pada Driver', 'D012', 'Monitor perlu dibawa ke tempat service atau diganti.', 0.68),
(371, 138, 'Terdapat garis-garis pada monitor', 'Masalah pada Monitor', 'D004', 'Monitor perlu dibawa ke tempat service atau diganti.', 0.4),
(372, 139, 'Semua port USB tidak berfungsi', 'Masalah pada Port USB', 'D013', 'CPU perlu dibawa ke tempat service untuk ditindaklanjuti lebih jauh.', 0.6),
(373, 140, 'Semua port USB tidak berfungsi', 'Masalah pada Driver', 'D012', 'Lakukan scan hardware menggunakan device manager : Klik Start - klik Run - Ketik \"devmgmt.msc\" dan kemudian klik OK. Device Manager akan terbuka. Pada Device Manager klik pada Computer. Klik pada Scan for hardware changes. Check USB device apakah sudah berfungsi sekarang. Langkah kedua bisa dengan melakukan restart komputer. Langkah kedua Disable and re-enable the USB controller melalui device manager dan restart komputer (otomatis komputer akan melakukan scan hardware dan reinstall semua USB Controller.', 0.76),
(374, 141, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(375, 141, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(376, 141, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(377, 142, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(378, 142, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(379, 142, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(380, 143, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(381, 143, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(382, 143, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(383, 144, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(384, 144, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(385, 144, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(386, 145, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(387, 145, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(388, 145, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(389, 146, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(390, 146, 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(391, 146, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92),
(392, 146, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(393, 147, 'Komputer mati total', 'Masalah Umum', 'D003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.84),
(394, 148, 'Komputer mati total', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.97),
(395, 148, 'Tegangan listrik tidak stabil', 'Masalah pada Power Supply', 'D001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.', 0.92),
(396, 148, 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 'Masalah pada Power Supply', 'D001', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.', 0.92);

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

CREATE TABLE `solusi` (
  `kd_solusi` char(4) NOT NULL,
  `nama_solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`kd_solusi`, `nama_solusi`) VALUES
('S001', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.'),
('S002', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.'),
('S003', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.'),
('S004', 'Terdapat kerusakan pada monitor komputer. Monitor dapat dibawa ke tempat servis monitor untuk ditangani ahli monitor.'),
('S005', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.'),
('S006', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.'),
('S007', 'Dengan menggunakan tester bila ternyata tegangannya kurang dari 12 atau 5 volt (tergantung kapasitas Power Supply) berarti power supply harus di ganti.'),
('S008', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.'),
('S009', 'Buka cover CPU lalu cabut RAM. Coba bersihkan bagian kaki RAM (pin) dengan penghapus dan pasang RAM kembali pada tempatnya dan nyalakan kembali Komputer. jika belum bisa pindahkan RAM di slot lain. jika masih juga maka RAM perlu diganti atau cek di komputer lain'),
('S010', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain'),
('S011', 'Cek kondisi Heatsink dan fan Processor. Apakah fan masih bisa berputar atau kotor atau bahkan ada kerusakan sehingga fan terlepas dari dudukannya. Bersihkan fan atau heatsink apabila kotor. Kalau komputer masih bisa masuk ke BIOS maka temperatur processor ini bisa dilihat pada bagian Hardware Monitor.'),
('S012', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows'),
('S013', 'Jika kipas Processor / VGA berputar tetapi komputer masih belum menyala maka kemungkinan ada yang tidak beres dengan BIOS motherboard atau motherboard memang sudah rusak. Coba lakukan RESET BIOS dengan cara mengganti baterai CMOS lalu tunggu selama 30 menit dan nyalakan komputer. Jika masih belum bisa maka motherboard perlu diganti.'),
('S014', 'Lakukan install ulang windows atau repair windows'),
('S015', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.'),
('S016', 'Harddisk perlu diganti yang baru.'),
('S017', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.'),
('S018', 'Lakukan pengecekan terhadap seluruh hardware seperti RAM/VGA Card/Harddisk/dll karena hardware yang tidak kompatibel ataupun proses penginstallan hardware yang salah prosedur sehingga menyebabkan hardware menjadi malfungsi. Gunakanlah hardware yang kompatibel dan juga sesuai dengan spesifikasi umum dari komputer. Apabila mungkin selalu cek pemasangan soket-soket dari hardware agar tidak terjadi error pada saat komputer dijalankan dan mengalami gejala mati sendiri.'),
('S019', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.'),
('S020', 'Cek daya yang ada pada Power Supply. Apabila daya-nya lebih kecil dari yang tertera pada Power Supply maka Power Supply harus diganti.'),
('S021', 'Periksalah kembali RAM yang terpasang dengan kapasitas memori yang terbaca oleh komputer sebab ada kalanya ketika memasang beberapa keping RAM tetapi yang terbaca hanya satu keping saja. Beberapa RAM yang digunakan tetapi tidak identik (sama tipe dan kapasitasnya) bukannya malah mempercepat komputer tetapi malah memperlambat dan membuat hang komputer.'),
('S022', 'Untuk memastikan komputer hang karena koneksi jaringan (LAN) lepaskan dulu kabel jaringan pada komputer kemudian jalankan komputer seperti biasa. Apabila semua berjalan secara normal dapat dipastikan komputer hang karena koneksi jaringan. Beberapa cara yang bisa dilakukan adalah pastikan konektor RJ45 terpasang dengan benar bila perlu lakukan crimping ulang. Gunakan perintah ping untuk memeriksa koneksi jaringan (contoh perintah: ping -l 200 192.168.0.1). Lakukan reset pada hub (switch) LAN. Caranya bisa dengan mencabut kabel power Hub/Switch tersebut lalu tunggu beberapa saat kemudian masukan kembali. Cara lain yang bisa dilakukan adalah dengan memindahkan kabel jaringan dari port yang satu ke port yang lain (biasanya ada beberapa port dalam hub yang menjadi rusak karena masalah-masalah tertentu).'),
('S023', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.'),
('S024', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.'),
('S025', 'Apabila driver mengalami kerusakan maka tentunya komunikasi antara sistem operasi tidak akan bisa berjalan dengan lancar dan bahkan bisa mengakibatkan crash sistem yang cukup parah seperti Blue Screen Windows. Lakukan update atau pembaruan pada semua driver.'),
('S026', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data'),
('S027', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service'),
('S028', 'Lakukan pembaruan driver untuk VGA. Jika belum bisa bisa dengan menggunakan software bantuan seperti Pixel Repair. '),
('S029', 'Monitor perlu dibawa ke tempat service atau diganti.'),
('S030', 'Lakukan scan hardware menggunakan device manager : Klik Start - klik Run - Ketik \"devmgmt.msc\" dan kemudian klik OK. Device Manager akan terbuka. Pada Device Manager klik pada Computer. Klik pada Scan for hardware changes. Check USB device apakah sudah berfungsi sekarang. Langkah kedua bisa dengan melakukan restart komputer. Langkah kedua Disable and re-enable the USB controller melalui device manager dan restart komputer (otomatis komputer akan melakukan scan hardware dan reinstall semua USB Controller.'),
('S031', 'CPU perlu dibawa ke tempat service untuk ditindaklanjuti lebih jauh.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$clCNaxRn3X9CMNO2MMr2euwmgCbulSpN..wn3Fb1m1RC0FhWkBpEm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`kd_aturan`),
  ADD KEY `kd_gejala1` (`kd_gejala1`),
  ADD KEY `kd_gejala2` (`kd_gejala2`),
  ADD KEY `kd_solusi` (`kd_solusi`),
  ADD KEY `kd_diagnosis` (`kd_diagnosis`),
  ADD KEY `kd_gejala3` (`kd_gejala3`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kd_basis_pengetahuan`),
  ADD KEY `kd_diagnosis` (`kd_diagnosis`),
  ADD KEY `kd_gejala` (`kd_gejala`);

--
-- Indeks untuk tabel `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`kd_diagnosis`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hasil` (`id_hasil`);

--
-- Indeks untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`kd_solusi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `kd_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kd_basis_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`kd_gejala1`) REFERENCES `gejala` (`kd_gejala`),
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`kd_gejala2`) REFERENCES `gejala` (`kd_gejala`),
  ADD CONSTRAINT `aturan_ibfk_3` FOREIGN KEY (`kd_solusi`) REFERENCES `solusi` (`kd_solusi`),
  ADD CONSTRAINT `aturan_ibfk_4` FOREIGN KEY (`kd_diagnosis`) REFERENCES `diagnosis` (`kd_diagnosis`),
  ADD CONSTRAINT `aturan_ibfk_5` FOREIGN KEY (`kd_gejala3`) REFERENCES `gejala` (`kd_gejala`);

--
-- Ketidakleluasaan untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD CONSTRAINT `basis_pengetahuan_ibfk_1` FOREIGN KEY (`kd_diagnosis`) REFERENCES `diagnosis` (`kd_diagnosis`),
  ADD CONSTRAINT `basis_pengetahuan_ibfk_2` FOREIGN KEY (`kd_gejala`) REFERENCES `gejala` (`kd_gejala`);

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_hasil`) REFERENCES `hasil` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
