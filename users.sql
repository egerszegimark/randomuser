-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 25. 10:58
-- Kiszolgáló verziója: 10.4.19-MariaDB
-- PHP verzió: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `user_app`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `sha256` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `gender`, `city`, `country`, `email`, `salt`, `sha256`, `picture`) VALUES
(27, 'Alfred Hansen', 6, 'male', 'Aarhus N', 'Denmark', 'alfred.hansen@example.com', 'Z4yZ5oBu', 'e6c6024f56bb107000ea338a4e1ace79f12e06a8f512d72b6952f1fa91aba814', 'https://randomuser.me/api/portraits/thumb/men/84.jpg'),
(28, 'Bertram Jørgensen', 12, 'male', 'Agerbæk', 'Denmark', 'bertram.jorgensen@example.com', 'PSP7KUzJ', '8fd39133eb9a2fb6b3134512c2c94a4c653d6ae52106aa8a8be2786181e1619e', 'https://randomuser.me/api/portraits/thumb/men/68.jpg'),
(29, 'Anna Ray', 12, 'female', 'Helena', 'United States', 'anna.ray@example.com', 'CmGe9Ppy', '48e23a892ff233c6d4c01dd39526c34f1dc2dc278a73fac89c938bacb097e9b7', 'https://randomuser.me/api/portraits/thumb/women/96.jpg'),
(30, 'Rebeca Regalado', 16, 'female', 'Villas de Irapuato', 'Mexico', 'rebeca.regalado@example.com', '5v1JE20I', '3c739032c956ad437d816740dc15c376f54294b8f20ce32f7759629b1cdc1208', 'https://randomuser.me/api/portraits/thumb/women/14.jpg'),
(31, 'Shobha Saniel', 2, 'female', 'Bongaigaon', 'India', 'shobha.saniel@example.com', 'ldJkO49s', '93abe0f4cd3e64e2b0644955382eae43456332c0de17e81bfbaf817d5b698f1b', 'https://randomuser.me/api/portraits/thumb/women/28.jpg'),
(32, 'Tejaswi Holla', 0, 'female', 'Nanded', 'India', 'tejaswi.holla@example.com', 'lrjpX6ng', '410b30e42bc5e8a06d7b10fbafb6bb0fc49bea513a04c2d4bba3977a80ea0d6a', 'https://randomuser.me/api/portraits/thumb/women/73.jpg'),
(33, 'Mathys Vincent', 7, 'male', 'Strasbourg', 'France', 'mathys.vincent@example.com', 'sUuESABW', 'ad4f9bf75b769d70ec02f0f9d75845f1436fbf3dcb1b27e7af63c92471837a57', 'https://randomuser.me/api/portraits/thumb/men/26.jpg'),
(34, 'Sudislav Zheliborskiy', 2, 'male', 'Zhidachiv', 'Ukraine', 'sudislav.zheliborskiy@example.com', 'ffPZwrDA', '710d18d8d8eef02a658bc6e0d1d163e12fe0382b5f59e10348a14fec5f1bb7d8', 'https://randomuser.me/api/portraits/thumb/men/31.jpg'),
(35, 'Ignjat Ivanišević', 20, 'male', 'Boljevac', 'Serbia', 'ignjat.ivanisevic@example.com', 'lKIxNMQm', 'de7cb33d7f09aa253e2b8ebcf71dfdf48b3396f490bc956cceacc6d6baca5813', 'https://randomuser.me/api/portraits/thumb/men/59.jpg'),
(36, 'Jost Findeisen', 16, 'male', 'Attendorn', 'Germany', 'jost.findeisen@example.com', 'HzxGP31n', 'e6a7edd86e1f9c779edc4948fbcd14aac14b0fba0a0ea614d0d607278dc9789c', 'https://randomuser.me/api/portraits/thumb/men/1.jpg'),
(37, 'Milagros Castillo', 19, 'female', 'Zaragoza', 'Spain', 'milagros.castillo@example.com', 'Jv2KnGXv', '533818b72b52dd4ba7f1b031a92af1eb68db0a874e9c89f5e1b7c9a4811f9d7d', 'https://randomuser.me/api/portraits/thumb/women/41.jpg'),
(38, 'Advaith Shroff', 11, 'male', 'Khandwa', 'India', 'advaith.shroff@example.com', 'gXkDI1WP', '7cd53b963b687812b86a6556100ccb279da9f64d27403f2a14b92d666d7dd008', 'https://randomuser.me/api/portraits/thumb/men/45.jpg'),
(39, 'Deborah Riley', 13, 'female', 'Killarney', 'Ireland', 'deborah.riley@example.com', 'mHiXncRi', '70b37a85baededc37c1f9f36314f705c9d7957969c6067d16520e49f6610d8b0', 'https://randomuser.me/api/portraits/thumb/women/5.jpg'),
(40, 'Siloslav Kunovski', 15, 'male', 'Konotop', 'Ukraine', 'siloslav.kunovski@example.com', 'c1SyK0B5', '89a8d7f3309b9b588da59bfb06d7068335e66a34802cabe75b577468e969fa73', 'https://randomuser.me/api/portraits/thumb/men/92.jpg'),
(41, 'Opanas Kos', 13, 'male', 'Ugniv', 'Ukraine', 'opanas.kos@example.com', 'axHXdgq1', '07081c069d254022faaf46063dcf47750afaac0f1841d7de8e30a55cd19cffbf', 'https://randomuser.me/api/portraits/thumb/men/3.jpg'),
(42, 'Ava Vidal', 14, 'female', 'Le Mans', 'France', 'ava.vidal@example.com', 'hjpOcluQ', 'bc8c7b38bc733565e38521f66021f43541e91b2b936f6b177e23ed13642101f4', 'https://randomuser.me/api/portraits/thumb/women/50.jpg'),
(43, 'Hélène Dubois', 15, 'female', 'Rossa', 'Switzerland', 'helene.dubois@example.com', 'wbXl49cb', '6bd4c7c9054704e2b69d0f6a14ca92aee96570eef39f683e96ea7239f6af7e25', 'https://randomuser.me/api/portraits/thumb/women/23.jpg'),
(44, 'Beau Robinson', 12, 'male', 'Whangarei', 'New Zealand', 'beau.robinson@example.com', 'KtESQYft', 'ed23f345343de6d719c4fe1b00fac7b3080868162f8ce59caab4cf20b0ff7b00', 'https://randomuser.me/api/portraits/thumb/men/81.jpg'),
(45, 'Barış Keçeci', 9, 'male', 'Antalya', 'Turkey', 'baris.kececi@example.com', 'yuQL0Jtc', '9293dde8787afa0aa18da1fdde7c96203ac9442ed51694ce0fa9e7876f6addd2', 'https://randomuser.me/api/portraits/thumb/men/4.jpg'),
(46, 'Belinda Kopp', 19, 'female', 'Weilburg', 'Germany', 'belinda.kopp@example.com', 'tI7iVa3N', 'c85817196d93a1c84ee957588568cfd0d8f7ee0d685fb2dc46c1c68df6b042fa', 'https://randomuser.me/api/portraits/thumb/women/89.jpg'),
(47, 'Alan Janßen', 13, 'male', 'Storkow (Mark)', 'Germany', 'alan.janssen@example.com', 'fNkGMvfn', 'c615e8bdcbae3c2d7a1e33b2307de76b0a0b56d534100fe85e608429368b75b0', 'https://randomuser.me/api/portraits/thumb/men/56.jpg'),
(48, 'Vidya Shet', 16, 'female', 'Ongole', 'India', 'vidya.shet@example.com', 'qnwF0tmf', '3248b933d59e732aa1a2057da7259c002bffac2c202337934370b0de78e93c2e', 'https://randomuser.me/api/portraits/thumb/women/60.jpg'),
(49, 'Helen Kydland', 14, 'female', 'Spydeberg', 'Norway', 'helen.kydland@example.com', 'kzbzLwRW', '1911aee244e1ae0cd0fff32fec6c77dd0fe658c7718a53656073f31771ffdb3e', 'https://randomuser.me/api/portraits/thumb/women/5.jpg'),
(50, 'Peggy Carter', 5, 'female', 'Bundaberg', 'Australia', 'peggy.carter@example.com', 'iwvd0XqQ', '82139eb826f446263cc03f376dfca8a9fa6c368d55280b672d2f0cce5059f25d', 'https://randomuser.me/api/portraits/thumb/women/86.jpg'),
(51, 'Rocío Morales', 11, 'female', 'Alcalá de Henares', 'Spain', 'rocio.morales@example.com', 'GycFu8mK', '9a60c6c073df692c55331572296d9d3592ebacb3c3a8b94986518a26d49aeeae', 'https://randomuser.me/api/portraits/thumb/women/72.jpg'),
(52, 'Harsh Nagane', 5, 'male', 'Unnao', 'India', 'harsh.nagane@example.com', 'QbOgXfAw', '4875915ff022f0b24d45d99541548edc8177cfca7b9f622ce52e7f6775e8546e', 'https://randomuser.me/api/portraits/thumb/men/54.jpg'),
(53, 'Candice Robertson', 11, 'female', 'Desoto', 'United States', 'candice.robertson@example.com', 'FMro1Vkg', '9a7045cef70e2365b756af42f9f2f8e43c399cca1ea282f2567f4d52b3f8b913', 'https://randomuser.me/api/portraits/thumb/women/37.jpg'),
(54, 'Aleksi Neva', 2, 'male', 'Multia', 'Finland', 'aleksi.neva@example.com', 'OEjJfGmD', 'f5ff1355ae45dc5e578aaf7d582cbf827fa7b9aaa8b144d814febd767e283d7f', 'https://randomuser.me/api/portraits/thumb/men/39.jpg'),
(55, 'María Teresa Zúñiga', 4, 'female', 'Colima', 'Mexico', 'mariateresa.zuniga@example.com', 'xFfzaIlE', '7d2e4416b04aa03319c36b8797432789d59ae91a31942449c81eb1ffeae6093a', 'https://randomuser.me/api/portraits/thumb/women/4.jpg'),
(56, 'Çetin Demirbaş', 15, 'male', 'Çanakkale', 'Turkey', 'cetin.demirbas@example.com', 'mTzm5Obi', 'cfebb459ac9b0a219203b767f2c6e52993af1f4bcd73610d9f6f4f9d786c85ba', 'https://randomuser.me/api/portraits/thumb/men/0.jpg'),
(57, 'Guillermo Garica', 17, 'male', 'Tamán', 'Mexico', 'guillermo.garica@example.com', 'BtXReCcu', '62b0e1d028509c06a7c7d660ec05cec9b05ec5b81c8d313dea2c211d71492067', 'https://randomuser.me/api/portraits/thumb/men/60.jpg'),
(58, 'Herlander Silveira', 16, 'male', 'Betim', 'Brazil', 'herlander.silveira@example.com', 'WaCb9kj9', '17592967052831db7988488399b571d7eba105ee2cb162e5e15b79456a65fa06', 'https://randomuser.me/api/portraits/thumb/men/27.jpg'),
(59, 'Bhuv Dsouza', 12, 'male', 'Gaya', 'India', 'bhuv.dsouza@example.com', 'mhDw0eYA', 'fbb00bea1c902ee7540989ce1bde9958c3724dd5db386bcc14fb127a32145327', 'https://randomuser.me/api/portraits/thumb/men/87.jpg'),
(60, 'Lakeisha Dieteren', 12, 'female', 'Foxham', 'Netherlands', 'lakeisha.dieteren@example.com', 'DglVNcTq', '5c9c8220ea39b4371f92e925ac304436a7d37cc5e0c109beb0f6b1affdebe27b', 'https://randomuser.me/api/portraits/thumb/women/81.jpg'),
(61, 'Zachary Walker', 2, 'male', 'Dunedin', 'New Zealand', 'zachary.walker@example.com', 'LdWSR00d', '7d8bf2f9f28735d9bfc945233385277fa230f69dbf409c19edd8c3337a727c24', 'https://randomuser.me/api/portraits/thumb/men/66.jpg'),
(62, 'Saeed Henstra', 7, 'male', 'Maarssen', 'Netherlands', 'saeed.henstra@example.com', '7wG3IoQR', '6d995499b40615d831576ff074b89a00570ac8bb917ff41d19760347923b50a3', 'https://randomuser.me/api/portraits/thumb/men/25.jpg'),
(63, 'Rathi Rao', 14, 'female', 'Tiruvottiyur', 'India', 'rathi.rao@example.com', 'o0ixPM1P', 'a226e1ecabe83034ad0de18be4fedd193f22f5c2ee39c7e391c5093fec58bfb2', 'https://randomuser.me/api/portraits/thumb/women/18.jpg'),
(64, 'Gabriel Mills', 9, 'male', 'Dundalk', 'Ireland', 'gabriel.mills@example.com', '2CWfPmrK', '2191d104be62178581a4a0b8eaf3e47f22e072beb62d1564849b60dcf2656aaa', 'https://randomuser.me/api/portraits/thumb/men/15.jpg'),
(65, 'Ella Hakola', 0, 'female', 'Nykarleby', 'Finland', 'ella.hakola@example.com', 'H8QxVqx3', '096ab1bf850ecc7a8141b5fd883c510d07a1035b2e3eab98c09f5f3d883e6e66', 'https://randomuser.me/api/portraits/thumb/women/58.jpg'),
(66, 'Elif Koyuncu', 18, 'female', 'Karaman', 'Turkey', 'elif.koyuncu@example.com', 'ChG17Uek', 'ab907514f6bda3f4341d370e22b613fb46dbc28142897c19cb38b9fd325e4f98', 'https://randomuser.me/api/portraits/thumb/women/10.jpg'),
(67, 'Niilo Niskanen', 5, 'male', 'Hausjärvi', 'Finland', 'niilo.niskanen@example.com', 'WhzYzjgw', '149c0e5e04c52fd6ddeb2d9631cde95e9f3a6cc41f012d2f81c5c807c1b2e23c', 'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
(68, 'Nathanaël Da Silva', 5, 'male', 'Rennes', 'France', 'nathanael.dasilva@example.com', 'lhfGRZ9H', 'c7ff3b5b0c1eec104c1c4951dce60a85e8b286458c7488df51b0a9df387a7bd6', 'https://randomuser.me/api/portraits/thumb/men/11.jpg'),
(69, 'Reginald Shaw', 15, 'male', 'Dundee', 'United Kingdom', 'reginald.shaw@example.com', '5t9shIJR', '76e977f1c7f8604f0b44240573f5eff6f33cf1feeca8f840f39edc1607d3474b', 'https://randomuser.me/api/portraits/thumb/men/56.jpg'),
(70, 'Zoé Calvillo', 14, 'female', 'Estación Coahuila (Km 57)', 'Mexico', 'zoe.calvillo@example.com', '6avLDnEz', '7e7fd54f69d8dea845eaf515d63b8c35010680b8b1dd3520353452f4cf68a80d', 'https://randomuser.me/api/portraits/thumb/women/51.jpg'),
(71, 'Andrea Shelton', 3, 'female', 'Bristol', 'United Kingdom', 'andrea.shelton@example.com', 'AthGvjgR', '6d5f0574373427c193fb1afeffde6a8ad32ae5b82e64512d4b63847c85b090d6', 'https://randomuser.me/api/portraits/thumb/women/11.jpg'),
(72, 'Dominic Bélanger', 8, 'male', 'Sidney', 'Canada', 'dominic.belanger@example.com', 'EdBhI7VC', '4c0529afe6ff55a723accc1e072f52c2526f775663552a3687da198e7d0c3dc1', 'https://randomuser.me/api/portraits/thumb/men/43.jpg'),
(73, 'Emre Kocabıyık', 8, 'male', 'Sakarya', 'Turkey', 'emre.kocabiyik@example.com', 'uZqJXyg1', 'c9958e9ddf508fa0b105b5b593d899ee9566f34a0fa966b067445305221b7a54', 'https://randomuser.me/api/portraits/thumb/men/67.jpg'),
(74, 'Adam Christensen', 19, 'male', 'Pandrup', 'Denmark', 'adam.christensen@example.com', 'LlwN4T8f', 'b0d20717699178e47a244981211a0c78fb6aa5f6f616bc2cd16cb18b1c002618', 'https://randomuser.me/api/portraits/thumb/men/58.jpg'),
(75, 'Rasmus Koistinen', 10, 'male', 'Mäntyharju', 'Finland', 'rasmus.koistinen@example.com', 'y0GZUkpX', '85a9a5bd4e11586969bcf5779681e40a83c65f09b257fc4710e64dec50aa5587', 'https://randomuser.me/api/portraits/thumb/men/70.jpg'),
(76, 'Zorepad Potebenko', 9, 'male', 'Almazna', 'Ukraine', 'zorepad.potebenko@example.com', 'AgxKElHl', '938ed5a322d794ecf66c9d520ac55ec34295623af6b4b8ee3f742a337ec7d0ca', 'https://randomuser.me/api/portraits/thumb/men/85.jpg'),
(77, 'Danielle Gonzalez', 13, 'female', 'Durham', 'United Kingdom', 'danielle.gonzalez@example.com', 'uIduqk9O', '98d54cf8e15c5091b8cb74ed5e281aba2aa2978b38894bd95227f473f4f064e8', 'https://randomuser.me/api/portraits/thumb/women/90.jpg'),
(78, 'Julián Castillo', 6, 'male', 'Móstoles', 'Spain', 'julian.castillo@example.com', '34EQJDRD', '7a36716142f990be876e6b3d89ac53853f7d3a63a236fcd5da32424802ec3939', 'https://randomuser.me/api/portraits/thumb/men/40.jpg'),
(79, 'Ginette Guillot', 6, 'female', 'Kippel', 'Switzerland', 'ginette.guillot@example.com', 'h5TT3hbv', 'a30c4ad8d78581deaa3e1dc694fad8ed181f8171703f8c2f67cda8ebae9e6de9', 'https://randomuser.me/api/portraits/thumb/women/24.jpg'),
(80, 'Landon Silva', 11, 'male', 'Carrigtwohill', 'Ireland', 'landon.silva@example.com', 'Dancz5be', '7eebfb70ac940f636b5b0fec163479097698345845e657f2197db44fb983af65', 'https://randomuser.me/api/portraits/thumb/men/54.jpg'),
(81, 'Bratislav Spasojević', 20, 'male', 'Boljevac', 'Serbia', 'bratislav.spasojevic@example.com', 'ZqfM7UsW', 'b2684cf535bdcaa0fc772504396a4575028e35dd5a57d0f3ba9f83dee39afc6a', 'https://randomuser.me/api/portraits/thumb/men/16.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
