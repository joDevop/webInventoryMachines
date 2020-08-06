-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2020 a las 04:44:24
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_inventor_machines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_machines`
--

CREATE TABLE `table_machines` (
  `id_machine` int(100) NOT NULL,
  `type_machine` varchar(20) NOT NULL,
  `ip_range` varchar(15) NOT NULL,
  `mac_address` varchar(14) NOT NULL,
  `campus` varchar(45) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `imagen` longblob,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `observ` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_machines`
--

INSERT INTO `table_machines` (`id_machine`, `type_machine`, `ip_range`, `mac_address`, `campus`, `create_date`, `imagen`, `ruta_imagen`, `observ`) VALUES
(1, 'TV RASPBERRY PI', '192.168.71.26', 'B8:27:EB:71:97', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(2, 'TV RASPBERRY PI', '192.168.71.27', 'B8:27:EB:39:0C', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(3, 'TV RASPBERRY PI', '192.168.71.28', 'B8:27:EB:5F:59', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(4, 'TV RASPBERRY PI', '192.168.71.29', 'B8:27:EB:3E:16', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(5, 'TV RASPBERRY PI', '192.168.71.80', 'B8:27:EB:7B:FA', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(6, 'TV RASPBERRY PI', '192.168.71.81', 'B8:27:EB:7F:5C', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(7, 'TV RASPBERRY PI', '192.168.71.64', '', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(8, 'ATRIL', '192.168.71.102', '6C:4B:90:34:35', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(9, 'ATRIL', '192.168.71.25', '6C:4B:90:50:01', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(10, 'ATRIL', '192.168.71.213', '', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(11, 'TV RASPBERRY PI', '192.168.62.26', 'B8:27:EB:AC:53', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(12, 'TV RASPBERRY PI', '192.168.62.28', 'B8:27:EB:5E:3B', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(13, 'TV RASPBERRY PI', '192.168.62.29', 'B8:27:EB:68:55', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(14, 'TV RASPBERRY PI', '192.168.62.30', 'B8:27:EB:F8:D4', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(15, 'TV RASPBERRY PI', '192.168.62.31', 'B8:27:EB:2D:B6', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(16, 'TV RASPBERRY PI', '192.168.62.33', 'B8:27:EB:9D:57', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(17, 'ATRIL', '192.168.62.122', 'D0:27:88:91:5F', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(18, 'ATRIL', '192.168.62.34', '98:FA:9B:29:90', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(19, 'ATRIL', '192.168.62.37', '', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(20, 'ATRIL', '192.168.62.25', '6C:4B:90:67:9F', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(21, 'ATRIL', '192.168.12.25', '6C:4B:90:4F:F9', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(22, 'ATRIL', '192.168.12.35', '', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(23, 'TV RASPBERRY PI', '192.168.12.29', 'B8:27:EB:8A:23', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(24, 'TV RASPBERRY PI', '192.168.12.28', 'B8:27:EB:AE:15', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(25, 'TV RASPBERRY PI', '192.168.12.100', 'B8:27:EB:63:99', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(26, 'TV RASPBERRY PI', '192.168.12.101', 'B8:27:EB:63:DA', 'VIVA 1A IPS CALLE 35', '2020-06-12 21:11:06', NULL, NULL, NULL),
(27, 'TV RASPBERRY PI', '192.168.16.26', '', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(28, 'TV RASPBERRY PI', '192.168.16.28', '', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(29, 'ATRIL', '192.168.16.25', 'FC:3F:DB:0A:D2', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(30, 'ATRIL', '192.168.16.30', '6C:4B:90:67:9F', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(35, 'PC', '192.168.71.240', '98:EE:CB:25:1F', 'VIVA 1A IPS MACARENA', '2020-06-17 00:33:34', NULL, NULL, 'EQUIPO DE TECNICO EN SEDE\r\n'),
(36, 'PC', '192.168.200.100', 'R5:H8:0Y:K9:O9', 'MACARENA', '2020-07-02 04:07:13', '', 'deposit_img/', NULL),
(37, 'PC', '192.168.200.100', 'R5:H8:0Y:K9:O9', 'MACARENA', '2020-07-02 04:07:48', '', 'deposit_img/', NULL),
(38, 'PC', '192.168.200.100', 'R5:H8:0Y:K9:O9', 'MACARENA', '2020-07-02 04:08:44', '', 'deposit_img/', NULL),
(39, 'PC', '192.168.200.100', 'R5:H8:0Y:K9:O9', 'SAN JOSE', '2020-07-02 04:09:44', 0x89504e470d0a1a0a0000000d4948445200000200000002000806000000f478d4fa0000000467414d410000b18f0bfc6105000000206348524d00007a26000080840000fa00000080e8000075300000ea6000003a98000017709cba513c00000006624b4744000000000000f943bb7f000000097048597300000ee900000ee9010e33421c0000000774494d4507e4040716012414e5671f0000229b4944415478daeddd7b909df57ddff1cff7f73ce7ec455a095d40028c416071b30da632b7c48895b04012173b17268ded89934966da346e3a9da469932629e3b84d9a34eda48dd35b92c68ee369ec4c70638400a30b6023848d6f31175932083020842e2badf6ec9e739ee7f7ed1f2b134b48a0cb9ef39cdddffb35a3011b69cff739ab3dcffbb94b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000503dab7a000080b4eace0fcda9e5d985210b6f97d91c33ab553d532f8931d68a76eb6cc9f3aa67e929a632466f48beddb3ecc1a2afefd0e6bff80b3fb13f0a00a8c4da9ffec8c290e7d76579ed9a2ccfcf330be7bafb42498392b2aae7eb253196d944e3d03cf792f7e548515253d22b66f66dc9c662513c3b3a32f23fb67ce98143928e1b0304000074d9ea0f7f784e2dafdf90e7f50f842c5b26e9220b61c82c84aa67eb55b12cd4183b288f65d5a3f4bae8d15f33b307638c4f4afa2f0f7ceeaf278ef51b090000e8a2db3ff2d1cbb27afdc321afad310b978710faab9e693a20004e9ebbbf6616ee2b5acddff6185fd870f7ddf187ff3b0100005d70e79d7786e6c0d0b290e7ff22cb6bb758080bcdf8083e5104c0297399dddb6eb5fe9ba40737fccddfbcfe06b2bb0900baa039387475a8e5bf95d5ea1f0c59c6ca1fdd6272dd9ae7b54f7851bc77e5073ef0fa7a9f932900a0c36efb999f7b67c86bff32afd56f0f210c563dcf74e41ed56e37253fa113dc7114339d93e5b54bcb56f8e2f9efb87c7ce7f6a7d80300009db4f6a73f72569ee53f96e7b5db38de8f4a99de579f957fb27f4e2d93380400001d55eb1fb8cab2fc4321847955cf02c8fcc7ca56eba6553ffe934600004087dcfe918f9e1742589d65d9c5e2983f7a439ed56b9fc8ea350200003ac5f2fc3299adb61038df0abdc36c5911cb2bb9a5220074c0f09dff2c0bb9ce0ec12eac7a16e0486e41e137d90300001d30586f9c278fd75808f5aa67018e16b2b08a0000800e0841e7cafd3d5cef8f1e359b0000800e08211b32d3d955cf011c07270102402798595d326efa831ee5dc0700003ac12573399fb1e859fce50480ce30f1c035f430020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000d011ee2679d55300c74300004007d8e4aa9f0040cf220000a003dc63e9ee45d57300c7660400007442d16e171ee344d57300c793573d0000cc44ede6783364d9a8bbcbccaa1e07388297257b0000a013da13e3ada2d56cc4b2ac7a14e00dc61b0d0200003ac12515edb617ad66d5a3006fd0181d250000a0538a764bad8971c5c85e00f48e56b3a95816040000748ac752ede6b8dacd09ae07444f70970e8d1c90c4658000d05165bba5e6d8219545bbea51903cd3c4d8987e70588a0000800e7277b526c6d53c34aab2e4b600a84e6b6242870e8cbcfebf090000e8b058169a181b3dbc27800840f7b59a2d8d8eec97c7f8faffc77d0000a00bcaa2adf1d103f218d5376bb6f2bc26717f007441737c5c63074755b68f3c0c450000409794455be3870ea82c0bf50dce52addea790f1318cce28cb52adf1718d1d3ca863dd8f82bf7900d045b12c353136aaa2d554bd7f50b5fe7ee5b5ba429673c7404c8958966a8e4fa868b7347ee8d0717f1f010000dde6aea2d554d96ea93551575eef5396d79465b92c84c910a0058ee0314e6ec57a3cfd2f3683b84f9e681acb5245bb25775759149a186bc8dfe2bd220000a0227e38048a56533253089942c86481b5ffd13c46b55a2d39775438c2eb0150146ab75b479ce4f756080000e805ee8a65a1c8a582c714cb528d4643ee04c054e1324000001244000000902002000080041100000024880000002041040000000922000000485025f70118fee007b35896435e96f383fba0ccfae55e57a04766ba76bb3d5016c53c490355cf82ae18b718c7251d34b39d66b6ebd18d1bdba7fd55019cb68e07c0b2db6f0ffd6539944917495a2ae97c6fb5ce92b4c0a43992fa24d525e572e7f657339c49f518e3502ccbbeaa674157342535e5de706997a4bdcb6eb861dc42d81bcc9e36b3c714c2eead1b3694a7fb42004e4e470260d9edb787beb29c9b4b57a92cdf2be952496f93748ea4b324cdb5c995fe3f3c0e938760a4c39dbb7925ccdd0bc578b0945e74f7a783d9aeab57acf84e9e65f7e559b6eb91fbef2706802e98d20018bee5969a9b9def45f17e995d2de9329bdcf23f533cda02c0a4dcdde74b9a2fe9cae8deb6a278b1d56eaf2e42f8ded52b56fc9dccbef6d58d1b5b550f0acc645312002b2657fc17b9d91a49c3265da1c92d7e9e3500e0add4dcfd424917c6180fb9fbf599d937aebdf1c6bbcd6ccb639b37130240079cd60afae69b6f0eed10e645b3db24dd29b32b35b9e2078093e6d26cb92f8fee5747e9ea10c2d6eb57adfa6456abedfcf2bdf77268009842d9a9fec1e5b7deda5f84b05cd2afc8ec4332bb4ed2dcaa1708bd2dc6a8b22c3907006fa526e93cb95f5196e565b12c07dfb664c9532feddc396d1e9577c1d2a56f97b44ad27955cf3213b8bbda6d2e20994a27bd0760cd9a3536219d51ba7f48d2cf48ba529367f203c094726996dc6f2dcbf2d2ccec8aeb56aefc44c8f3dd8f3ef00005099ca693baf07e78f5eaace17e51943e6ed2af98748dcc58f903e82cf78b628c3f5714c59fc466f3eaeb87874f79ef258049271c002b6eb925937499ccfe83cc7e46d292aa8707900e9766c5183fd88af10f8b106eb9e6a69b8800e0349c50000caf5e9d47b3656ef6fb32bb5d9337f001806e0b727f5f6cb73f61ee3f711d11009cb2b70c801b57afce5dba4221fc4799ad92d45ff5d000d2e6ee5715457197c7f8e3d7ad5cc93dc48153f0a63f38cb6fbb2d78965d24b37f2fe906715d3f801ee1315e5614c55d32bbf1faf7bf9f1b8d0127e9b80170c39a35e66579b6dc7f4f662b751a970c024027b8fbe5ad56eb0fda315e7cf54d371101c049387600dc759735ebf541937ecda4d5fac17dfb01a0d7b82f53597e328e8c70451270128e1900cbb76eadf5b75a3f25e923e2983f801e17cb72380c0dfd6ed57300d3c91b026078edda60d2a526fd1b339b5ff580007002b2b22c3ffaa32b57aead7a1060ba383200eebacbc6fafafa25fd9accde51f5700070c2dce735cbf213cb962d63af2570028e0880e55bb786818989b592ee108fef0530cdc4b27c77367bf6af573d07301dbc1e00d7df79a7c55a6db649ff5a6643550f0600a7202fcbf217ae5fb97261d58300bdeef500a8351a2194e5ed871fe90b00d3924b8b6259fe46d57300bd2e48d2b265cbac6834faccfd639a7c0c27004c57593bc69fbef6a69be6553d08d0cb8224cd5eb4c86a03032b245d55f5400070dadc177a8cbf5cf518402f0b3ff4cf0f891bfe009819b25896ffb8ea21805e166ebae30ecbb26c81a435550f030053c4628ce75dbb72e5d5550f02f4aa5094a5ca18d748e278198099a44feeffa4ea21805e95cbdd3479bf7f009849b232c61baa1e02e8556156ad96495a5ef5200030c52cc6b868d9f0f019550f02f4a230d66c5e2e6951d58300c09473ef0b217cb0ea31805e143479e95f38dd2f04003d28b718d9c3091c43ae102ead7a0833d3c0c080fafb7886c74c6766b210644673ce742323fb756064bfcab2ac728ce0d2c555bf17402fca255d52d58b0f0e0eeaca2bdfa3f7bdef462d5ab4485960a530d3b563d44451a8885ef528e8b0184bb59b4d7dfd6b8f6be303f76964fffe2ac630b99f53f57b01f4a25cd2922a5e78ce9cb95a31bc42ab56add6e0e0a0b22c93190f209ce95a65a946bbad22c6aa474117b8bb56dcbc5a8bce5aacbff9ebbfd26bbb77777b048bee3cdc0c388620e98c6ebf689ee7bae4924b75f32d6b353434a43ccf59f903339099a9bf7f40ef5eb64cefbef23d1a1818e8fa0c1e6356f5fb00f4a220a9eb753cef8c79bae25d5768f6ac59acf88104d46a75dd30bc52f3e62fe8fa6bfbe4bd4e38be081c25489added171d181cd4a2c58b59f9030939f3acc5aaf7f575fd75cdccae5fb58a3b9d024709aae001405908aad779ee109092ac56d9a13e2bcd6655bdfc40afa966b798496cfc03e8223e7180a3705c0c00800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048502501e03ef90b403aaafc99cfa458f5f203bd26486a75fb45cbb2d4c4c444d5cb0ea08b8a765b1e2b590f7b2dc6b1aa971fe83541d2a16ebf68a3d1d0ae5daf54bdec00ba68d7cb2fa9d96c56f1d21e8ae260d5cb0ff49a2069b4db2f7af0e0413df5f453dab3774fd5cb0fa00b8a765b8f3ff6a84646f677ffc5cd7cf3e6cd45d5ef01d06b82a47ddd7ed176bba5ef7e779b366fdaa85777bf2ae7840060c66a359bdafa9547f48daf3daef146a3ebaf6f122b7fe01872493b255dd5ed171e19d9af871f7948fbf6efd3d2a5176bc1fc05aad7eb55bf1fe830cb32857a5d96e5558f828e72b59a4ded7ae5653dbb6387bebae52bdab7776f25835808ecfe9fa6b2dc3538d7d53718156a51eda2a5a2ed9a381474686fa6d684553de2b496bbb4adaab7706464bfb66cf98a9e7aea3b3ae38c79aad7ea12dfcf19cd2c28cb7385c015a8335dabd5d2ee5777e995975f52abd5f5738d7fc0cd8c138ea6912c77cd3f276ade39a5ce5814357b5e547dc0e52ab477f74135c7a39a6341630732b5277235466adafb624dad713e534e56ae189f51851fc665596adfbe7ddab7afeb47225081a228d46a36559665d5a3200dd1a4ed550f81b766c1356f71d4f957145a7c51a1b967b966cf8b0ad9e47f9f68141a1d6bc9b342f5d9d2d022c994697cb4a6b98beb3af86abf763f5b57d1662bf244e5e6fe842417dbde00669ec24378b0ea21f0e6ea03ae77bcb7adf32e2fb4f81da5fa064fecbc3057a9fea1528b879a9a7f4e4b8373faf5eab3831add9b55bd48d3429ec5f8bd32cb5e94f4f6aa870180296536213302a067b9669de1ba7c794b4baf6e6bf6fc533d21dc559f3da1b32f6fab7f6ed4ae6d83daf362adea85eb797999e74db93f2a330200c04ce2218457bfba61c3eeaa07c1b1b806865c57ad6eeaa2656df50d9efe57cc6aa5e69f7748b5be28f7d9dafb7d22e0cd0499b9ccd6573d08004cb1d2cc36553d048e2def93de35dcd2d26ba666e5ff03218b1a3ab3a173df39a6d90b38d7e8cd048520996d944425039831ccac9985f0a755cf8137b2e05af29e4297fe685bb5bea9fffa218f9abbb8a1732e6e2804ee33733ce1a17bee71c5b84bee1c270330537830db79de8205dfac7a101ccd3538c7f5ee954d0d0c756ee59cd54acd7ffbb8165dd8ae7a817bd60faeff8b92fe5212fb4b00cc046530fbd4e73fff793ed37a8c05e9a2f7b635ff9cce3f18aa6f765b0b973494d7d80b702c41926cf232c0c7243d5af5400070ba2c84ddc1ecb355cf81a3b9f2baeb92ebdb5db9fd8c59d4ac792d9d793e7b018e2548d2e6f5ebddcd465dfa63f1dc6c00d35b19b2ecff6cd9bcf9a5aa07c1514c5af0b6a8b967766f35d33fbbd0fcb755f214ca9ef77a8345b3e8d246495fa97a2800385516c26b2184ff55f51c782333e9bccb8bd7efeed795d70ca5b27a5bc69d82dfe0f5b7e4cbebd67966b6dfcc7e5fd2a1aa070380535086107e77eb860d2f543d08dec84c5ab4a4bba765b8a4ac5e6a700e3bb78f76441365f57a54080fbbf47fab1e0c004e5608e18960f699aae7c0719834b4b0fb2be25abf6bd63cce073dda1101b0e1eebbbded7e289afdb1a467aa1e0e004e94998d9bf4eb5b376de2c9623dca24f50d74ff8cfc2c77d52b78dd5ef786a3225f79ef7bbda8d79f96f4714907aa1e10004e84e5f9efc4b1b187ab9e036fceab580ffbe15f38c21b4f8bb8eb2e9f5596ed10c2bd92feab78db00f4b82ccbfed6f2fc7f3ff1c41345d5b3e0f85c526bbcfb0f9e2d4b537b8207de1eed98e7456ef8bbbf73771f95f467923e55f59000703c59967dd3b2ecb7438c7bab9e056fc1a5437bbb7f3a7e6bdc34ba8f47041fedb8df89cdebd64593be2ff7ff24f72f543d28001ccd4278c1cc3e66ee4f6dddb081bd953dce5ddaf56c7757c466a658661a1f650fc0d1de34c536df7b6f29699ba44f487aa0ea6101e00782d92e37fb8542dab275d32656fed38047e9c5a76a5d3d0fc0cba072a22e8f04c0d1de725fcc43ebd71732fb964bbfe9d2e7aa1e180042083b3d848fee97367d9df394a6957d2f071dd8ddbdc3008dd14c7b5ee8c02307678013fa2e3c74efbd85ccbea1c93d017f2e1e1a04a02259963d6e663f7bd06ce37366a5366f2600a60d53bb293dfd48ad4baf17d41cedd7deefe7552f784f3ae10c7b78ddbac2cc9e96f4bb72ff2d497baa1e1e40523c84f01933fba510c297b76fde5cb0f29f7e3c4acf7ea3a63ddfeffc5e80c6819a5e7e6650458bddffc77252df8187d6ad2b14e3b3eefea7d1fd632e7dbdea050030f3851046b3107e39847097997d7deba64dec859cb64c8d83a66fded7a776079fd1138b4ca3bb07b58fadffe33ae9047be8befb62db7d8fbb7f51eebf28f73f90c4e537003ac143080fb8f413c1ec2f73e9d9ad9b367153f769cea3f4fda7737d637d9f6247522e686ccf80767e7d4065c1d6fff19c521a6db9ff7e97d4b871cd9a2724bd28f72fcbece725dd2ca9bfea850230fd65213c2be9e316c2d656b3b9e3892d5b4a71c2df0c616a4db8b66dada97f8eeb5d37b6a6ec098126d3d8de016ddf32a4f151aefd7f33a7f5ee3cbf63875f72e18563d1ec79971e73b32f4b92494b24d5ab5e38f49e18a3cab29457723f504c072184e715c2bf0b66ffb956ab3d5cafd5766d7de8a169b7d57fc1d2a56f97b44ad27955cfd29b4c4553daff4aa6c601d3591794cadfe4dcc0a21db56f774365f1267f153c6874f7909e7964e8f08d7fd8fa7f33a77d70e481071e704913d7ae59f3bd5cfa7e267dc363fcb4cc6e36b39b255d2abe0b00de84998d5b088f99f4e7267d2766d9733184d1471f7c70daadf871324c6323d2771fab6b6c24e89d37b6b4f8a25276b26b0c9362bbae5ddb66ebc527fb357e902dff13316567476c5dbfde254d0c0f0f3f1febf59795654f68f292c1cb24fd88a4ab25bd4bd250d50b0da0721eccf62b84ef98f405b93f26b3ddb52c7b25cfb2f18727372c900453b3e17afeef73ed7d29e89c8b4b5d727d4b0bdf16dffab080498a75edd939a817bed5af8943995ae3ddbfd5f07435e5a7476e9ebc2ca725e9d595b7ddf65a8c71bb4b9b25cd96fb7c494b5cbac0cc2e9074aea4399a8c823e9de6218904e521af5d68d3e87d739942514cbb4300eede14c79f4f8e999b7b21b3a6a48685b04beedb5dfa662ccbad9246cc6c2c98ed0d66a35b366e646b3f59a6b22d1d7835a83112f4f2b64c7316b8ce5a52e88cb3a3669de10a799459ae3c0b6ab7328dedabe9d5efd5b5ffe55ced66a6e698899dcd27a7a3d7476cbce79e2869fcf0af5757ae59f35c74ff8e4b7d32ebd3e47902d9e15f64db49ea1b9cbd60d619f3d7499a5ff52c27aa2cda6a4e345416edaa473971663ab867cf8fc4b29c4643f7049799dbe43f63306b499a90d958599687bef6c8235144158e3079a3a003bb8346f74abb9fcf94d55c592eb9d73536e68aa5cb5d2a0b537b22a86cb3d23f555dbd4072e3faf53f1c04384d77fee22f1fd074bb2ba34979593bf9637c159b7ff6d94fdef7d9cf76f0aa6500ffc0144ba9d998fc77498aa5abd1c8a7dddec35ec656370000092200000048100100004082080000001244000000902002000080041100000024880000002041040000000922000000481001000040820800000012440000009020020000800411000000248800000020410400000009220000004810010000408208000000124400000090200200008004110000002488000000204104000000092200000048100100004082f2aa0748cd8ad5abf332840149759b7cff4f39c246f7bdb66070cebc20ab7aa94e5c2c4bc5b2505996558f72520eecdd7beeb2e5cb5ba7fae74d7299c5ccac15b26c6ccb860d13552f1380b411005d303c3c6c1a1898e566431ee33b24bd5fd23f927481a439d2a9adc2c7470f8466e3d0bc53fce395288bb6262626541645d5a39c1497b69de697689bb4cfa56f9665f9d965cb973f92853036268d3cb97973ac7af900a48700e8b0e1b56b073cc685927e52d2cf7908979b944dd5d78fd36c4bba2c4b798c72f7aa473959a7f5b3e252eeeee746e95c49b79ad90177bfbbcffdf7ae5db972d7d68d1b0f54bd8000d2c239009d6337ac5d3bd7a50f2a84ff27b3df97f46e4de1ca1fd397bbcf2dcbf26783fbc331c65fbd667878f1f0f0f0f4d9950360da23003ae0ce3befb41b6eb9e54c933ee6d227255d25f6b6e018a2fb596551fc2b77fff331f70bde393ccccf2480aee0c3a603f6341a0b4396fd9e49bf61d2bcaae741cfeb2bcbf2e6e8fee93e6949d5c30048030130c586d7ae9d13dd7f55d24f481aac7a1e4c1b99c7784d70ffa36b868717553d0c80998f009842efbbf5d6cca59f92f4b39a3cbb1f3819f55896ef73f7dfb86ec58afeaa870130b311005328486f77e99f4a5a58f52c98b6e69631ae8aeed7553d0880998d009822d7df724b66ee3f6fd285e27dc5e970bf30baffd2b5ef7fff40d5a30098b958514d91cc6cb1bbdf2e696ed5b360daeb8b6579b9c7786dd5830098b908802992992d376981a6d36df9d0cbdee665f993550f0160e62200a6ce8d62eb1f5367768c71c9b265cbf81905d0117cb84c819beeb8a326b377c98ccbfe305582bbcf09838367543d08809989009802658cf334b9f5cffb89a93427d46a97543d0480998915d614886539e4eedce31f53adeff07925988edc5dd3efa1574808013005b21064c6b97f987ac6cfe8b465529434bd9e7b8da4f0e132052cc651b9f3838ea936a1105ead7a089c1a975a92c6aa9e033816332b098029d027ed9334a2c9e207a6ca68cdec7b550f8153362a6977d54300c76266a304c01458bf7e7d21b3a72435aa9e0533460c211c78f84b5fda53f520384521ec95d90eb161801e1442d84e004c11971e72e940d57360c638144260eb7f1adb333838e2d2d3727fadea5980a305b32f100053249a3d2ae91551fb980a662f29847bab1e03a7eec9cf7f3e5a8ccf497aa2ea59801f66218cd5b2ecd304c014f9f2ba752f98f4254907ab9e05d3deb8993d511e38b0b1ea41707a82f49ca44deecee7027a4616c2179b65f9320130753c987d4ad23392caaa87c1f465663bb32cfbab279e78a25df52c383d9beebb6fbf4b9b253d5af52c802499d93e933e1e242700a6d0a675ebb649fa8ca497257107109c8afd16c23d8f6fda747fd583606a6459f68c997dcea59d55cf82e41521cbfe2c4adf7d6cd3260260aae579fe69497fadc9cb028193316621dc57abd73f290272c6d874cf3d875c7a40d2a75de2844054c543085f6cbaff4ee3f0b96adcbe768a3db76d5b6bc9d2a54fcafd4c4917c86c403c22f8753146956529e716a9471b33b32fd56bb53fdcb261c393550f83a9f5fcf6eda3e72f5dfa8adcfb4d3a5f664355cf34ddb8bbda6d8e8a9da232983d98f7f5fdf37aadf6dad7376c708900e8889ddbb78f2e59baf4db926a92ce3bfcc34e048800388e110be10bf55aed8fb66cdcf858d5c3a033ae79cf7bf68db75a3b24b9ccce95344f7c2e9c3002e0d49859c342b8bb96e7ffd6a4ef6d79f0c1d73f7c09800ed9b963c781254b973eee66e39274f8a12efd4afc079e003842cbcc9e0e217ca6bf56fbc347376efc4ed503a1739e7aea29eddcb163df928b2f7e5ad23eb9f7491a92d9acaa679b0e088093569ad9b742087fab107ebd945e787cd3a6233e7809800edab96347f3f90f7ff8abe7bffcf2b7cd7d545221b35cd2a0127def0900b9490d33db66d23d599e7f6a96d99f3cb269d3beaa074377ecdcbefdd045975cf2f7eefe6d4d5e365cc82cd3e406425ef57cbd8a003841660d337bc6cceec96ab5ff19b2ecbf7f75d3a643afecdcf9c6df5af5aca9181e1eae6960e04a37bb46ee97c96cb1a4397e78af40a7bf118757b721581830b3fec321d2f59340cbb2a8b79acdd9658cb56ebff6e1ea28dd7dc2dd1b5dac90a8c987c2bc26f7974208bb439e7f35cbf3fb1e7de0011e1693b015ab57cf8a6697c8ec5a49974a3a47d290263f173849fb87c418f3f1f1f1791e239174a452d2b8dc7747e9a52ccf5f0b668f371b8d75dfdabab5a93739a19800a8c09a356bf271699187b0d0a55992b28e0780bb6496e5b5bed9799ecf56087555b017a22cda83ed56735e8cb1afdbafade82ea91d3d1e8a4571d0ddbb75d7c652ee2321cb9e57967d77cbfdf78f777dd9d1f36ebae38ebeb22c17b8fb4249b30e473a0e8b31d65acde6d992ea55cfd24b5c2a14e368909e1b91b63d2335b57973b2bb58010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c3fff1f364d2745e9eb9b470000002574455874646174653a63726561746500323032302d30342d30375432323a30313a33362b30303a30309ba2bb640000002574455874646174653a6d6f6469667900323032302d30342d30375432323a30313a33362b30303a3030eaff03d80000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a0000000049454e44ae426082, 'deposit_img/pc.png', NULL),
(40, 'PC', '192.168.200.100', 'R5:H8:0Y:K9:O9', 'SAN JOSE', '2020-07-02 04:10:09', 0x89504e470d0a1a0a0000000d49484452000000400000004008030000009db781ec0000000373424954080808dbe14fe00000000970485973000001bb000001bb013aece3e20000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a00000180504c5445ffffffffff0080ff80aaaa55bfbf40cccc33bfbf40aac655b9d146aad555bbcc44b4d24bb8c647aec951b3cc4db6ce49aed146b1c84eb8cc47b6d149b0ca4fafcf48b6cc49b1cb48b3cc4db2d04db1cd4eb3ce4cb2cf4db3ce4cb3cc4db5ce4ab3cb4cb4cc4bafca48b5cd4ab2ce49b4cc4bb2cd4ab2cf4ab3cc4db2ce4ab4cd4bb3ce4cb4cc4bb2cd4ab3cd4cb3ce4cb2cc4bb3cd4ab4ce4bb3cc4cb2cd4ab3ce4cb3cd4ab4ce4bb3ce4ab4cc4bb3cd4ab3cd4cb3cc4cb2cd4bb3ce4cb2cc4bb3cd4cb4cd4bb3ce4bb4cd4bb2cd4bb3cd4ab3cd4cb4cd4bb3cc4ab3ce4cb4cc4bb3cc4ab3cd4cb3cd4bb3cd4ab3ce4bb3cd4ab4ce4bb3cd4cb3cd4bb4ce4bb3cd4bb3cd4bb3cd4ab3cd4bb3cd4bb3cd4bb3cc4bb3cd4bb3cd4ab3cd4bb3ce4bb3cd4ab3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cc4ab3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb3cd4bb4ce4db4ce4eb5cf51b7d056b9d15ac1d66bc5d976cbdd83d5e49cd6e49ddce8ade1ebb7f7faecfafbf2ffffff3198be490000007074524e5300010203040508090b0c0f11121314151617191c1d202327282b2e2f35393c3e40414348494b4c4f50595c5e5f6065686a6b6d6f717275777c7d7f80838587888a8b8c8e8f909495979b9ca1a2a4a8aab9babdc3c4c6c8cad3d7dddee0e2e7e8e9eaebeef0f1f2f5f7f7f8fafbfcfdfe831986ca000001fb4944415458c3ed96e753224110c54744f40c98b370228aca613a13e61323e62cea9d184f11c1362770ff7577a7775d0564db2a3f58d6be2ffba6b7dfaf0a666b7a184b20af2f2fbe58b2d5c7a85a833ff1c5199823037ec1ffacd85af129fc24038c7fa187b194aaf6a1e985a5d9e10e8b81b109586174b5c15ecdd436bcc8efb507a0ee0300d30ec4e80c7c1fc8b3dfa710a7e346723c751c128abc8d43bcfde2f652495ede5ef067272d6f0d4bcdd751e1e906f3374f42f45a32271594fc8f4d9eba17042182808868efb9f39908002fa6eec4d403da07d1dea11dd3ce57cabffbfc311ab9427b15893e9ecbbb59a609704352756b0256930396b5f239e1e48050b60620b35a4399ec9b2acf515f80aea8454345d85750ef50cf4d833b28febd836992b78386ec5257da600820e836c8802e7c3540070ca0efc27c7a40de623315600ea10fa473804579574b05d42a0b0b073428cb262aa0495934e8001da003be14c0aa2c1d5480435958392023280fce7c2a20ff0c7d3003cfb4de57a39b76268ebebdf3183dd2409c34d101a649d1853d46f51eec7495a2a301182b75394b128e182ae05d7d0380cd2f0ab7f9c8ffa223fc50246ba30ceb83d82bdd182f1c90a7bd0ed0019f02d8e7fd236a618417f6c98075dedfaa165a79619d0c704aeddb66b590bb2b555cf4abaf6dfe5f7fe1eb42f9e2e14673c2d6676a782f78bf1b4fa20000000049454e44ae426082, 'deposit_img/android.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_user_tec`
--

CREATE TABLE `table_user_tec` (
  `id` int(3) NOT NULL,
  `id_user_tec` int(3) DEFAULT NULL,
  `name_tec` varchar(256) DEFAULT NULL,
  `last_name_tec` varchar(256) DEFAULT NULL,
  `campus_tec` varchar(256) DEFAULT NULL,
  `position_job` varchar(256) DEFAULT NULL,
  `email_tec` varchar(256) NOT NULL,
  `password_tec` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `test` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_user_tec`
--

INSERT INTO `table_user_tec` (`id`, `id_user_tec`, `name_tec`, `last_name_tec`, `campus_tec`, `position_job`, `email_tec`, `password_tec`, `active`, `test`) VALUES
(1, NULL, 'Jefferson Javier', 'Ortega Pacheco', 'VIVA 1A MACARENA', 'Support IT', 'jortega@viva1a.com.co', '.jortega', 0, NULL),
(2, NULL, NULL, NULL, NULL, 'systems technician IT', 'jmendoza@viva1a.com.co', '.jmendoza', 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  ADD PRIMARY KEY (`id_machine`);

--
-- Indices de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  MODIFY `id_machine` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
