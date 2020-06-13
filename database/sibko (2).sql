-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2020 pada 13.47
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(15) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `nama_lengkap`, `username`, `email`, `password`, `status`, `foto`, `level`) VALUES
(1, 'Ahmad Fatoni', 'admin', 'achmad.fatoni33@gmail.com', '0ae02c00d2b1196589a5be37f718fbeec0c6f07968f90f41dbc2b167fdd919f57e9616c08130157ed4a22f7f7cae387276d456d01a98310f1b1d5f00999d5cb0', 'Aktif', 'admin.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(150) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(150) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `link` varchar(200) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `sub_menu` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `warna` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `nama_menu`, `link`, `icon`, `sub_menu`, `level`, `warna`) VALUES
(1, 'Dashboard', 'Dashboard', 'ni ni-tv-2', 0, 1, 'text-warning'),
(3, 'Data Siswa', 'Master/Data_Siswa', 'ni ni-circle-08', 0, 1, 'text-primary'),
(4, 'Data Jurusan', 'Master/Data_Jurusan', 'ni ni-send', 0, 1, 'text-dark'),
(5, 'Data Guru', 'Master/Data_Guru', 'ni ni-satisfied', 0, 1, 'text-info'),
(6, 'Data Konseling', 'Master/Data_Konseling', 'ni ni-key-25', 0, 1, 'text-danger'),
(7, 'Data Orang Tua', 'Master/Data_Ortu', 'ni ni-circle-08', 0, 1, 'text-success');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ortu`
--

CREATE TABLE `ortu` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(15) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `foto` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ortu`
--

INSERT INTO `ortu` (`id`, `username`, `email`, `password`, `nama_lengkap`, `alamat`, `hp`, `pekerjaan`, `pendidikan`, `agama`, `jenis_kelamin`, `foto`, `status`, `level`, `created_at`, `created_by`) VALUES
(1, 'orangtua', 'orangua@gmail.com', '75f6f5649f707e10f29bbd1122f124a5f8c4698785411d32eb0ceffcc344983ee8229b7fce2e29a40b60889906b68d86f14994f693928d20eb683f59c26f0e95', 'Orang Tua', 'jl. raya cilegon km. 03', '089676490971', 'PNS', 'SMK', 'Islam', 'Laki-Laki', '', 'Aktif', 2, NULL, 0),
(2, 'darto', 'achmasdasd@gmail.com', '002fe9feaf4a97a448c7c0ab4d4daf566e4d3816e6da301004aaadf957b21bfff2b562e305c453e32046b25506b84589ae70ad70c2c5b02574891f7370ba8115', 'Sudarto', '', '089676490971', '', '', '', 'Laki-Laki', '', '', 0, '0000-00-00 00:00:00', 1),
(3, 'darto', 'achmasdasd@gmail.com', '002fe9feaf4a97a448c7c0ab4d4daf566e4d3816e6da301004aaadf957b21bfff2b562e305c453e32046b25506b84589ae70ad70c2c5b02574891f7370ba8115', 'Sudarto', '', '089676490971', '', '', '', 'Laki-Laki', '', '', 0, '0000-00-00 00:00:00', 1),
(4, 'darto', 'achmasdasd@gmail.com', '002fe9feaf4a97a448c7c0ab4d4daf566e4d3816e6da301004aaadf957b21bfff2b562e305c453e32046b25506b84589ae70ad70c2c5b02574891f7370ba8115', 'Sudarto', '', '089676490971', '', '', '', 'Laki-Laki', '', '', 0, '0000-00-00 00:00:00', 1),
(5, 'aasd', 'sdasd@gma', '76e07b604378346057db6e271262612f1331b8dade8535610bc5c501c57f4db0dc80823af5ebb3c0a56539a0caadd6db837e82c08ca4b30e8b5bddcde272108b', 'Maem', '', '018239', '', '', '', 'Perempuan', '', '', 0, '0000-00-00 00:00:00', 1),
(6, 'asda', 'zsd@gajsd', 'e15435f75bbc63f3e7c54e77fcbac51cd769fb224ea6d74dea69b1ac8ff2415fcee16330a29935cfb29160ebbee1a06eee92f6f101d769679c2adfc74cc1c030', 'ajds', '', '081293123', '', '', '', 'Laki-Laki', '', '', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` int(10) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `id_ortu` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama_lengkap`, `email`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `anak_ke`, `alamat`, `hp`, `id_ortu`, `id_kelas`, `foto`, `created_at`, `created_by`) VALUES
(4, 110116101, 'Ahmad Fatoni', '', 'Serang', '1997-08-20', 'Laki-Laki', 'Islam', 2, 'Jlska', '', 1, NULL, '110116101.png', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `nama_akses` varchar(150) NOT NULL,
  `level` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id`, `nama_akses`, `level`, `link`) VALUES
(1, 'Administrator', 1, 'admin'),
(2, 'Orang Tua', 2, 'ortu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;