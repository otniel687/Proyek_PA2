-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2022 pada 18.38
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa_pelabuhan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_berita` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `tgl_berita`, `image`, `description`, `sumber`, `created_at`, `updated_at`) VALUES
(1, 'Pelabuhan Balige Resmi Berganti Nama jadi Pelabuhan Mulia Raja Napitupulu', '2021-11-21', 'public/images/h5jTzY27pHIgG4Ix5pzJpKXdJo2EBRCU8wWMRo2l.jpg', 'Pemerintah Kabupaten Toba bersama Balai Pengelolaan Transportasi Darat Wilayah II Sumatera resmi menabalkan Pelabuhan Kapal Motor Penyeberangan Balige di tepian Danau Toba Kota Balige, Kecamatan Balige, Kabupaten Toba, menjadi Pelabuhan Mulia Raja Napitupulu Balige, Sabtu (20/11/2021).\r\n\r\nPenabalan nama pelabuhan tersebut dihadiri langsung Bupati Toba Poltak Sitorus didampingi Wakil Bupati Tonny Simanjuntak, Kepala BPTD Wilayah II Sumatera Batara Pardede, Ketua DPRD Toba Effendi Napitupulu, Dandim 0210/TU Mayor Inf.Kaminton Napitupulu, Kabag Ops Polres Toba Kompol Jhony Andries Siregar dan perwakilan Kejaksaan Negeri Toba Samosir serta PN Balige, para tokoh masyarakat, adat, agama, dan pemuda marga Napitupulu.\r\n\r\nBupati Toba Poltak Sitorus dalam sambutannya menyampaikan, nama Mulia Raja Napitupulu adalah salah satu nama besar dari 4 marga keturunan Raja Sonak Malela (Simangunsong, Marpaung, Napitupulu dan Pardede).', 'TOBA, METRODAILY.id', '2022-05-18 23:43:14', '2022-06-03 09:14:13'),
(2, 'Pelabuhan Penyeberangan Mulia Raja Balige Dilengkapi ALMA', '2022-04-29', 'public/images/3SFSRSFw809WJGJn4kGVbAZ7EFqbxZ91EejGtGkS.jpg', 'Pelabuhan Mulia Raja Napitupulu Balige, Kabupaten Toba, telah dilengkapi dengan Anjungan Listrik Mandiri (ALMA), sehingga kapal penyeberangan KM Porapora sudah bisa memanfaatkannya. Demikian halnya dengan kendaraan listrik juga sudah dapat melakukan pengecasan di tempat tersebut.\r\n\r\n\"KMP Porapora yang selama ini saat bersandar di pelabuhan menggunakan genset untuk keperluannya, sejak hari ini digantikan dengan ALMA. Selain itu, mobil listrik juga dapat mengecas di sini,\" ujar Manajer Perusahaan Listrik Negara (PLN) Persero UP3 Area Sibolga, Darwin Simanjuntak, Kamis (28/4) saat peresmian operasional ALMA.\r\n\r\nMenurutnya, ALMA di Balige dan pelabuhan Muara yang baru diresmikan adalah yang ketiga setelah Medan dan Pematangsiantar.\r\n\r\nPenggunaan ALMA ini, lanjutnya, sesuai dengan arahan Presiden Republik Indonesia, Joko Widodo, untuk mengurangi pemakaian bahan bakar minyak solar hingga 40 persen sekaligus mendukung program Go Green agar Danau Toba tidak tercemar. (G1/f)', 'Tribun Medan/Maurits Pardosi', '2022-05-19 00:19:13', '2022-06-03 09:11:26'),
(3, 'Peresmian Dan Pengoperasian Tujuh Pelabuhan Serta Empat Kapal Motor Penyeberangan Di Kawasan Danau Toba', '2022-02-02', 'public/images/IDZ7oP64cyGDiKU2PoWayXcM3XW8NcxH0It2NLCU.jpg', 'Hari ini, tujuh pelabuhan penyeberangan di Kawasan Danau Toba sudah selesai dibangun dan bisa dimanfaatkan oleh masyarakat. Ketujuh pelabuhan itu meliputi Pelabuhan Ajibata dan (Pelabuhan) Balige di Kabupaten Toba, Pelabuhan Tiga Ras di Kabupaten Simalungun, Pelabuhan Simanindo di Kabupaten Samosir, Pelabuhan Marbun Toruan/Baktiraja di Kabupaten Humbang Hasundutan, Pelabuhan Muara di Kabupaten Tapanuli Utara, Pelabuhan Tongging di Kabupaten Karo.\r\n\r\nPelabuhan dan kapal sangat dibutuhkan oleh masyarakat yang tinggal di sekitar Danau Toba untuk mendukung aktivitas dan mobilitas sehari-hari, menyeberang dari satu pelabuhan ke pelabuhan lain, meningkatkan konektivitas antarkecamatan dan antarkabupaten.\r\n\r\nUntuk memperlancar konektivitas di Kawasan Danau Toba, Kementerian Perhubungan menyampaikan bahwa pemerintah membangun 13 pelabuhan penyeberangan yang tersebar di tujuh kabupaten.\r\n\r\nHadirin yang saya hormati,\r\nSaya melihat (bahwa) yang dibutuhkan masyarakat di sekitar Danau Toba bukan hanya pelabuhan, melainkan juga kapal. Karena itu, hari ini pemerintah meluncurkan empat kapal motor penyeberangan, yaitu Kapal Motor Penyeberangan Pora-Pora (yang) berkapasitas 180 penumpang dan 21 kendaraan, Kapal Motor Penumpang Kaldera Toba (yang) berkapasitas 152 penumpang dan 15 kendaraan, Bus Air Kapal Motor Penumpang Asa-Asa dengan kapasitas 150 penumpang, dan Bus Air Kapal Motor Penumpang Jurung-Jurung dengan kapasitas 150 penumpang. Keberadaan kapal ini sangat penting karena selama ini masyarakat menggunakan kapal rakyat yang standar keselamatannya kurang bisa diandalkan.\r\n\r\nSaya berharap, dengan beroperasinya pelabuhan dan kapal-kapal ini, akan mendukung keberadaan destinasi pariwisata super prioritas Danau Toba sebagai salah satu destinasi wisata unggulan di Indonesia. Aksesnya ke berbagai tempat di Danau Toba akan menjadi lebih mudah, lebih cepat, dan lebih lancar.\r\n\r\nSaya rasa itu yang bisa saya sampaikan pada kesempatan yang baik ini. Dan dengan mengucap bismillahirrahmanirrahim, saya resmikan pengoperasian tujuh pelabuhan dan empat kapal motor penyeberangan pada sore hari ini.\r\n\r\nTerima kasih.', 'presidenri.go.id', '2022-06-03 09:25:22', '2022-06-03 09:25:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeris`
--

INSERT INTO `galeris` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'public/images/9P7yCnmX2uGpEId006poqhcdBBVuYGBHClBS5hju.jpg', '2022-05-18 23:46:14', '2022-05-19 00:21:44'),
(2, '2', 'public/images/krxPe45BzXwMvANozSuoUwbln3k9jZWauFFBpfkb.jpg', '2022-05-18 23:46:26', '2022-05-18 23:46:26'),
(3, '3', 'public/images/chYoeVdAROZdZ7KV0eb7rltlVcZRbMaPEXtOnCsT.jpg', '2022-05-18 23:46:36', '2022-05-18 23:46:36'),
(4, '4', 'public/images/JdQlqo7enrqxaOkVE1GgELddcbvEGQ386OTVMPDh.jpg', '2022-05-18 23:46:47', '2022-05-18 23:46:47'),
(5, '5', 'public/images/wWVwjSxzFTbkFgK9ElG7LazzBkY6k5k33wu8yquE.jpg', '2022-05-18 23:46:57', '2022-05-18 23:46:57'),
(6, '6', 'public/images/v0A4zXvT4igTs5JhjAcM0RTOcQzfb0ugNVDz6vxz.jpg', '2022-05-18 23:47:06', '2022-05-18 23:47:06'),
(7, '7', 'public/images/zH5RpLQdrU9lHG7OpOtvWkzLQHnANysPrjxfD7pC.jpg', '2022-05-18 23:47:14', '2022-05-18 23:47:14'),
(8, '8', 'public/images/i5beQfc8XIGDrIQPjCulzCKgcXH6tF0QyAtKmY8c.jpg', '2022-05-18 23:47:22', '2022-05-18 23:47:22'),
(9, '9', 'public/images/dT31nrFf9rpvTgY6JDo7jqns22W0DzJ3cHa284zr.jpg', '2022-05-18 23:47:30', '2022-05-18 23:47:30'),
(10, '10', 'public/images/J1VHd2TYaiPOT1u0gI0MEnqMoCFtlZgHLFZGjoSc.jpg', '2022-05-18 23:47:39', '2022-05-18 23:47:39'),
(11, '11', 'public/images/WHTi7ruAiKHoSVLuAk4haymxlSfdAI4wGQCo3GeD.jpg', '2022-05-18 23:47:49', '2022-05-18 23:47:49'),
(12, '12', 'public/images/WBI7nKA5G38bd8x4NIE1FVEfNX6TpAxYyGh4679l.jpg', '2022-05-18 23:47:57', '2022-05-19 00:22:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasis`
--

CREATE TABLE `informasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `informasis`
--

INSERT INTO `informasis` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Jadwal Keberangkatan Bulan April', 'public/images/WySecmnZJrBeBIL4pie5j3wDgHolEDoNxFCVaxCL.jpg', 'April', '2022-05-18 23:44:10', '2022-06-03 09:18:46'),
(2, 'Jadwal Keberangkatan Bulan Mei', 'public/images/aNg1ALI7WeGuvHUBP6iu8m8n3ckUOsp8FlkeRacm.jpg', 'Mei', '2022-05-18 23:45:10', '2022-06-03 09:18:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraans`
--

CREATE TABLE `kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_polisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kendaraans`
--

INSERT INTO `kendaraans` (`id`, `tanggal`, `waktu`, `nama`, `jenis`, `no_polisi`, `created_at`, `updated_at`) VALUES
(1, '2022-05-11', '08:00', 'Otniel Tambunan', 'Gol I (Sepeda Dayung)', NULL, '2022-05-24 03:44:31', '2022-05-24 03:44:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_19_020609_create_kendaraan_table', 1),
(6, '2022_04_19_045825_create_informasi_table', 1),
(7, '2022_04_19_123229_create_beritas_table', 1),
(8, '2022_04_28_084854_create_profiles_table', 1),
(9, '2022_05_04_033521_create_galeris_table', 1),
(10, '2022_05_07_104145_create_penumpangs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpangs`
--

CREATE TABLE `penumpangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penumpangs`
--

INSERT INTO `penumpangs` (`id`, `nama`, `jk`, `umur`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Otniel', 'Laki', '22', 'Tambunan', '2022-05-24 03:37:58', '2022-05-24 03:37:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Profil', 'public/images/Bz7V55L10He5fPmv2IkIObfMaOjvoYKuzM07oktZ.jpg', 'Pelabuhan Balige di Kabupaten Toba, Provinsi Sumatera Utara yang sejak dulu namanya tidak asing di seluruh nusantara, sebagai salah satu pelabuhan penyeberangan vital di Danau Toba, kini namanya berganti menjadi Pelabuhan Mulia Raja Napitupulu Balige. Lewat nama Mulia Raja Napitupulu yang mengandung arti dan makna besar, Bupati Toba Poltak Sitorus berharap pelabuhan ini akan kelak membawa dampak positif dan besar mendorong aspek pembangunan kepariwisataan di Toba. Di samping itu, juga membawa mulia bagi keturunan marga Mulia Raja Napitupulu dan kemuliaan bagi Tuhan Yang Maha Esa.', '2022-05-16 05:49:15', '2022-05-18 23:40:02'),
(2, 'Sejarah', 'public/images/MBjsWyProQQMw6tHufG0Pf1IZOfZ1BhJMrT0v1Eg.jpg', 'Angkutan air pertama kali yang digunakan masyarakat Balige adalah Sampan Kecil. Sekitar tahun 1960 sampan besar tersebut berganti dengan Perahu layar yang mampu memuat barang dan penumpang dalam jumlah yang besar ton. Kemudian Kapal Motor ada pada tahun 1962 tetapi kapal motor ini hanya ada 1 dan hanya untuk mengangkut batu dari daerah Sigaol ke Balige. Kegiatan pemasaran hasil bumi dari Kabupaten Toba Samosir paling banyak dididstribusikan ke daerah Kabupaten Samosir, dan juga didistribusikan ke daerah lain seperti Kabupten Humbahas, Kabupaten Tapanuli. Semakin berkembangnya Danau Toba dan Pulau Samosir maka kebutuhan akan transportasi air semakin meningkat. Kemudian pada tahun 1997 Pemerintah Daerah Kabupaten Toba Samosir yang dulunya masih Universitas Sumatera Utara 44 dipegang oleh Kabupaten Tapanuli Utara mengganti dermaga kayu itu menjadi dermaga yang terbuat dari beton.', '2022-05-18 06:09:01', '2022-05-18 23:39:50'),
(3, 'Tentang Pelabuhan', 'public/images/A1NUBimdx3jESkerdh688DX4F1Yyc3bEkCzyNBHa.jpg', 'Pelabuhan Balige di Kabupaten Toba, Provinsi Sumatera Utara yang sejak dulu namanya tidak asing di seluruh nusantara, sebagai salahsatu pelabuhan penyeberangan vital di Danau Toba, kini namanya berganti menjadi Pelabuhan Mulia Raja Napitupulu Balige. Lewat nama Mulia Raja Napitupulu yang mengandung arti dan makna besar, Bupati Toba Poltak Sitorus berharap pelabuhan ini akan kelak membawa dampak positif dan besar mendorong aspek pembangunan kepariwisataan di Toba. Di samping itu, juga membawa mulia bagi keturunan marga Mulia Raja Napitupulu dan kemuliaan bagi Tuhan Yang Maha Kuasa.', '2022-05-18 06:46:35', '2022-05-18 23:39:25'),
(4, 'Selamat Datang di Pelabuhan!', 'public/images/JN13SnSgeHwiObgC1Mpe3tdyhsw2MNKagSPUlMjs.jpg', 'Penetapan nama Pelabuhan Mulia Raja Napitupulu, berdasarkan Surat Kementerian Perhubungan Dirjen Perhubungan Darat Nomor Ap./0611/16/DRJD/2021 tertanggal 29 Juli 2021 yang diteken oleh Dirjen Perhubungan Darat Budi Setiyadi.', '2022-05-18 06:49:58', '2022-05-19 00:26:30'),
(5, 'Jadwal 1', 'public/images/0GsXx3f9lYf9njgbvaiZwxcopQHgI0TNx49tNci7.png', 'Jadwal', '2022-05-19 00:28:02', '2022-05-27 22:19:40'),
(6, 'Jadwal 2', 'public/images/jiGGjzWsa3MOKzsMjyoFPJyRY2H09I2rPPJmXTrv.png', 'Jadwal 2', '2022-05-19 00:28:22', '2022-05-27 22:19:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `google_id`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ini akun Admin', 'admin', 'admin@example.com', NULL, NULL, '$2y$10$hIqT9h9V/rASPtGWKJ8hF.xn7HV4FjCMEQNYou1riEJKhf6Cnk5F6', 'admin', 'KTNLmByPYXT73TgY12ZZmpIhhFujzTvbKqLnNTUQIJbMnpSXD6BXPZBVC37t', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(2, 'ini akun petugas (non admin)', 'user', 'user@example.com', NULL, NULL, '$2y$10$mF2oYwkTr0dDoEn5v4laSOEVZKLlT8qJfOkuKf/miV9g6RHm5mkOm', 'petugas', 'rromtGF1qbp8XZuCRzJOffChFr3Xovtbv5boizY2lED2vg2AULho0CAjp3OC', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(3, 'ini akun petugas (non admin)', 'petugas1', 'petugas1@example.com', NULL, NULL, '$2y$10$mstEai4eOCImatrfn9AGkuBUQjZEmuazYYs2QtTBtO3sXkjrqY/SO', 'petugas', '7pv4h6rLwxL9zBqvFzL1Vz3WRrBfFp8WUm1w4TQAT2GtOZFJosrnRx8DMk98', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(4, 'ini akun petugas (non admin)', 'petugas2', 'petugas2@example.com', NULL, NULL, '$2y$10$vmQQ/xnsm1ewWWe9skp4ZuqaCi91MIbeeDqRiCaqI4uN0LEA4OCMW', 'petugas', '63LS04Llgy6NcSeeeJD1LIaEDHQEPyRIAl0cV8bHDLCOViNrESIAQnNcuKW1', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(5, 'ini akun Customer (non admin)', 'petugas3', 'petugas3@example.com', NULL, NULL, '$2y$10$V/MV1s39kf600ukx9x0fv.I153siitQ.ZMDJWI3L7pEL19oCxw2/i', 'petugas', 'MdUSyOVyMW5A3fzAKHslIsRgnIgSqZthlzA3r0cgBs6ZhkG5cNpVuQaTMJrD', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(6, 'ini akun petugas (non admin)', 'petugas4', 'petugas4@example.com', NULL, NULL, '$2y$10$/m0E/BMkyle6xxe7lIlgh.a2OszR.hPGrUc4Ea.CJWMhY91/IheqW', 'petugas', 'Asvpjbsiv98ZL7nASZLSQEjCnDEKV0536FDWNRfCQ8ROBKI7cJfJKYcN5ZjI', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(7, 'ini akun Customer (non admin)', 'petugas5', 'petugas5@example.com', NULL, NULL, '$2y$10$b5v3cI44OMo.9g41Z84XiOrd1yoHqFQVTsFVD1xI/JZ9s77YMtPrS', 'petugas', 'u3Fs7cqxKvzrjh3nbNgHs46VqDr3Mg6Zhb9QIRiisfWggkdTAArz01NlbIeW', '2022-05-18 23:37:01', '2022-05-18 23:37:01'),
(8, 'ini akun Customer (non admin)', 'otniel', 'otniel@example.com', NULL, NULL, '$2y$10$WXtJxQ2NzvxmFSSsITDpbeu6By2igf4u5W7zcQ/azamn3pYxvduli', 'pelanggan', 'MNx4kivZhNvmes0PKgRKOrDsmUM17BcmEfRBbWYunu1rZNz3x8asZuVDFp5a', '2022-05-18 23:37:01', '2022-05-18 23:37:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasis`
--
ALTER TABLE `informasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penumpangs`
--
ALTER TABLE `penumpangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `informasis`
--
ALTER TABLE `informasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kendaraans`
--
ALTER TABLE `kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penumpangs`
--
ALTER TABLE `penumpangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
