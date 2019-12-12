-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2019 at 03:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skpapps`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_kegiatan`
--

CREATE TABLE `anggota_kegiatan` (
  `id_anggota_kegiatan` int(10) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `id_kegiatan` int(10) NOT NULL,
  `keaktifan` int(1) NOT NULL,
  `id_prestasi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_kegiatan`
--

INSERT INTO `anggota_kegiatan` (`id_anggota_kegiatan`, `nim`, `id_kegiatan`, `keaktifan`, `id_prestasi`) VALUES
(16, '165150201111230', 21, 1, 152),
(70, '165150201111230', 22, 1, 2),
(71, '165150201111231', 22, 1, 2),
(72, '195020100111001', 22, 1, 2),
(83, '165150201111230', 23, 1, 2),
(84, '195020100111001', 23, 1, 5),
(89, '165150201111230', 25, 0, 1),
(90, '195020100111001', 25, 0, 1),
(113, '165150201111230', 33, 0, 17),
(114, '165150201111230', 34, 1, 44),
(115, '165150201111230', 35, 1, 152),
(118, '165150201111230', 36, 1, 44),
(119, '195020100111001', 36, 1, 44),
(121, '165150201111230', 37, 0, 42);

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` int(5) NOT NULL,
  `jenis_beasiswa` varchar(50) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beasiswa`
--

INSERT INTO `beasiswa` (`id`, `jenis_beasiswa`, `nama_instansi`) VALUES
(1, 'PPA', 'Kemnristekdikti');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_kegiatan`
--

CREATE TABLE `bidang_kegiatan` (
  `id_bidang` int(10) NOT NULL,
  `nama_bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang_kegiatan`
--

INSERT INTO `bidang_kegiatan` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Wajib'),
(2, 'Organisasi dan Kepemimpinan'),
(3, 'Penalaran dan Keilmuan'),
(4, 'Minat dan Bakat'),
(5, 'Kepedulian Sosial dan Kemasyarakatan'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_rancangan_kegiatan`
--

CREATE TABLE `daftar_rancangan_kegiatan` (
  `id_daftar_rancangan` int(11) NOT NULL,
  `nama_proker` varchar(500) NOT NULL,
  `tanggal_mulai_pelaksanaan` date NOT NULL,
  `tanggal_selesai_pelaksanaan` date NOT NULL,
  `anggaran_kegiatan` int(11) NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `status_rancangan` int(1) NOT NULL,
  `tahun_kegiatan` int(11) NOT NULL,
  `catatan_revisi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_rancangan_kegiatan`
--

INSERT INTO `daftar_rancangan_kegiatan` (`id_daftar_rancangan`, `nama_proker`, `tanggal_mulai_pelaksanaan`, `tanggal_selesai_pelaksanaan`, `anggaran_kegiatan`, `id_lembaga`, `status_rancangan`, `tahun_kegiatan`, `catatan_revisi`) VALUES
(8, 'hahah', '2019-11-24', '2019-11-24', 2000000, 100, 1, 2019, ''),
(10, 'kegiatan 3', '2019-11-29', '2019-11-30', 5000000, 100, 4, 2019, ''),
(18, 'Rapat Anggota', '2020-01-08', '2020-01-08', 250000, 100, 1, 2020, ''),
(20, 'Diklat Anggota', '2020-01-31', '2020-02-01', 250000, 100, 1, 2020, ''),
(21, 'Rapat Koordinasi', '2020-01-11', '2020-01-12', 300000, 109, 4, 2020, ''),
(22, 'Rapat Permantapan', '2020-01-04', '2020-01-05', 200000, 109, 4, 2020, ''),
(23, 'Diklat Kegiatan', '2021-02-01', '2019-12-02', 2500000, 100, 5, 2021, ''),
(24, 'Lomba Memanah', '2019-12-05', '2019-12-05', 5000000, 109, 4, 2021, '');

-- --------------------------------------------------------

--
-- Table structure for table `dana_pagu_lembaga`
--

CREATE TABLE `dana_pagu_lembaga` (
  `id_dana_pagu` int(10) NOT NULL,
  `id_lembaga` int(10) NOT NULL,
  `total_dana_pagu` int(10) NOT NULL,
  `tahun` date NOT NULL,
  `dana_pagu_terserap` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dasar_penilaian`
--

CREATE TABLE `dasar_penilaian` (
  `id_dasar_penilaian` int(10) NOT NULL,
  `nama_dasar_penilaian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dasar_penilaian`
--

INSERT INTO `dasar_penilaian` (`id_dasar_penilaian`, `nama_dasar_penilaian`) VALUES
(1, 'Sert/SK'),
(2, 'Sert/SK/SP'),
(3, 'Presensi/Kartu Pemilih'),
(4, 'Sert'),
(5, 'Sert/Patent'),
(6, 'Fotokopi Karya'),
(7, 'SK/SP'),
(8, 'Daftar Hadir'),
(9, 'SK/ST/Sert'),
(10, 'Sert/SK/ST'),
(11, 'Sert/Daftar Hadir'),
(12, 'Hasil Karya/ Sert'),
(13, 'Kontrak/SK'),
(14, 'SK/Sert/Dok.'),
(15, 'SK/Sert'),
(16, 'SK/Sert/Surat Keterangan'),
(17, 'ST/Sert/Surat Keterangan'),
(18, 'ST/Surat Keterangan'),
(19, 'Sert/Surat Keterangan'),
(22, 'Dasar Baru');

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_kegiatan`
--

CREATE TABLE `dokumentasi_kegiatan` (
  `id_dokumentasi_kegiatan` int(10) NOT NULL,
  `id_kegiatan` int(10) NOT NULL,
  `d_proposal_1` varchar(50) NOT NULL,
  `d_proposal_2` varchar(50) NOT NULL,
  `d_lpj_1` varchar(50) NOT NULL,
  `d_lpj_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumentasi_kegiatan`
--

INSERT INTO `dokumentasi_kegiatan` (`id_dokumentasi_kegiatan`, `id_kegiatan`, `d_proposal_1`, `d_proposal_2`, `d_lpj_1`, `d_lpj_2`) VALUES
(9, 21, 'checker.jpg', 'checker2.jpg', 'checker2.jpg', 'checker.jpg'),
(10, 22, 'd1.jpg', 'b1.jpg', 'd1.jpg', 'b1.jpg'),
(11, 23, 'b1.jpg', 'd1.jpg', 'd1.jpg', 'b1.jpg'),
(13, 25, 'gambar_1.jpg', 'gambar_2.jpg', '', ''),
(21, 33, 'gambar_1.jpg', 'gambar_2.jpg', '', ''),
(22, 34, 'gambar_1.jpg', 'gambar_2.jpg', 'gambar_1.jpg', 'gambar_2.jpg'),
(23, 35, 'gambar_1.jpg', 'gambar_2.jpg', 'gambar_1.jpg', 'gambar_2.jpg'),
(24, 36, 'gambar_1.jpg', 'gambar_2.jpg', 'gambar_1.jpg', 'gambar_2.jpg'),
(25, 37, 'gambar_1.jpg', 'gambar_2.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatan`
--

CREATE TABLE `jenis_kegiatan` (
  `id_jenis_kegiatan` int(10) NOT NULL,
  `jenis_kegiatan` varchar(500) NOT NULL,
  `id_bidang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kegiatan`
--

INSERT INTO `jenis_kegiatan` (`id_jenis_kegiatan`, `jenis_kegiatan`, `id_bidang`) VALUES
(1, 'PK2Maba', 1),
(2, 'Pengurus Organisasi Luar UB', 2),
(3, 'Pengurus Organisasi Universitas', 2),
(4, 'Pengurus Organisasi Fakultas', 2),
(5, 'Anggota Aktif Organisasi', 2),
(6, 'Peserta Pelatihan Kepemimpinan LKMM', 2),
(7, 'Peserta Pelatihan Kepemimpinan Lainnya', 2),
(8, 'Panitia Dalam Suatu Kegiatan Kemahasiswaan', 2),
(9, 'Berpartisipasi dalam Pemira', 2),
(10, 'Memperoleh prestasi dalam Lomba Karya Tulis Ilmiah/ Lingkungan Hidup/Kreativitas/ Inovatif/Pemikiran Kritis/Populer/ Enterpreneurship/ Business Plan / Olimpiade', 3),
(11, 'Peserta Kegiatan Lomba Ilmiah', 3),
(12, 'Mengikuti kegiatan/forum ilmiah (seminar, lokakarya, workshop, pameran)', 3),
(13, 'Menghasilkan temuan inovasi yang dipatenkan', 3),
(14, 'Menghasilkan karya ilmiah yang dipublikasikan dalam majalah ilmiah', 3),
(15, 'Menghasilkan karya populer yang diterbitkan di surat kabar/ majalah/media lainnya', 3),
(16, 'Menghasilkan karya yang didanai oleh pemerintah/ pihak lain', 3),
(17, 'Terlibat dalam kegiatan Penelitian dan pengabdian tenaga pendidik ', 3),
(18, 'Memberikan pelatihan/ bimbingan dalam penyusunan karya tulis', 3),
(19, 'Mengikuti kuliah tamu', 3),
(20, 'Mahasiswa Berprestasi', 3),
(21, 'Memperoleh prestasi dalam kegiatan Minat dan Bakat (Olah raga, Seni dan Kerohanian)', 4),
(22, 'Peserta kegiatan Minat dan Bakat (Olah raga,Seni dan Kerohanian)', 4),
(23, 'Menjadi Pelatih/ Pembimbing kegiatan Minat dan Bakat', 4),
(24, 'Melaksanakan Latihan Gabungan', 4),
(25, 'Menjadi mitra tanding pada kegiatan minat dan bakat', 4),
(26, 'Menghasilkan karya seni (konser, pameran seni, puisi, fotografi, teater,dll)', 4),
(27, 'Mendapatkan Pendanaan Usaha', 4),
(28, 'Mengikuti pelaksanaan Bakti Sosial', 5),
(29, 'Penanganan bencana', 5),
(30, 'Bantuan pembimbingan rutin (LBB, Pengajian,TPA, PAUD)', 5),
(31, 'Kegiatan Keagamaan', 5),
(32, 'Kegiatan lain individual-sosial dan kemasyarakatan', 5),
(33, 'Sebagai Asisten Mata Kuliah / Tutor', 6),
(34, 'Berpartisipasi dalam kegiatan Alumni', 6),
(35, 'Magang Kerja Lebih dari 1 Bulan ', 6),
(36, 'Terlibat dalam kegiatan Jurusan / Fakultas / Universitas', 6),
(37, 'Magang Penelitian', 6),
(38, 'Kegiatan ESQ', 6),
(39, 'Kegiatan Jatidiri', 6);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_validasi`
--

CREATE TABLE `jenis_validasi` (
  `id` int(11) NOT NULL,
  `nama_validasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_validasi`
--

INSERT INTO `jenis_validasi` (`id`, `nama_validasi`) VALUES
(1, 'Validasi Lembaga'),
(2, 'Validasi BEM'),
(3, 'Validasi Kemahasiswaan'),
(4, 'Validasi WD 3'),
(5, 'Validasi PSIK'),
(6, 'Validasi Keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` int(10) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
(1, 'Manajemen'),
(2, 'Ilmu Ekonomi'),
(3, 'Akuntansi');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(10) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `status_selesai_proposal` int(1) NOT NULL,
  `status_selesai_lpj` int(1) NOT NULL,
  `berita_proposal` varchar(200) NOT NULL,
  `berita_pelaporan` varchar(200) NOT NULL,
  `dana_kegiatan` double NOT NULL,
  `dana_lpj` double NOT NULL,
  `dana_proposal` double NOT NULL,
  `id_lembaga` int(10) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `lokasi_kegiatan` varchar(50) NOT NULL,
  `proposal_kegiatan` varchar(50) NOT NULL,
  `lpj_kegiatan` varchar(50) NOT NULL,
  `bukti_berita_proposal` varchar(50) NOT NULL,
  `bukti_berita_lpj` varchar(50) NOT NULL,
  `periode` int(11) NOT NULL,
  `ceklist_rekapitulasi` int(1) NOT NULL,
  `acc_rancangan` int(1) NOT NULL,
  `deskripsi_kegiatan` varchar(500) NOT NULL,
  `tgl_pengajuan_proposal` date NOT NULL,
  `tgl_pengajuan_lpj` date NOT NULL,
  `id_penanggung_jawab` varchar(50) NOT NULL,
  `nama_penanggung_jawab` varchar(50) NOT NULL,
  `id_tingkatan` int(10) NOT NULL,
  `no_whatsup` varchar(50) NOT NULL,
  `waktu_pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `status_selesai_proposal`, `status_selesai_lpj`, `berita_proposal`, `berita_pelaporan`, `dana_kegiatan`, `dana_lpj`, `dana_proposal`, `id_lembaga`, `tanggal_kegiatan`, `lokasi_kegiatan`, `proposal_kegiatan`, `lpj_kegiatan`, `bukti_berita_proposal`, `bukti_berita_lpj`, `periode`, `ceklist_rekapitulasi`, `acc_rancangan`, `deskripsi_kegiatan`, `tgl_pengajuan_proposal`, `tgl_pengajuan_lpj`, `id_penanggung_jawab`, `nama_penanggung_jawab`, `id_tingkatan`, `no_whatsup`, `waktu_pengajuan`) VALUES
(21, 'Lomba Indonesian Idol', 3, 3, 'cek2.pdf', '1574145253_cek2.pdf', 5000000, 0, 1500000, 0, '2019-11-15', 'Jakarta', '603-951-1-SM.pdf', '1574145253_603-951-1-SM.pdf', '', '', 0, 0, 1, 'Acara berlangsung       ', '2019-11-15', '2019-11-19', '165150201111230', '', 3, '0123', '1573791979'),
(22, 'Lomba Memanah 2', 3, 3, 'a2.pdf', '1574316868_a2.pdf', 4000000, 0, 1200000, 0, '2019-11-21', 'Palembang', 'a1.pdf', 'berita1.pdf', '', '', 0, 0, 1, 'ini adalah lomba memanah', '2019-11-21', '2019-11-21', '165150201111230', '', 2, '083129097727', '1574312671'),
(23, 'Gemastik 12', 3, 1, 'a2.pdf', '1574501983_a2.pdf', 500000, 0, 350000, 0, '2019-11-23', 'Universitas Gajah Mada', 'a1.pdf', '1574501983_a1.pdf', '', '', 0, 0, 1, 'lomba di bidang it', '2019-11-23', '2019-11-23', '165150201111230', '', 2, '08112345678', '1574497836'),
(25, 'kegiatan 3', 3, 0, 'kegiatan_2.pdf', '', 5000000, 0, 3500000, 100, '2019-11-25', '123', 'kegiatan_1.pdf', '', '', '', 2019, 0, 1, '123', '2019-11-25', '0000-00-00', '100', '', 1, '124', '1574662478'),
(33, 'Rapat Koordinasi', 1, 0, 'kegiatan_2.pdf', '', 300000, 90000, 210000, 109, '2019-12-02', 'FEB UB', 'kegiatan_1.pdf', '', '', '', 2020, 0, 1, 'ini adalah rapat kegiatan', '2019-12-02', '0000-00-00', '109', 'DPM', 5, '081234567890', '1575256074'),
(34, 'Rapat Permantapan', 3, 3, 'kegiatan_2.pdf', '1575260233_kegiatan_2.pdf', 200000, 60000, 140000, 109, '2019-12-02', 'Jakarta', 'kegiatan_1.pdf', '1575260233_kegiatan_1.pdf', '', '', 2020, 0, 1, 'ini adalah rapat', '2019-12-02', '2019-12-02', '109', 'DPM', 9, '8123456787', '1575259450'),
(35, 'Lomba Membaca Puis', 3, 3, 'kegiatan_2.pdf', '1575266654_kegiatan_2.pdf', 1500000, 450000, 1050000, 0, '2019-12-02', 'Universitas Gajah Mada', 'kegiatan_1.pdf', '1575266654_kegiatan_1.pdf', '', '', 2019, 0, 1, 'ini adalah lomba membaca puisi', '2019-12-02', '2019-12-02', '165150201111230', 'Aditya Yusril Fikri', 3, '0813390678055', '1575266313'),
(36, 'Diklat Kegiatan', 3, 3, 'kegiatan_2.pdf', '1575274486_kegiatan_2.pdf', 2500000, 750000, 1750000, 100, '2019-12-02', 'FEB UB', 'kegiatan_1.pdf', '1575274486_kegiatan_1.pdf', '', '', 2021, 0, 23, 'ini adalah kegiatan', '2019-12-02', '2019-12-02', '100', 'HMJ', 9, '081234567', '1575274179'),
(37, 'Lomba Memanah', 0, 0, '1575513948_berita_proposal_109.pdf', '', 5000000, 0, 3500000, 109, '2019-12-05', '123', '1575513948_proposal_109.pdf', '', '', '', 2021, 0, 24, '1234', '2019-12-05', '0000-00-00', '109', 'DPM', 3, '1234', '1575513948');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_sumber_dana`
--

CREATE TABLE `kegiatan_sumber_dana` (
  `id_kegiatan_sumber` int(10) NOT NULL,
  `id_kegiatan` int(10) NOT NULL,
  `id_sumber_dana` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan_sumber_dana`
--

INSERT INTO `kegiatan_sumber_dana` (`id_kegiatan_sumber`, `id_kegiatan`, `id_sumber_dana`) VALUES
(18, 21, 1),
(19, 21, 2),
(108, 22, 1),
(109, 22, 2),
(110, 22, 3),
(111, 22, 4),
(112, 22, 5),
(123, 23, 1),
(124, 23, 5),
(127, 25, 1),
(158, 33, 2),
(159, 33, 4),
(162, 34, 1),
(163, 35, 2),
(164, 35, 3),
(167, 36, 2),
(169, 37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kuliah_tamu`
--

CREATE TABLE `kuliah_tamu` (
  `id_kuliah_tamu` int(5) NOT NULL,
  `kode_qr` varchar(20) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `tanggal_event` date NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `id_prestasi` int(10) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `poster` varchar(500) NOT NULL,
  `pemateri` varchar(500) NOT NULL,
  `status_terlaksana` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliah_tamu`
--

INSERT INTO `kuliah_tamu` (`id_kuliah_tamu`, `kode_qr`, `nama_event`, `tanggal_event`, `deskripsi`, `id_prestasi`, `lokasi`, `waktu_mulai`, `waktu_selesai`, `poster`, `pemateri`, `status_terlaksana`) VALUES
(2, 'ua5d2', 'Economic Foundation', '2019-11-13', 'abc', 115, 'UB', '10:00:00', '11:00:00', '', 'Johny Kurniawan', 1),
(3, 'V8eeb', 'Be The Pro Economics', '2019-11-18', 'DDDDD', 115, 'UB', '10:00:00', '11:00:00', '', 'Mr. Johny', 1),
(14, 'tIb87', 'Simposium Nasional Jurusan Akuntansi', '2019-12-09', 'Mengundang wakil rektor bidang keuangan dan kepegawaian', 115, 'AULA GEDUNG F', '10:00:00', '11:00:00', '', 'Prof. Gugus Irianto', 1),
(16, 'LuFs0', 'AA', '2019-12-11', 'aa', 115, 'D.2.2', '10:00:00', '11:00:00', '', 'aa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lembaga`
--

CREATE TABLE `lembaga` (
  `id_lembaga` int(10) NOT NULL,
  `nama_lembaga` varchar(50) NOT NULL,
  `jenis_lembaga` varchar(50) NOT NULL,
  `jumlah_anggota` int(10) NOT NULL,
  `nama_ketua` varchar(50) NOT NULL,
  `no_hp_lembaga` varchar(10) NOT NULL,
  `foto_lembaga` varchar(50) NOT NULL,
  `status_rencana_kegiatan` int(1) NOT NULL,
  `tahun_rancangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lembaga`
--

INSERT INTO `lembaga` (`id_lembaga`, `nama_lembaga`, `jenis_lembaga`, `jumlah_anggota`, `nama_ketua`, `no_hp_lembaga`, `foto_lembaga`, `status_rencana_kegiatan`, `tahun_rancangan`) VALUES
(0, 'delegasi', '0', 0, '0', '0', '0', 0, 0),
(100, 'HMJ', 'Semi Otonom', 42, 'Aditya Yusril', '0812345678', 'hmj.jpg', 0, 2019),
(109, 'DPM', '', 10, 'Kharis', '123456', 'dpm.jpg', 0, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `total_poin_skp` int(10) NOT NULL,
  `alamat_kos` varchar(255) NOT NULL,
  `alamat_rumah` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kode_prodi` int(10) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `total_poin_skp`, `alamat_kos`, `alamat_rumah`, `email`, `kode_prodi`, `nomor_hp`) VALUES
('1650201111232', 'Lalu Roflan', 0, 'Malang', 'Malang Kabupaten', 'roflan@gmail.com', 6, '08221123456'),
('165150201111021', 'Misbakhul Kharis', 0, 'Jl. Bunga Kumis Kucing No. 21', 'Jl. Gowah No. 73', 'kharismisbakhul@gmail.com', 1, '085607872843'),
('165150201111230', 'Aditya Yusril Fikri', 165, 'Jln. Simpang Candi Panggung', 'Jln. H. Naim Btn Bumi Mataram Indah Blok B/5 Jempong Barat', 'adit9b02@gmail.com', 7, '083129097726'),
('165150201111231', 'Ahmad Dahlan', 60, 'Malang', 'Malang raya', 'ahmad@gmail.com', 7, '08123456789'),
('195020100111001', 'I gnasiu', 100, '-', '-', '-', 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `penerima_beasiswa`
--

CREATE TABLE `penerima_beasiswa` (
  `id_penerima` int(5) NOT NULL,
  `id_beasiswa` int(5) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `tahun_menerima` date NOT NULL,
  `lama_menerima` date NOT NULL,
  `nominal` double NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `bukti` varchar(50) NOT NULL,
  `validasi_beasiswa` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerima_beasiswa`
--

INSERT INTO `penerima_beasiswa` (`id_penerima`, `id_beasiswa`, `nim`, `tahun_menerima`, `lama_menerima`, `nominal`, `lampiran`, `bukti`, `validasi_beasiswa`) VALUES
(1, 1, '165150201111230', '2019-12-08', '2019-12-08', 2000000, '1575802633_kegiatan_1.pdf', '1575802633_kegiatan_11.pdf', 1),
(2, 1, '165150201111230', '2019-12-09', '2019-12-10', 1000000, '1575802790_kegiatan_1.pdf', '1575802790_kegiatan_2.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peserta_kuliah_tamu`
--

CREATE TABLE `peserta_kuliah_tamu` (
  `id_peserta_kuliah_tamu` int(5) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `id_kuliah_tamu` int(5) NOT NULL,
  `kehadiran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta_kuliah_tamu`
--

INSERT INTO `peserta_kuliah_tamu` (`id_peserta_kuliah_tamu`, `nim`, `id_kuliah_tamu`, `kehadiran`) VALUES
(120, '165150201111021', 14, 1),
(121, '165150201111230', 14, 1),
(122, '165150201111231', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poin_skp`
--

CREATE TABLE `poin_skp` (
  `id_poin_skp` int(10) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `validasi_prestasi` int(10) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_pelaksanaan` date NOT NULL,
  `file_bukti` varchar(50) NOT NULL,
  `tempat_pelaksanaan` varchar(50) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_prestasi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poin_skp`
--

INSERT INTO `poin_skp` (`id_poin_skp`, `nim`, `nama_kegiatan`, `validasi_prestasi`, `tgl_pengajuan`, `tgl_pelaksanaan`, `file_bukti`, `tempat_pelaksanaan`, `catatan`, `id_prestasi`) VALUES
(8, '165150201111230', 'a', 1, '2019-11-11', '2019-11-11', 'poinskp/PAPB_7_RecyclerVIewAdapterCollection.pdf', 'Malaysia', '-', 1),
(9, '165150201111230', 'kegiatan 2', 1, '2019-11-12', '2019-11-12', 'poinskp/603-951-1-SM.pdf', 'London', '-', 2),
(13, '195020100111001', 'Lomba Puis', 1, '2019-11-19', '2019-11-20', 'poinskp/PAPB_8_Thread.pdf', 'Malang', '-', 152),
(14, '195020100111001', 'Bakti Sosial Difabel', 1, '2019-11-19', '2019-11-19', 'poinskp/PAPB_7_RecyclerVIewAdapterCollection.pdf', 'Malang', '-', 170),
(15, '165150201111230', 'Lomba Indonesian Idol', 1, '2019-11-19', '2019-11-15', 'lpj/1574145253_603-951-1-SM.pdf', 'Jakarta', '-', 152),
(16, '165150201111230', 'Lomba Memanah 2', 1, '2019-11-21', '2019-11-21', 'lpj/berita1.pdf', 'Palembang', '-', 2),
(17, '165150201111231', 'Lomba Memanah 2', 1, '2019-11-21', '2019-11-21', 'lpj/berita1.pdf', 'Palembang', '-', 2),
(18, '195020100111001', 'Lomba Memanah 2', 1, '2019-11-21', '2019-11-21', 'lpj/berita1.pdf', 'Palembang', '-', 2),
(21, '165150201111230', 'Rapat Permantapan', 1, '2019-12-02', '2019-12-02', 'lpj/1575260233_kegiatan_1.pdf', 'Jakarta', '-', 44),
(22, '165150201111230', 'Lomba Membaca Puis', 1, '2019-12-02', '2019-12-02', 'lpj/1575266654_kegiatan_1.pdf', 'Universitas Gajah Mada', '-', 152),
(23, '165150201111230', 'Diklat Kegiatan', 1, '2019-12-02', '2019-12-02', 'lpj/1575274486_kegiatan_1.pdf', 'FEB UB', '-', 44),
(24, '195020100111001', 'Diklat Kegiatan', 1, '2019-12-02', '2019-12-02', 'lpj/1575274486_kegiatan_1.pdf', 'FEB UB', '-', 44),
(25, '165150201111230', 'cek', 1, '2019-12-02', '2019-12-02', 'poinskp/kegiatan_1.pdf', 'Malang', '-', 1),
(27, '165150201111231', '', 1, '2019-12-11', '2019-12-12', '', '', '', 48),
(28, '165150201111231', '', 1, '2019-12-12', '2019-12-13', '', '', '', 52);

-- --------------------------------------------------------

--
-- Table structure for table `poin_skp_sumber_dana`
--

CREATE TABLE `poin_skp_sumber_dana` (
  `id_prestasi_sumber` int(10) NOT NULL,
  `id_poin_skp` int(10) NOT NULL,
  `id_sumber_dana` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(10) NOT NULL,
  `nama_prestasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama_prestasi`) VALUES
(1, 'Peserta'),
(2, 'Ketua'),
(3, 'Wakil Ketua'),
(4, 'Sekretaris'),
(5, 'Pengurus Inti Lain'),
(6, 'Anggota Pengurus'),
(7, 'Juara I'),
(8, 'Juara II'),
(9, 'Juara III'),
(10, 'Finalis'),
(11, 'Pembicara'),
(12, 'Moderator'),
(13, 'Anggota'),
(14, 'Peserta Terpilih'),
(15, 'Finalis '),
(16, 'Finalis/ PesertaTerpilih '),
(17, 'Fasilitator'),
(18, 'Tidak Ada Deskripsi'),
(21, 'Prestasi Baru');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kode_prodi` int(10) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `kode_jurusan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kode_prodi`, `nama_prodi`, `kode_jurusan`) VALUES
(1, 'S1 Akuntansi (Internasional)', 1),
(2, 'S1 Ek., Keu. dan Perbankan (Internasional)', 1),
(3, 'S1 Ekonomi Pembangunan', 2),
(4, 'S1 Ekonomi Pembangunan (Internasional)', 2),
(5, 'S1 Ekonomi, Keuangan dan Perbankan', 3),
(6, 'S1 Kewirausahaan', 3),
(7, 'S1 Manajemen', 3),
(8, 'S1 Manajemen (Internasional)', 3),
(9, 'S2 Akuntansi', 1),
(10, 'S2 Manajemen', 3),
(11, 'S2 Ilmu Ekonomi', 2),
(12, 'S3 Ilmu Akuntansi', 1),
(13, 'S3 Ilmu Ekonomi', 2),
(14, 'S3 Ilmu Manajemen', 3),
(15, 'PPAk', 1),
(16, 'S1 Akuntansi (Internasional)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekapan_kegiatan_lembaga`
--

CREATE TABLE `rekapan_kegiatan_lembaga` (
  `id_rancangan` int(11) NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `tahun_pengajuan` int(11) NOT NULL,
  `anggaran_lembaga` int(11) NOT NULL,
  `status_rancangan` int(11) NOT NULL,
  `anggaran_kemahasiswaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekapan_kegiatan_lembaga`
--

INSERT INTO `rekapan_kegiatan_lembaga` (`id_rancangan`, `id_lembaga`, `tahun_pengajuan`, `anggaran_lembaga`, `status_rancangan`, `anggaran_kemahasiswaan`) VALUES
(1, 100, 2019, 7000000, 1, 0),
(5, 100, 2020, 500000, 1, 500000),
(6, 109, 2020, 500000, 1, 500000),
(7, 100, 2021, 2500000, 1, 5000000),
(8, 109, 2021, 5000000, 1, 6000000);

-- --------------------------------------------------------

--
-- Table structure for table `semua_prestasi`
--

CREATE TABLE `semua_prestasi` (
  `id_semua_prestasi` int(10) NOT NULL,
  `bobot` int(10) NOT NULL,
  `id_semua_tingkatan` int(10) NOT NULL,
  `id_prestasi` int(10) NOT NULL,
  `id_dasar_penilaian` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semua_prestasi`
--

INSERT INTO `semua_prestasi` (`id_semua_prestasi`, `bobot`, `id_semua_tingkatan`, `id_prestasi`, `id_dasar_penilaian`) VALUES
(1, 25, 1, 1, 1),
(2, 60, 2, 2, 2),
(3, 55, 2, 3, 2),
(4, 50, 2, 4, 2),
(5, 45, 2, 5, 2),
(6, 35, 2, 6, 2),
(7, 55, 3, 2, 2),
(8, 50, 3, 3, 2),
(9, 45, 3, 4, 2),
(10, 40, 3, 5, 2),
(11, 30, 3, 6, 2),
(12, 50, 4, 2, 2),
(13, 45, 4, 3, 2),
(14, 30, 4, 4, 2),
(15, 25, 4, 5, 2),
(16, 15, 4, 6, 2),
(17, 45, 5, 2, 2),
(18, 40, 5, 3, 2),
(19, 25, 5, 4, 2),
(20, 20, 5, 5, 2),
(21, 10, 5, 6, 2),
(22, 45, 6, 2, 2),
(23, 40, 6, 3, 2),
(24, 25, 6, 4, 2),
(25, 20, 6, 5, 2),
(26, 10, 6, 6, 2),
(27, 40, 7, 2, 2),
(28, 35, 7, 3, 2),
(29, 20, 7, 4, 2),
(30, 15, 7, 5, 2),
(31, 10, 7, 6, 2),
(32, 20, 8, 18, 2),
(33, 15, 9, 18, 2),
(34, 10, 10, 18, 2),
(35, 10, 11, 18, 2),
(36, 10, 12, 18, 2),
(37, 20, 13, 18, 2),
(38, 15, 14, 18, 2),
(39, 10, 15, 18, 2),
(40, 10, 16, 18, 2),
(41, 20, 17, 18, 2),
(42, 15, 18, 18, 2),
(43, 10, 19, 18, 2),
(44, 5, 20, 18, 2),
(45, 5, 21, 18, 3),
(46, 5, 22, 18, 3),
(47, 5, 23, 18, 3),
(48, 100, 24, 7, 4),
(49, 75, 24, 8, 4),
(50, 70, 24, 9, 4),
(51, 60, 24, 10, 4),
(52, 50, 25, 7, 4),
(53, 45, 25, 8, 4),
(54, 40, 25, 9, 4),
(55, 30, 25, 10, 4),
(56, 70, 26, 7, 4),
(57, 65, 26, 8, 4),
(58, 60, 26, 9, 4),
(59, 50, 26, 10, 4),
(60, 45, 27, 7, 4),
(61, 40, 27, 8, 4),
(62, 35, 27, 9, 4),
(63, 25, 27, 10, 4),
(64, 30, 28, 7, 4),
(65, 25, 28, 8, 4),
(66, 20, 28, 9, 4),
(67, 10, 28, 10, 4),
(68, 25, 29, 7, 4),
(69, 20, 29, 8, 4),
(70, 15, 29, 9, 4),
(71, 20, 30, 7, 4),
(72, 15, 30, 8, 4),
(73, 10, 30, 9, 4),
(74, 50, 31, 18, 2),
(75, 30, 32, 18, 2),
(76, 25, 33, 18, 2),
(77, 20, 34, 18, 2),
(78, 10, 35, 18, 2),
(79, 5, 36, 18, 2),
(80, 5, 37, 18, 2),
(81, 50, 38, 11, 2),
(82, 30, 38, 12, 2),
(83, 15, 38, 1, 2),
(84, 40, 39, 11, 2),
(85, 20, 39, 12, 2),
(86, 10, 39, 1, 2),
(87, 35, 40, 11, 2),
(88, 20, 40, 12, 2),
(89, 10, 40, 1, 2),
(90, 30, 41, 11, 2),
(91, 15, 41, 12, 2),
(92, 5, 41, 1, 2),
(93, 25, 42, 11, 2),
(94, 10, 42, 12, 2),
(95, 5, 42, 1, 2),
(96, 70, 43, 18, 5),
(97, 70, 44, 2, 6),
(98, 45, 44, 13, 6),
(99, 50, 45, 2, 6),
(100, 30, 45, 13, 6),
(101, 25, 46, 2, 6),
(102, 10, 46, 13, 6),
(103, 30, 47, 2, 6),
(104, 15, 47, 13, 6),
(105, 20, 48, 2, 6),
(106, 10, 48, 13, 6),
(107, 15, 49, 2, 6),
(108, 5, 49, 13, 6),
(109, 10, 50, 2, 6),
(110, 5, 50, 13, 6),
(111, 30, 51, 2, 7),
(112, 20, 51, 13, 7),
(113, 20, 52, 13, 9),
(114, 10, 53, 18, 4),
(115, 5, 54, 18, 8),
(116, 70, 55, 7, 2),
(117, 65, 55, 8, 2),
(118, 60, 55, 9, 2),
(119, 55, 55, 10, 2),
(120, 50, 55, 14, 2),
(121, 50, 56, 7, 2),
(122, 45, 56, 8, 2),
(123, 40, 56, 9, 2),
(124, 35, 56, 10, 2),
(125, 30, 56, 14, 2),
(126, 30, 57, 7, 2),
(127, 25, 57, 8, 2),
(128, 20, 57, 9, 2),
(129, 50, 58, 7, 2),
(130, 40, 58, 8, 2),
(131, 30, 58, 9, 2),
(132, 25, 58, 10, 2),
(133, 15, 58, 14, 2),
(134, 50, 59, 7, 2),
(135, 40, 59, 8, 2),
(136, 30, 59, 9, 2),
(137, 25, 59, 10, 2),
(138, 15, 59, 14, 2),
(139, 40, 60, 7, 2),
(140, 30, 60, 8, 2),
(141, 20, 60, 9, 2),
(142, 15, 60, 10, 2),
(143, 10, 60, 14, 2),
(144, 30, 61, 7, 2),
(145, 25, 61, 8, 2),
(146, 20, 61, 9, 2),
(147, 10, 61, 16, 2),
(148, 20, 62, 7, 2),
(149, 15, 62, 8, 2),
(150, 10, 62, 9, 2),
(151, 25, 63, 18, 2),
(152, 20, 64, 18, 2),
(153, 10, 65, 18, 2),
(154, 5, 66, 18, 2),
(155, 40, 67, 18, 2),
(156, 25, 68, 18, 10),
(157, 10, 69, 18, 10),
(158, 30, 70, 18, 11),
(159, 20, 71, 18, 4),
(160, 30, 72, 18, 12),
(161, 40, 73, 18, 13),
(162, 35, 74, 18, 13),
(163, 20, 75, 18, 13),
(164, 40, 76, 18, 4),
(165, 35, 77, 18, 4),
(166, 30, 78, 18, 4),
(167, 25, 79, 18, 4),
(168, 15, 80, 18, 4),
(169, 30, 81, 18, 14),
(170, 20, 82, 18, 15),
(171, 0, 83, 18, 16),
(172, 10, 84, 18, 14),
(173, 0, 85, 18, 17),
(174, 10, 86, 18, 11),
(175, 25, 87, 18, 19),
(176, 0, 88, 18, 17),
(177, 15, 89, 18, 19),
(178, 20, 90, 17, 11),
(179, 10, 90, 1, 11),
(180, 20, 91, 17, 11),
(181, 10, 91, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `semua_tingkatan`
--

CREATE TABLE `semua_tingkatan` (
  `id_semua_tingkatan` int(10) NOT NULL,
  `id_jenis_kegiatan` int(10) NOT NULL,
  `id_tingkatan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semua_tingkatan`
--

INSERT INTO `semua_tingkatan` (`id_semua_tingkatan`, `id_jenis_kegiatan`, `id_tingkatan`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 6),
(7, 4, 7),
(8, 5, 2),
(9, 5, 3),
(10, 5, 8),
(11, 5, 9),
(12, 5, 10),
(13, 6, 11),
(14, 6, 12),
(15, 6, 13),
(16, 7, 1),
(17, 8, 2),
(18, 8, 3),
(19, 8, 8),
(20, 8, 9),
(21, 9, 8),
(22, 9, 9),
(23, 9, 0),
(24, 10, 14),
(25, 10, 15),
(26, 10, 16),
(27, 10, 17),
(28, 10, 18),
(29, 10, 8),
(30, 10, 9),
(31, 11, 19),
(32, 11, 2),
(33, 11, 16),
(34, 11, 17),
(35, 11, 18),
(36, 11, 8),
(37, 11, 9),
(38, 12, 2),
(39, 12, 3),
(40, 12, 18),
(41, 12, 8),
(42, 12, 9),
(43, 13, 1),
(44, 14, 2),
(45, 14, 20),
(46, 14, 21),
(47, 15, 2),
(48, 15, 3),
(49, 15, 18),
(50, 15, 8),
(51, 16, 1),
(52, 17, 9),
(53, 18, 1),
(54, 19, 1),
(55, 20, 3),
(56, 20, 8),
(57, 20, 9),
(58, 21, 2),
(59, 21, 16),
(60, 21, 17),
(61, 21, 18),
(62, 21, 8),
(63, 22, 2),
(64, 22, 3),
(65, 22, 18),
(66, 23, 8),
(67, 23, 3),
(68, 23, 8),
(69, 23, 9),
(70, 24, 3),
(71, 25, 1),
(72, 26, 1),
(73, 27, 22),
(74, 27, 23),
(75, 27, 24),
(76, 28, 2),
(77, 28, 3),
(78, 28, 18),
(79, 28, 8),
(80, 28, 9),
(81, 29, 1),
(82, 30, 1),
(83, 31, 1),
(84, 32, 1),
(85, 33, 1),
(86, 34, 1),
(87, 35, 1),
(88, 36, 1),
(89, 37, 1),
(90, 38, 1),
(91, 39, 1),
(96, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `sumber_dana`
--

CREATE TABLE `sumber_dana` (
  `id_sumber_dana` int(10) NOT NULL,
  `nama_sumber_dana` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumber_dana`
--

INSERT INTO `sumber_dana` (`id_sumber_dana`, `nama_sumber_dana`) VALUES
(1, 'Dana Universitas'),
(2, 'Dana Dekanat'),
(3, 'Dana Jurusan'),
(4, 'Dana Mandiri'),
(5, 'Dana Sponsor');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatan`
--

CREATE TABLE `tingkatan` (
  `id_tingkatan` int(10) NOT NULL,
  `nama_tingkatan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tingkatan`
--

INSERT INTO `tingkatan` (`id_tingkatan`, `nama_tingkatan`) VALUES
(1, 'Tidak Ada Tingkatan'),
(2, 'Internasional'),
(3, 'Nasional'),
(4, 'EM dan DPM'),
(5, 'Unit Kegiatan Mahasiswa'),
(6, 'BEM, DPM dan HMJ'),
(7, ' Lembaga Otonom dan Semi Otonom'),
(8, 'Universitas'),
(9, 'Fakultas'),
(10, 'Departemen/Program Studi'),
(11, 'Lanjut'),
(12, 'Menengah'),
(13, 'Dasar'),
(14, 'Internasional : pembiayaan penuh dari penyelenggara'),
(15, 'Internasional Mandiri'),
(16, 'Nasional Dikti'),
(17, 'Nasional Non Dikti'),
(18, 'Regional'),
(19, 'Internasional: pembiayaan penuh dari penyelenggara *)dihapus'),
(20, 'Nasional - Akreditasi'),
(21, 'Tidak Terakreditasi'),
(22, 'Dikti'),
(23, 'Non Dikti'),
(24, 'Universitas Brawijaya'),
(28, 'A2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_profil_kode` int(5) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `user_profil_kode`, `is_active`) VALUES
(1, 'HMJ', '100', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 2, 1),
(2, 'BEM', '101', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 3, 1),
(3, 'Rara', '102', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 4, 1),
(4, 'Sauki', '103', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 5, 1),
(5, 'Pujo', '104', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 6, 1),
(6, 'Ini Akademik', '105', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 8, 1),
(7, 'agus', '106', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 7, 1),
(8, 'admin', '107', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 9, 1),
(9, 'DPM', '109', '$2y$10$qkdbRXHXAgZowdnYHGYLweZykhyH2.wY1y0dvVL/qcO92oOYgy7aS', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(10) NOT NULL,
  `user_profil_kode` int(5) NOT NULL,
  `menu_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `user_profil_kode`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 3, 3),
(5, 4, 4),
(6, 5, 5),
(7, 6, 6),
(8, 7, 7),
(9, 8, 8),
(10, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(10) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Mahasiswa'),
(2, 'Kegiatan'),
(3, 'Bem'),
(4, 'Kemahasiswaan'),
(5, 'Pimpinan'),
(6, 'Keuangan'),
(7, 'PSIK'),
(8, 'Akademik'),
(9, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_profil`
--

CREATE TABLE `user_profil` (
  `user_profil_kode` int(5) NOT NULL,
  `jenis_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profil`
--

INSERT INTO `user_profil` (`user_profil_kode`, `jenis_user`) VALUES
(1, 'Mahasiswa'),
(2, 'Lembaga'),
(3, 'BEM'),
(4, 'Kemahasiswaan'),
(5, 'Pimpinan'),
(6, 'Keuangan'),
(7, 'PSIK'),
(8, 'Akademik'),
(9, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `ikon` varchar(50) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `has_sub` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `judul`, `url`, `ikon`, `menu_id`, `has_sub`) VALUES
(1, 'Dashboard', 'Mahasiswa', 'fas fa-fire', 1, 0),
(2, 'Poin Skp', 'Mahasiswa/poinSkp', 'fas fa-rocket', 1, 0),
(3, 'Pengajuan', '', 'fas fa-clipboard', 1, 1),
(4, 'Beasiswa', 'Mahasiswa/beasiswa', 'fas fa-briefcase', 1, 0),
(5, 'Dashboard', 'Kegiatan', 'fas fa-rocket', 2, 0),
(6, 'Pengajuan', '', 'fas fa-rocket', 2, 1),
(7, 'Anggaran', 'Kegiatan/anggaran', 'fas fa-rocket', 2, 0),
(8, 'Validasi', 'Kegiatan/validasiBEM', 'fas fa-rocket', 3, 1),
(9, 'Dashboard', 'Kemahasiswaan', 'fas fa-rocket', 4, 0),
(10, 'Validasi', '', 'fas fa-rocket', 4, 1),
(11, 'Poin Skp', 'Kemahasiswaan/validasi', 'fas fa-briefcase', 4, 0),
(12, 'Lembaga', 'Kemahasiswaan/lembaga', 'fas fa-rocket', 4, 0),
(13, 'Anggaran', 'Kemahasiswaan/anggaran', 'fas fa-rocket', 4, 0),
(14, 'Beasiswa', 'Kemahasiswaan/beasiswa', 'fas fa-rocket', 4, 0),
(15, 'Dashboard', 'Pimpinan', 'fas fa-rocket', 5, 0),
(16, 'Poin Skp Mahasiswa', 'Pimpinan/poin_skp', 'fas fa-rocket', 5, 0),
(17, 'Anggaran Pengeluaran', 'Pimpinan/anggaran', 'fas fa-rocket', 5, 0),
(18, 'Dashboard', 'Publikasi', 'fas fa-rocket', 7, 0),
(19, 'Validasi', '', 'fas fa-rocket', 7, 1),
(20, 'Dashboard', 'Keuangan', 'fas fa-rocket', 6, 0),
(21, 'Validasi', '', 'fas fa-briefcase', 6, 1),
(22, 'Dashboard', 'Akademik', 'fas fa-rocket', 8, 0),
(23, 'Kegiatan', 'Akademik/kegiatan', 'fas fa-rocket', 8, 0),
(24, 'Dashboard', '', 'fas fa-rocket', 9, 0),
(25, 'Manegement User', 'Admin/ManagementUser', 'fas fa-rocket', 9, 0),
(26, 'Kategori', 'Kemahasiswaan/kategori', 'fas fa-rocket', 4, 0),
(27, 'Rekapitulasi SKP', 'Pimpinan/rekapitulasiSKP', 'fas fa-rocket', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_sub_menu`
--

CREATE TABLE `user_sub_sub_menu` (
  `id_sub_sub_menu` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `id_sub_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_sub_menu`
--

INSERT INTO `user_sub_sub_menu` (`id_sub_sub_menu`, `nama`, `url`, `id_sub_menu`) VALUES
(1, 'Proposal', 'Mahasiswa/pengajuanProposal', 3),
(2, 'LPJ', 'Mahasiswa/pengajuanLpj', 3),
(3, 'Rancangan', 'Kegiatan/pengajuanRancangan', 6),
(4, 'Proposal', 'Kegiatan/daftarPengajuanProposal', 6),
(5, 'LPJ', 'Kegiatan/pengajuanLpj', 6),
(6, 'Proposal', 'Kegiatan/daftarProposal', 8),
(7, 'LPJ', 'Kegiatan/daftarLpj', 8),
(8, 'Rancangan', 'Kemahasiswaan/daftarRancangan', 10),
(9, 'Proposal', 'Kemahasiswaan/daftarProposal', 10),
(10, 'LPJ', 'Kemahasiswaan/daftarLpj', 10),
(11, 'Skp', 'Kemahasiswaan/daftarPoinSkp', 10),
(12, 'Proposal', 'Publikasi/daftarProposal', 19),
(13, 'Lpj', 'Publikasi/daftarLpj', 19),
(14, 'Proposal', 'Keuangan/daftarPengajuanKeuangan', 21),
(15, 'Lpj', 'Keuangan/daftarPengajuanLpj', 21);

-- --------------------------------------------------------

--
-- Table structure for table `validasi_kegiatan`
--

CREATE TABLE `validasi_kegiatan` (
  `id` int(11) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `jenis_validasi` int(10) NOT NULL,
  `status_validasi` int(1) NOT NULL DEFAULT 0,
  `tanggal_validasi` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `catatan_revisi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validasi_kegiatan`
--

INSERT INTO `validasi_kegiatan` (`id`, `kategori`, `jenis_validasi`, `status_validasi`, `tanggal_validasi`, `id_user`, `id_kegiatan`, `catatan_revisi`) VALUES
(21, 'proposal', 2, 3, '0000-00-00', 8, 21, '-'),
(22, 'proposal', 3, 1, '2019-11-19', 3, 21, '-'),
(23, 'proposal', 4, 1, '2019-11-18', 3, 21, '-'),
(24, 'proposal', 5, 1, '2019-11-18', 5, 21, '-'),
(25, 'proposal', 6, 1, '2019-11-20', 5, 21, '-'),
(31, 'lpj', 2, 3, '0000-00-00', 8, 21, ''),
(32, 'lpj', 3, 1, '2019-11-19', 3, 21, '-'),
(33, 'lpj', 4, 1, '2019-11-19', 3, 21, '-'),
(34, 'lpj', 5, 1, '2019-11-20', 7, 21, '-'),
(35, 'lpj', 6, 1, '2019-11-20', 5, 21, 'ca'),
(41, 'proposal', 2, 3, '0000-00-00', 8, 22, ''),
(42, 'proposal', 3, 1, '2019-11-21', 3, 22, '-'),
(43, 'proposal', 4, 1, '2019-11-21', 3, 22, '-'),
(44, 'proposal', 5, 1, '2019-11-21', 7, 22, '-'),
(45, 'proposal', 6, 1, '2019-11-21', 5, 22, '-'),
(46, 'lpj', 2, 3, '0000-00-00', 8, 22, ''),
(47, 'lpj', 3, 1, '2019-11-21', 3, 22, '-'),
(48, 'lpj', 4, 1, '2019-11-21', 3, 22, '-'),
(49, 'lpj', 5, 1, '2019-11-21', 7, 22, '-'),
(50, 'lpj', 6, 1, '2019-11-21', 5, 22, '-'),
(51, 'proposal', 2, 3, '0000-00-00', 8, 23, ''),
(52, 'proposal', 3, 1, '2019-11-22', 3, 23, '-'),
(53, 'proposal', 4, 1, '2019-11-23', 3, 23, '-'),
(54, 'proposal', 5, 1, '2019-11-23', 7, 23, '-'),
(55, 'proposal', 6, 1, '2019-11-23', 5, 23, '-'),
(56, 'lpj', 2, 3, '0000-00-00', 8, 23, ''),
(57, 'lpj', 3, 4, '2019-11-23', 3, 23, '-'),
(58, 'lpj', 4, 0, '0000-00-00', 8, 23, ''),
(59, 'lpj', 5, 0, '0000-00-00', 8, 23, ''),
(60, 'lpj', 6, 0, '0000-00-00', 8, 23, ''),
(66, 'proposal', 2, 1, '2019-11-25', 2, 25, '-'),
(67, 'proposal', 3, 1, '2019-11-25', 3, 25, '-'),
(68, 'proposal', 4, 1, '2019-11-25', 3, 25, '-'),
(69, 'proposal', 5, 1, '2019-11-25', 7, 25, '-'),
(70, 'proposal', 6, 1, '2019-11-25', 5, 25, '-'),
(71, 'lpj', 2, 0, '0000-00-00', 8, 25, ''),
(72, 'lpj', 3, 0, '0000-00-00', 8, 25, ''),
(73, 'lpj', 4, 0, '0000-00-00', 8, 25, ''),
(74, 'lpj', 5, 0, '0000-00-00', 8, 25, ''),
(75, 'lpj', 6, 0, '0000-00-00', 8, 25, ''),
(131, 'proposal', 2, 1, '2019-12-02', 2, 33, '-'),
(132, 'proposal', 3, 4, '2019-12-02', 8, 33, 'ini ada yang salah boi'),
(133, 'proposal', 4, 0, '0000-00-00', 8, 33, ''),
(134, 'proposal', 5, 0, '0000-00-00', 8, 33, ''),
(135, 'proposal', 6, 0, '0000-00-00', 8, 33, ''),
(136, 'proposal', 2, 1, '2019-12-02', 2, 34, '-'),
(137, 'proposal', 3, 1, '2019-12-02', 3, 34, '-'),
(138, 'proposal', 4, 1, '2019-12-02', 3, 34, '-'),
(139, 'proposal', 5, 1, '2019-12-02', 7, 34, '-'),
(140, 'proposal', 6, 1, '2019-12-02', 5, 34, '-'),
(141, 'lpj', 2, 1, '2019-12-02', 2, 34, '-'),
(142, 'lpj', 3, 1, '2019-12-02', 3, 34, '-'),
(143, 'lpj', 4, 1, '2019-12-02', 3, 34, '-'),
(144, 'lpj', 5, 1, '2019-12-02', 7, 34, '-'),
(145, 'lpj', 6, 1, '2019-12-02', 5, 34, '-'),
(146, 'proposal', 2, 3, '0000-00-00', 8, 35, ''),
(147, 'proposal', 3, 1, '2019-12-02', 3, 35, '-'),
(148, 'proposal', 4, 1, '2019-12-02', 3, 35, '-'),
(149, 'proposal', 5, 1, '2019-12-02', 7, 35, '-'),
(150, 'proposal', 6, 1, '2019-12-02', 5, 35, '-'),
(151, 'lpj', 2, 3, '0000-00-00', 8, 35, ''),
(152, 'lpj', 3, 1, '2019-12-02', 3, 35, '-'),
(153, 'lpj', 4, 1, '2019-12-02', 3, 35, '-'),
(154, 'lpj', 5, 1, '2019-12-02', 7, 35, '-'),
(155, 'lpj', 6, 1, '2019-12-02', 5, 35, '-'),
(156, 'proposal', 2, 1, '2019-12-02', 2, 36, '-'),
(157, 'proposal', 3, 1, '2019-12-02', 3, 36, '-'),
(158, 'proposal', 4, 1, '2019-12-02', 3, 36, '-'),
(159, 'proposal', 5, 1, '2019-12-02', 7, 36, '-'),
(160, 'proposal', 6, 1, '2019-12-02', 5, 36, '-'),
(161, 'lpj', 2, 1, '2019-12-02', 2, 36, '-'),
(162, 'lpj', 3, 1, '2019-12-02', 3, 36, '-'),
(163, 'lpj', 4, 1, '2019-12-02', 3, 36, '-'),
(164, 'lpj', 5, 1, '2019-12-02', 7, 36, '-'),
(165, 'lpj', 6, 1, '2019-12-02', 5, 36, '-'),
(166, 'lpj', 2, 4, '0000-00-00', 8, 33, ''),
(167, 'lpj', 3, 0, '0000-00-00', 8, 33, ''),
(168, 'lpj', 4, 0, '0000-00-00', 8, 33, ''),
(169, 'lpj', 5, 0, '0000-00-00', 8, 33, ''),
(170, 'lpj', 6, 0, '0000-00-00', 8, 33, ''),
(171, 'proposal', 2, 4, '0000-00-00', 8, 37, ''),
(172, 'proposal', 3, 0, '0000-00-00', 8, 37, ''),
(173, 'proposal', 4, 0, '0000-00-00', 8, 37, ''),
(174, 'proposal', 5, 0, '0000-00-00', 8, 37, ''),
(175, 'proposal', 6, 0, '0000-00-00', 8, 37, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_kegiatan`
--
ALTER TABLE `anggota_kegiatan`
  ADD PRIMARY KEY (`id_anggota_kegiatan`),
  ADD KEY `FKanggota_ke292503` (`id_kegiatan`),
  ADD KEY `FKanggota_ke69235` (`id_prestasi`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidang_kegiatan`
--
ALTER TABLE `bidang_kegiatan`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `daftar_rancangan_kegiatan`
--
ALTER TABLE `daftar_rancangan_kegiatan`
  ADD PRIMARY KEY (`id_daftar_rancangan`),
  ADD KEY `daftar_rancangan_kegiatan_ibfk_1` (`id_lembaga`);

--
-- Indexes for table `dana_pagu_lembaga`
--
ALTER TABLE `dana_pagu_lembaga`
  ADD PRIMARY KEY (`id_dana_pagu`),
  ADD KEY `FKdana_pagu_66288` (`id_lembaga`);

--
-- Indexes for table `dasar_penilaian`
--
ALTER TABLE `dasar_penilaian`
  ADD PRIMARY KEY (`id_dasar_penilaian`);

--
-- Indexes for table `dokumentasi_kegiatan`
--
ALTER TABLE `dokumentasi_kegiatan`
  ADD PRIMARY KEY (`id_dokumentasi_kegiatan`),
  ADD KEY `FKdokumentas294249` (`id_kegiatan`);

--
-- Indexes for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  ADD PRIMARY KEY (`id_jenis_kegiatan`),
  ADD KEY `FKjenis_kegi525923` (`id_bidang`);

--
-- Indexes for table `jenis_validasi`
--
ALTER TABLE `jenis_validasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `FKkegiatan281979` (`id_lembaga`),
  ADD KEY `FKkegiatan912318` (`id_tingkatan`);

--
-- Indexes for table `kegiatan_sumber_dana`
--
ALTER TABLE `kegiatan_sumber_dana`
  ADD PRIMARY KEY (`id_kegiatan_sumber`),
  ADD KEY `id_kegiatan` (`id_kegiatan`),
  ADD KEY `id_sumber_dana` (`id_sumber_dana`);

--
-- Indexes for table `kuliah_tamu`
--
ALTER TABLE `kuliah_tamu`
  ADD PRIMARY KEY (`id_kuliah_tamu`),
  ADD UNIQUE KEY `kode_qr` (`kode_qr`),
  ADD KEY `FKkuliah_tam750240` (`id_prestasi`);

--
-- Indexes for table `lembaga`
--
ALTER TABLE `lembaga`
  ADD PRIMARY KEY (`id_lembaga`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `FKmahasiswa477977` (`kode_prodi`);

--
-- Indexes for table `penerima_beasiswa`
--
ALTER TABLE `penerima_beasiswa`
  ADD PRIMARY KEY (`id_penerima`),
  ADD KEY `FKpenerima_b395565` (`id_beasiswa`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `peserta_kuliah_tamu`
--
ALTER TABLE `peserta_kuliah_tamu`
  ADD PRIMARY KEY (`id_peserta_kuliah_tamu`),
  ADD KEY `FKpeserta_ku237267` (`id_kuliah_tamu`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `poin_skp`
--
ALTER TABLE `poin_skp`
  ADD PRIMARY KEY (`id_poin_skp`),
  ADD KEY `FKpoin_skp828253` (`id_prestasi`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `poin_skp_sumber_dana`
--
ALTER TABLE `poin_skp_sumber_dana`
  ADD PRIMARY KEY (`id_prestasi_sumber`),
  ADD KEY `FKpoin_skp_s414399` (`id_poin_skp`),
  ADD KEY `FKpoin_skp_s47051` (`id_sumber_dana`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD KEY `FKprodi600209` (`kode_jurusan`);

--
-- Indexes for table `rekapan_kegiatan_lembaga`
--
ALTER TABLE `rekapan_kegiatan_lembaga`
  ADD PRIMARY KEY (`id_rancangan`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `semua_prestasi`
--
ALTER TABLE `semua_prestasi`
  ADD PRIMARY KEY (`id_semua_prestasi`),
  ADD KEY `FKsemua_pres210510` (`id_prestasi`),
  ADD KEY `FKsemua_pres948843` (`id_dasar_penilaian`),
  ADD KEY `id_semua_tingkatan` (`id_semua_tingkatan`);

--
-- Indexes for table `semua_tingkatan`
--
ALTER TABLE `semua_tingkatan`
  ADD PRIMARY KEY (`id_semua_tingkatan`),
  ADD KEY `id_jenis_kegiatan` (`id_jenis_kegiatan`);

--
-- Indexes for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD PRIMARY KEY (`id_sumber_dana`);

--
-- Indexes for table `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `FKuser946152` (`user_profil_kode`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKuser_acces470624` (`user_profil_kode`),
  ADD KEY `FKuser_acces132616` (`menu_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profil`
--
ALTER TABLE `user_profil`
  ADD PRIMARY KEY (`user_profil_kode`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKuser_sub_m552904` (`menu_id`);

--
-- Indexes for table `user_sub_sub_menu`
--
ALTER TABLE `user_sub_sub_menu`
  ADD PRIMARY KEY (`id_sub_sub_menu`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indexes for table `validasi_kegiatan`
--
ALTER TABLE `validasi_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_validasi` (`jenis_validasi`),
  ADD KEY `id_kegiatan` (`id_kegiatan`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_kegiatan`
--
ALTER TABLE `anggota_kegiatan`
  MODIFY `id_anggota_kegiatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bidang_kegiatan`
--
ALTER TABLE `bidang_kegiatan`
  MODIFY `id_bidang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `daftar_rancangan_kegiatan`
--
ALTER TABLE `daftar_rancangan_kegiatan`
  MODIFY `id_daftar_rancangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `dana_pagu_lembaga`
--
ALTER TABLE `dana_pagu_lembaga`
  MODIFY `id_dana_pagu` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dasar_penilaian`
--
ALTER TABLE `dasar_penilaian`
  MODIFY `id_dasar_penilaian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dokumentasi_kegiatan`
--
ALTER TABLE `dokumentasi_kegiatan`
  MODIFY `id_dokumentasi_kegiatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  MODIFY `id_jenis_kegiatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode_jurusan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kegiatan_sumber_dana`
--
ALTER TABLE `kegiatan_sumber_dana`
  MODIFY `id_kegiatan_sumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `kuliah_tamu`
--
ALTER TABLE `kuliah_tamu`
  MODIFY `id_kuliah_tamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id_lembaga` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `peserta_kuliah_tamu`
--
ALTER TABLE `peserta_kuliah_tamu`
  MODIFY `id_peserta_kuliah_tamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `poin_skp`
--
ALTER TABLE `poin_skp`
  MODIFY `id_poin_skp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `poin_skp_sumber_dana`
--
ALTER TABLE `poin_skp_sumber_dana`
  MODIFY `id_prestasi_sumber` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `kode_prodi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rekapan_kegiatan_lembaga`
--
ALTER TABLE `rekapan_kegiatan_lembaga`
  MODIFY `id_rancangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `semua_prestasi`
--
ALTER TABLE `semua_prestasi`
  MODIFY `id_semua_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `semua_tingkatan`
--
ALTER TABLE `semua_tingkatan`
  MODIFY `id_semua_tingkatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  MODIFY `id_sumber_dana` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tingkatan`
--
ALTER TABLE `tingkatan`
  MODIFY `id_tingkatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_profil`
--
ALTER TABLE `user_profil`
  MODIFY `user_profil_kode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `validasi_kegiatan`
--
ALTER TABLE `validasi_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_kegiatan`
--
ALTER TABLE `anggota_kegiatan`
  ADD CONSTRAINT `FKanggota_ke292503` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id_kegiatan`),
  ADD CONSTRAINT `FKanggota_ke69235` FOREIGN KEY (`id_prestasi`) REFERENCES `semua_prestasi` (`id_semua_prestasi`),
  ADD CONSTRAINT `anggota_kegiatan_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `daftar_rancangan_kegiatan`
--
ALTER TABLE `daftar_rancangan_kegiatan`
  ADD CONSTRAINT `daftar_rancangan_kegiatan_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id_lembaga`);

--
-- Constraints for table `dana_pagu_lembaga`
--
ALTER TABLE `dana_pagu_lembaga`
  ADD CONSTRAINT `FKdana_pagu_66288` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id_lembaga`);

--
-- Constraints for table `dokumentasi_kegiatan`
--
ALTER TABLE `dokumentasi_kegiatan`
  ADD CONSTRAINT `FKdokumentas294249` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id_kegiatan`);

--
-- Constraints for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  ADD CONSTRAINT `FKjenis_kegi525923` FOREIGN KEY (`id_bidang`) REFERENCES `bidang_kegiatan` (`id_bidang`);

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `FKkegiatan281979` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id_lembaga`),
  ADD CONSTRAINT `FKkegiatan912318` FOREIGN KEY (`id_tingkatan`) REFERENCES `tingkatan` (`id_tingkatan`);

--
-- Constraints for table `kegiatan_sumber_dana`
--
ALTER TABLE `kegiatan_sumber_dana`
  ADD CONSTRAINT `kegiatan_sumber_dana_ibfk_1` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id_kegiatan`),
  ADD CONSTRAINT `kegiatan_sumber_dana_ibfk_2` FOREIGN KEY (`id_sumber_dana`) REFERENCES `sumber_dana` (`id_sumber_dana`);

--
-- Constraints for table `kuliah_tamu`
--
ALTER TABLE `kuliah_tamu`
  ADD CONSTRAINT `FKkuliah_tam750240` FOREIGN KEY (`id_prestasi`) REFERENCES `semua_prestasi` (`id_semua_prestasi`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `FKmahasiswa477977` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode_prodi`);

--
-- Constraints for table `penerima_beasiswa`
--
ALTER TABLE `penerima_beasiswa`
  ADD CONSTRAINT `FKpenerima_b395565` FOREIGN KEY (`id_beasiswa`) REFERENCES `beasiswa` (`id`),
  ADD CONSTRAINT `penerima_beasiswa_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `peserta_kuliah_tamu`
--
ALTER TABLE `peserta_kuliah_tamu`
  ADD CONSTRAINT `FKpeserta_ku237267` FOREIGN KEY (`id_kuliah_tamu`) REFERENCES `kuliah_tamu` (`id_kuliah_tamu`),
  ADD CONSTRAINT `peserta_kuliah_tamu_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `poin_skp`
--
ALTER TABLE `poin_skp`
  ADD CONSTRAINT `FKpoin_skp828253` FOREIGN KEY (`id_prestasi`) REFERENCES `semua_prestasi` (`id_semua_prestasi`),
  ADD CONSTRAINT `poin_skp_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `poin_skp_sumber_dana`
--
ALTER TABLE `poin_skp_sumber_dana`
  ADD CONSTRAINT `FKpoin_skp_s414399` FOREIGN KEY (`id_poin_skp`) REFERENCES `poin_skp` (`id_poin_skp`),
  ADD CONSTRAINT `FKpoin_skp_s47051` FOREIGN KEY (`id_sumber_dana`) REFERENCES `sumber_dana` (`id_sumber_dana`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `FKprodi600209` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode_jurusan`);

--
-- Constraints for table `rekapan_kegiatan_lembaga`
--
ALTER TABLE `rekapan_kegiatan_lembaga`
  ADD CONSTRAINT `rekapan_kegiatan_lembaga_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id_lembaga`);

--
-- Constraints for table `semua_prestasi`
--
ALTER TABLE `semua_prestasi`
  ADD CONSTRAINT `FKsemua_pres210510` FOREIGN KEY (`id_prestasi`) REFERENCES `prestasi` (`id_prestasi`),
  ADD CONSTRAINT `FKsemua_pres948843` FOREIGN KEY (`id_dasar_penilaian`) REFERENCES `dasar_penilaian` (`id_dasar_penilaian`),
  ADD CONSTRAINT `semua_prestasi_ibfk_1` FOREIGN KEY (`id_semua_tingkatan`) REFERENCES `semua_tingkatan` (`id_semua_tingkatan`);

--
-- Constraints for table `semua_tingkatan`
--
ALTER TABLE `semua_tingkatan`
  ADD CONSTRAINT `semua_tingkatan_ibfk_1` FOREIGN KEY (`id_jenis_kegiatan`) REFERENCES `jenis_kegiatan` (`id_jenis_kegiatan`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKuser946152` FOREIGN KEY (`user_profil_kode`) REFERENCES `user_profil` (`user_profil_kode`);

--
-- Constraints for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `FKuser_acces132616` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`),
  ADD CONSTRAINT `FKuser_acces470624` FOREIGN KEY (`user_profil_kode`) REFERENCES `user_profil` (`user_profil_kode`);

--
-- Constraints for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `FKuser_sub_m552904` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`);

--
-- Constraints for table `user_sub_sub_menu`
--
ALTER TABLE `user_sub_sub_menu`
  ADD CONSTRAINT `user_sub_sub_menu_ibfk_1` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id`);

--
-- Constraints for table `validasi_kegiatan`
--
ALTER TABLE `validasi_kegiatan`
  ADD CONSTRAINT `validasi_kegiatan_ibfk_1` FOREIGN KEY (`jenis_validasi`) REFERENCES `jenis_validasi` (`id`),
  ADD CONSTRAINT `validasi_kegiatan_ibfk_2` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id_kegiatan`),
  ADD CONSTRAINT `validasi_kegiatan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;