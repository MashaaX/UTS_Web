-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 12:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(10) NOT NULL,
  `inst_type` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `spec` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `inst_type`, `item_name`, `color`, `spec`, `price`, `image`) VALUES
('G001', 'Accoustic Guitar', 'Yamaha Classic C315', 'Natural', 'Classic design, 650 mm string scale, Nylon Strings\r\nMaterial: Spruce, Agathis, and Nato\r\n', 950000, 'yamaha_yamaha-cs-40-gitar-klasik---natural-.jpg'),
('G002', 'Mini Guitar', 'Yamaha GL-1', 'Black', 'Matte Finish Body, String Scale String 433 mm (17 \"), Body Depth 70-70 mm (2 13/16 \"-2 13/16\"), 48 mm (1 7/8 \") Finger Board Width (Nut / Body)\r\nTop Spruce', 725000, 'yamaha-gl1.jpg'),
('G003', 'Accoustic Guitar', 'Yamaha FS 100 C ', 'Black', 'Acoustic guitar\r\nMade from high quality\r\nElegantly designed with spruce top material\r\nIdeal for providing clean and detailed sound\r\nIdeal for completing your collection', 1349000, 'yamaha-fs100c.jpg'),
('G004', 'Electric Acoustic Guitar', 'Yamaha APX600', 'Vintage White', 'Electric acoustic guitar\r\nHas an APX body with a thin line and fret for easy access\r\nSpecially designed non-toothed X-type bracing\r\nEnables the top of the guitar to sing and maximizes resonance from unique body shapes for a full, natural tone', 2599000, 'yamaha_yamaha-electric-acoustic-guitar-apx-600-vintage-white.jpg'),
('G005', 'Electric Guitar', 'Yamaha Electric Guitar', 'Black', 'Electric Guitar\r\nConstruction: Bolt-on, Body: Agathis or Nato, Neck: Maple\r\nFingerboard: Rosewood, Bridge: Vintage Tremolo\r\nFrets: 22, Tuners: Die cast\r\nPickups: Humbucker x 2, Single Coil x 1', 5900000, 'yamaha-revstar-rs420-black.jpg'),
('K001', 'Portable Keyboard', 'Yamaha PSR-SX900', 'Black', 'With a brilliant response produces clear, high-quality and balanced sound in all directions\r\n\r\nVarious styles and voices from various parts of Indonesia are sampled with the best quality\r\n\r\nTouch screen with high quality resolution without the need for many buttons\r\n\r\nEasy musical expression using a joy stick\r\n\r\nFSB keys provide a heavier initial resistance and an adjustable fulcrum, so you can play comfortably at each key point', 19000000, 'Yamaha PSR-SX900.jpg'),
('K002', 'Synthesizer Keyboard', 'Roland Juno DS88', 'Black', 'Instrument equipped with pro sound, added features for performance and operation using battery power\r\n88-note Ivory Feel-G Keyboard is equipped with a weighted-action feel with a lightweight design that is easy to carry\r\nIncludes all sounds from the famous JUNO-Di, plus the latest updated acoustic and electric pianos, additional organs and other main stage equipment\r\nWave expansion slots allow users to download the latest waveform sound, available free on the Roland Axial site\r\nThe sample import function is for playing user WAV files on the JUNO-DS88 keyboard', 15160000, 'roland_roland-juno-DS88.jpg'),
('K003', 'Keyboard', 'Casio CTK 6250', 'Black Red', 'User Tones 10 tone editor\r\nBuilt-in Rhythms 210\r\nUser Rhythms 10\r\nReverb 10 Types\r\nChorus 5 Types', 3500000, 'casio-ctk-6250-.jpg'),
('P001', 'Digital Piano', 'Yamaha P 515', 'Black', 'P-515 Digital Piano\r\nEquipped with two advanced technologies\r\nLets you enjoy very realistic and natural sounds\r\nHave a NWX (Natural Wood Escapement) touch\r\nCompatible with Smart Pianist Apps', 20700000, 'yamaha_musik_indonesia_yamaha_p_515_digital_piano.jpg'),
('P002', 'Slim Digital Piano', 'CASIO CDP S350', 'Black', 'Digital Casio Piano\r\nOnly 23cm wide\r\nEquipped with 700 types of high quality sound and 200 Rhythms / Styles\r\nSupports operations with batteries or adapters\r\nIncludes Chordana Apps to make it easier for you to learn songs by connecting to iPad / Android', 8900000, 'casio_casio-cdp-s350-slim-digital-piano.jpg'),
('U001', 'Smart Ukulele', 'Xiaomi U1', 'Brown', '155/5000\r\nSmart Ukulele\r\nElegantly designed\r\n8000 mAh battery capacity\r\nCan be connected to the Android application via a Bluetooth 4.0 connection\r\nMaterial: Mapple wood & nylon', 1900000, 'xiaomi_xiaomi_populele_smart_Ukulele_u1.jpg'),
('U002', 'Ukulele', 'Mahalo Rainbow Ukule', 'Light Blue', 'Ukulele guitar\r\nUse 4 string strings\r\nAble to resonate well\r\nAble to project great sounds\r\nMaterial: Quality', 410000, 'mahalo_rainbow_ukulele.jpg'),
('U003', 'Ukulele', 'Mahalo Soprano Halow', 'Orange', 'Body Sengon\r\nNeck Jabon\r\nFingerboard Mahogany\r\nBridge Mahogany\r\nFrets 12, Nickel', 77000, 'Mahalo_soprano_hollow.jpg'),
('V001', 'Violin', 'ASTGHIK VF 102A ', 'Brown', 'Violin\r\nProducing high quality instrumental strings based on the most up-to-date technology and the highest art work\r\nMade from perfectly heated maple wood and premium Spruce for a softer sound quality\r\nVarnished with a very deep coloring so that it can support the color quality well', 2800000, 'astghik_violin-vf-102a.jpg'),
('V002', 'Violin', 'LULEA Tipe Solidwood', 'Brown', 'Violin\r\nMade of solid wood & and sandalwood\r\nStylishly designed with a matte finish\r\nIdael to complete your music equipmentMa', 1115000, 'lulea_lulea-tipe-solidwood-4-4-violin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user'),
(3, 'Brian', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
