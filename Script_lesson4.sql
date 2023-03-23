DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;
SHOW TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(100),
    lastname VARCHAR(100) COMMENT 'Фамилия', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(100) UNIQUE,
    password_hash varchar(100),
    phone BIGINT,
    is_deleted bit default 0,
    -- INDEX users_phone_idx(phone), -- помним: как выбирать индексы
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Columbus', 'Langosh', 'cyrus76@example.com', '0ded79d48cada03fc8250f4875cde7f97b546ade', '780405', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Susana', 'Bergnaum', 'o\'conner.gilberto@example.net', '3e6bd93207f08d3c0bfa48014752e92ffc19947a', '931', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Robyn', 'Koch', 'leonel92@example.com', '82f3664bce522dc3978107e9d3982506ba8f2f0d', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Vicenta', 'Conroy', 'sauer.ismael@example.com', '2950ba7d909467a0d544536f1a03c65c704ea1a4', '665', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Westley', 'Crona', 'ceasar.boyer@example.org', '0046488eb64bc375eb84a37421524da4fab1d274', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Skyla', 'Fay', 'tito.gislason@example.org', 'f53a07e9c1e32639657618743e6005b58ada8b4b', '19', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Cleora', 'Jaskolski', 'lgreenfelder@example.org', 'a192effdac279c5834896dadf6dd3c3c6e177d30', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Sabryna', 'Casper', 'rogahn.robin@example.com', '0f197a83bb172660b0a7b784c8c890c89cf89636', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Elody', 'Quitzon', 'florian29@example.org', '4d1163aef211d6df0b58968c688137f589dd5c54', '8239882378', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Loy', 'Bruen', 'lwill@example.com', '7d7889385a532ee8869d4692b614408bb903e498', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Marion', 'Blanda', 'heath.hauck@example.net', '63c774b1bd9513aef34551761f87300d5fcbf2bf', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Fae', 'Christiansen', 'opredovic@example.org', 'b69ef76624c95fd7810c1805d03bbabff2947065', '956453', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Mikel', 'Schimmel', 'turner.tiara@example.org', 'b7e1ee28bad836b35eb74add77d1c3ff3f459f4f', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Bettye', 'Heathcote', 'arlie.frami@example.org', '188e14e9593f6b923702d75d0afb4e8697f5fe67', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Fay', 'Kuhlman', 'ahmad62@example.org', '0f4ad52b821605aba0fa067ddd47d7ac1dd60697', '671', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Rowena', 'Lowe', 'lesch.godfrey@example.com', '51717cacc8bdc05706d36212115f70a33a64d548', '571', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Ramon', 'Nitzsche', 'damien80@example.org', '0025cf32c6b16b996883b370fb2f42a272611608', '204125', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Chesley', 'Gutkowski', 'crooks.dan@example.com', '63f504d59871f1fbfb829911044d696d18751e2c', '103', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Krystel', 'Tillman', 'candice32@example.com', '7b0e97b0033e889a49775ac39047ab23e297de69', '336', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Wyatt', 'Fritsch', 'koss.gordon@example.org', '2afed95a5af5bd93136b0ad1124bf0e0879eade8', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Anastasia', 'Denesik', 'uschmeler@example.org', '5e96d1401c138f43a6fbf453574c907b50f47007', '19', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Merl', 'Muller', 'enoch85@example.com', '2c5c2de0eaebd3afac01bcb351e432934a9adbae', '306', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Vance', 'Wyman', 'paris57@example.org', 'c693a0ac0385c5d93625abb92ce663aac5cc361c', '6426959358', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Jordi', 'Larson', 'hzemlak@example.com', '97248bb321a7364eae320e010109358082b540e7', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Pietro', 'Stokes', 'devonte84@example.net', 'eadeea967d6a77aa986301872a5da44a1195069e', '73', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Miracle', 'Fadel', 'earnest15@example.net', 'fca0e3d5aa4e9eaba66d320a3fb4b2e924b1ad52', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Grover', 'Nienow', 'kathryne.klein@example.org', 'd1dce165e8b2df1abad5f58433b19756d2e8852a', '170', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Savannah', 'Wilderman', 'bgleichner@example.com', '9a65be7e7bedf096d2e5a37a9bee43857bde602d', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Fritz', 'Waelchi', 'jamir.cole@example.net', 'c8a1138daf2044edbc8ea7eab5218c8294b006c4', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Myra', 'Schowalter', 'natasha82@example.net', 'fc255cc507b0444176144ea2e3e9b8704d342eec', '86', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Carley', 'Emmerich', 'soledad.beahan@example.com', '4f6ab9fd23baec8593085aee69897e13453b04f3', '200', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Bette', 'Marquardt', 'eliezer79@example.org', '6018505951478d917bb1d4cb3487ae5132dddc5a', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Nicholaus', 'Treutel', 'therman@example.com', 'f58c0c07c8030da0d06d641ce1075c3dd902a33f', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Emil', 'Waelchi', 'ho\'connell@example.org', '20154f1f3c4bfe1471dfea792a97fdf92bb536f3', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Lennie', 'Schneider', 'kessler.neva@example.net', '0fbebfff575742bc9a76475f8d17c8830c38cdcc', '4313998758', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Clifford', 'Dare', 'rosa.boyer@example.com', 'a875e99278aecf4b2f249e0a42dde4b49a89852e', '817470', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Dejon', 'Emmerich', 'cbarrows@example.org', 'a88ebae125f267664f86244e25c613763aead037', '9025519267', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Keshawn', 'Rohan', 'kianna75@example.org', 'de6339ec1cff1b5d7c141cab37893b55f0d072b2', '631354', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Cesar', 'Kris', 'jschamberger@example.com', 'f6b34c9f37e64116e3d80b6cbf0bd867570d7941', '56', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Raymundo', 'Zulauf', 'claudia.rau@example.net', '90f1e361ff3c5c06f96bf02d34a8ebde5109ee42', '73019', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Deon', 'Feeney', 'felicity.bednar@example.net', '1ffbfefd80f3f0a18776fc78a852c81251d8a39b', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Carlos', 'Roberts', 'titus.hilll@example.com', '4edd1e5e153c9a788010254fdae5cf05b8bb1600', '225', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Noah', 'Greenfelder', 'kerluke.mohamed@example.com', '58db51a0ee839cbc8293fa41c012cb64b47f5f74', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Selena', 'Mills', 'isaias.erdman@example.net', '3069c8bc03f397bb950095d25147ec30d5a8cc52', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Nickolas', 'Altenwerth', 'schiller.caitlyn@example.net', 'eb1e83c472c575fe2cfd9331b6bdf4d71ae42c21', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Donnell', 'Simonis', 'cklocko@example.org', 'cd450280777401ecf58cc737eec05e137e55052d', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Efren', 'Marks', 'hswift@example.net', '79619b6e22ba0339a2d66c6a0ab90033e486dd72', '865', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Cleo', 'Lebsack', 'fleta00@example.org', '4568ba4bf242f23dce830d21d49b35f3e2cae2a0', '5195311531', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Lexus', 'Flatley', 'katlynn.klocko@example.org', '83576777fe801dbe00033f69b9cfde492c970d81', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Haylie', 'Weber', 'jensen.huel@example.net', 'c6890db593c4bc707a40d3deddbe3ee2204c9bcc', '9086536088', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Marisa', 'Rath', 'nova02@example.net', 'ff65c15d67600a0dbf896654393904796416e9da', '801909', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Efren', 'Treutel', 'hegmann.laney@example.org', '9523065fda220f5fe9dbbe2a69a4dde7c2265b49', '413334', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Heath', 'Eichmann', 'mjohns@example.com', 'e1dfe95536ffc2e097b3bfd1615e34d9fa1a80e5', '78616', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Tiara', 'Prosacco', 'pfahey@example.org', '3062d8fb02af8ec165d1525cd9f388ea4bfe9d06', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Marley', 'Larkin', 'virginie19@example.net', '41e2d6909b05875bf3381a5a7ddaa89904fa105e', '695666', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Bradley', 'Crist', 'carlo.carroll@example.com', '454c4ba92ae4a80970d852faf77ccc01edbe6f5b', '30427', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Sally', 'Tremblay', 'kuhlman.talia@example.com', 'd634070c8a2cfad36f0758372a46182acd96cef9', '7725', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Ransom', 'Purdy', 'keely69@example.org', '3fc807ccf03ba9502c7f2617ca6261c8b32dd836', '290', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Camylle', 'Heaney', 'kuhic.angelina@example.org', '3d745bdc0afcba62c4091c8c49f598341c90be58', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Oswaldo', 'West', 'beatty.misty@example.com', '70a4ac580095ab55c96e02959e19c9fb4bbfe77b', '556', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Esta', 'Will', 'lshanahan@example.net', '6fac69eff67bbd5d192eb8ac0790c1675671513d', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Sanford', 'Ruecker', 'patrick.barton@example.com', '6a5b3f62ac3c89cfc6a5c26693a62375d718a429', '312', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Ofelia', 'Kreiger', 'alfredo.gutkowski@example.com', '56b7b5843485964b7030aa1aa98071f27f3f7c73', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Arvilla', 'Emard', 'qkirlin@example.org', '49adf6663a6ca4987ea08145188f4cfdddb3a474', '750321', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Elvera', 'Cassin', 'wilbert00@example.com', '48455f82f6a055f9ab20657d1812d16cdec54af1', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Raphaelle', 'Bashirian', 'elissa32@example.com', '5df38f3ce1253657c985dfc9e4eb1bbbc1e4ce67', '93076', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Caden', 'Baumbach', 'jmann@example.com', 'c0ff1bb4a00f3c35ebf2e1783cd42f4937ad077d', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Tyrel', 'Stracke', 'wgreenholt@example.org', '99daaa4747e1862a29dead14d3c7d7a53d69d80e', '984', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Garrick', 'Ernser', 'lillie.kertzmann@example.org', 'aee37ddba87ed631aad3f6ee3a8ae0077d74bbfc', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Yasmin', 'Langosh', 'roman56@example.net', '8b8d09805ada3d9dd836d8a12b5132e8f79c5306', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Franco', 'Hilpert', 'alfredo23@example.org', 'f8eb6d53c8b6479ac7269c04b8173758efc362d2', '3667932258', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Alycia', 'Ward', 'sawayn.genesis@example.org', '85e3e7de6243aefec37f514868d62c01a6191916', '600', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Matilde', 'Raynor', 'dare.luigi@example.net', '2896a6de74b2c20401b26a91094d2b0d2c149341', '40095', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Ida', 'Kreiger', 'lew.brakus@example.com', '8534f77a69454810f90a357cbeb4696fcc6878a3', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Rylee', 'Shields', 'osinski.cordie@example.net', '3d952bc3db72b32a996bab34d502b574174d6beb', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Jacey', 'Ortiz', 'hammes.carlie@example.com', '6d636a563a2d30657410ee7bd62e5fe0635ea66d', '872', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Shyann', 'Williamson', 'sauer.bo@example.net', '9d3dab145ad5ac3db02fabd7156067ccad210b92', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Fay', 'Moen', 'marilyne.mosciski@example.org', '779fdd7f4c6dbaf6702d2803e77e6d3d8e2a3a32', '199', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Fermin', 'Greenholt', 'vgreenfelder@example.net', '4f2ec054ee3f992128521db2819dbbbe914f78c8', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Eloisa', 'Parisian', 'stella.green@example.org', '7d63b5547437a9cb0bcecf533a777b46ba466808', '130230', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Scotty', 'Macejkovic', 'nbrekke@example.net', '0fc3b77daf891e35ab8677fc59f8e74e5924e293', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Cristina', 'Anderson', 'mose34@example.net', '38a0a2ea8c82f239c297e9ad7efff4e9d7b5d5d7', '154813', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Sam', 'Kreiger', 'tyree48@example.com', '2069d8be9fa6a5f0bad04c35354929da000d1554', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Gretchen', 'Heller', 'brisa.hickle@example.org', '3ae381345b8ea840f4dcfb5aed5adf7a1b342130', '28', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Assunta', 'Ebert', 'itoy@example.net', 'c3810feb8f9285d1b87a842f36fc409d707d04f1', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Jameson', 'Feest', 'rcrooks@example.com', '89a9f24096073b0099f3628988c851bcadd58b4b', '296', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Trenton', 'Balistreri', 'pink.kovacek@example.org', '71d4016cdd8651c88ae5cf049f0e0c91620c19ee', '265', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Christian', 'Hauck', 'mayer.karelle@example.org', '15ff641939fb4f52cccf99399457709abd19055b', '868', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Eleonore', 'Kuphal', 'wisozk.donny@example.net', 'b7771bf079615d0f6ca09014da1775152ce61554', '2729', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Cora', 'Collins', 'kwest@example.net', '699ad6393ef2e8da45088f7ca3b68c154f0bb11b', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Meredith', 'Orn', 'lexi93@example.net', '6b3cd41642c6e538ccc2d1fc1ff551f20f665c94', '3638584445', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Casper', 'Hansen', 'marvin.lula@example.org', '32449efddaa0d46955bd1d6ffdd996d762248f2a', '10', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Manuela', 'Bernier', 'cassidy95@example.com', '6430070dd1f93eef6122ee7fdaf4559a9fd38e2d', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Imogene', 'Bode', 'margret62@example.org', '181767c9499b5f9221335f10cf5dfa36b069c84f', '0', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Kimberly', 'Hegmann', 'elisabeth.schiller@example.net', '4da95669fc53992221f04e65628e3b07e7ceb9ff', '0', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Mya', 'O\'Conner', 'seamus20@example.org', '9cb95dda454ddc66694477806e9fa09e3b3ab20c', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Elna', 'Schiller', 'lynn83@example.org', '506fd27278087b1299c171c6e71144b0742bb367', '1', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Emmanuelle', 'Reynolds', 'schmeler.ansel@example.org', 'e4eaab6a19e142f2211eb505d829f29207d2bf86', '168201', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Jessy', 'Wiegand', 'awiza@example.org', 'ee9d03770bc7b82adb104600d091fe6db14264f4', '1', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Armani', 'Flatley', 'hkoelpin@example.org', 'd323840e88f20b3023bb8f58cf4485b2001e1f54', '9689790689', 1);


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    created_at DATE,
    hometown VARCHAR(100)
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE ON DELETE CASCADE;
 
   
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('1', 'F', '2007-08-28', '2', '2001-02-04', 'Saransk');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('2', 'M', '1999-01-07', '3', '2007-02-27', 'Samara');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('3', 'F', '2003-06-09', '6', '2009-02-02', 'Moscow');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('4', 'M', '2010-09-04', '4', '2011-01-11', 'Sankt-Peterburg');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('5', 'M', '2002-04-29', '1', '2007-07-17', 'Ekaterinburg');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('6', 'M', '2013-11-30', '5', '2019-09-19', 'Irkitsk');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('7', 'F', '2000-02-26', '7', '2018-05-06', 'Kazan');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('8', 'F', '1994-02-25', '8', '2021-04-05', 'Elabuga');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('9', 'F', '1996-02-23', '9', '2016-02-07', 'Ufa');
insert into `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) values ('10', 'M', '2003-01-09', '10', '2022-03-15', 'Nizhnekamsk');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке

    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '9', '60', 'Quo ipsa necessitatibus pariatur. Facilis repudiandae veniam distinctio odit dolor. Assumenda et facere animi autem ratione nesciunt assumenda. Eius provident quia et qui incidunt.', '2007-02-02 16:29:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '100', '28', 'A alias fugiat dolores magni. In laborum et tempora quae qui mollitia ratione. Est cum nulla voluptas earum maiores error voluptatem. Optio neque nihil mollitia dolorem hic. Quo eos voluptas est nihil earum necessitatibus est.', '2021-12-18 23:34:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '97', '67', 'Sit aut mollitia ut aperiam temporibus vel officia suscipit. Tempore nemo voluptatem doloremque et. Magnam accusantium fuga cupiditate beatae perspiciatis.', '2020-04-16 05:34:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '60', '41', 'Dolorem ratione voluptas asperiores. Voluptas est nulla possimus. Alias deserunt pariatur dignissimos debitis eius numquam. Tempora molestiae in sapiente quod quibusdam.', '1972-03-12 10:23:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '90', '16', 'Cupiditate officiis quo aut est architecto soluta tempore. Vel qui eos voluptas aut. Ut veniam beatae dolor nam sint cupiditate nesciunt.', '1990-09-18 15:52:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '53', '61', 'Accusantium et ipsam voluptatem placeat. Officiis minima voluptatem repellendus. Voluptatem impedit veniam consectetur placeat nam harum incidunt.', '1984-08-05 21:35:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '22', '28', 'Ab quasi aut nihil qui qui. Est nam aut et autem labore.', '1978-02-18 16:16:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '10', '35', 'Nihil occaecati voluptas dolore laborum provident. Quos et non modi quidem autem. Assumenda ipsa praesentium ea aut similique necessitatibus. Ipsum facere et quasi ut ipsam molestiae debitis eos.', '2020-12-14 09:42:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '84', '63', 'Nostrum in sed dolor eum. Nihil dolorum natus vel unde laborum voluptate qui. Ad ea ducimus cumque. Odio non aut praesentium numquam suscipit atque.', '1991-04-13 22:33:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '47', '46', 'Tenetur placeat alias recusandae libero tempora inventore corrupti. Non velit et dicta debitis et qui sapiente. Deleniti distinctio est ut beatae.', '1987-06-29 19:29:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '21', '36', 'Doloremque occaecati odit assumenda culpa. Voluptatum est doloremque voluptates ut dignissimos quasi. Possimus architecto sequi esse vitae deleniti sequi. Enim voluptas quaerat sint incidunt. Aperiam totam qui soluta odio.', '2004-08-22 04:43:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '23', '14', 'Eaque in libero possimus deleniti debitis atque neque exercitationem. Fugiat necessitatibus qui non sint debitis consequatur et. Maxime aut asperiores earum rerum aut sit.', '2015-12-10 17:30:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '41', '23', 'Recusandae cupiditate maxime sit. Quidem exercitationem enim aut consequatur iure rem. Ut et sed ducimus vel placeat. Sint ea non omnis enim delectus.', '2020-10-27 02:02:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '73', '80', 'Qui sed ab excepturi. Molestias saepe earum rem. Tenetur dicta quisquam impedit fugiat ea culpa consectetur. Odio maxime ex blanditiis tempore.', '2014-03-05 02:38:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '49', '20', 'Deleniti quisquam incidunt non sequi. Nostrum qui repudiandae tempore nostrum. Debitis at sit velit optio ipsam. Omnis quam libero dolorem et. Impedit facere dolores ut dolor dolor.', '1998-12-29 01:04:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '45', '3', 'Incidunt quo quo ut est. Et optio cum veritatis. Perferendis quas eius sed est delectus hic sint. Nulla aut maiores esse veritatis est.', '1974-06-16 15:52:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '47', '32', 'Earum assumenda aliquam suscipit nihil doloribus ut commodi. Esse ut et itaque molestiae qui. Dolor culpa soluta eligendi. Id est blanditiis laborum.', '2001-12-23 01:29:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '48', '96', 'Id voluptas quis deleniti similique. Quia accusantium deserunt veritatis qui aut unde est. Odio itaque necessitatibus et.', '2001-11-16 16:25:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '100', '33', 'Sequi at ab facilis ut nemo. Accusantium error dolores aspernatur officiis ipsam necessitatibus. Optio consequatur laudantium inventore commodi. Autem nesciunt labore nisi eum.', '2019-05-01 11:07:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '36', '86', 'Sequi vel rerum illum assumenda. Quia voluptatibus praesentium neque et. Accusantium voluptates sunt est sequi velit. Eos ratione maxime distinctio pariatur.', '1995-08-24 05:12:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '1', '67', 'Officia occaecati occaecati corrupti odit voluptatem. Ut alias minus dolor ducimus autem laborum. Est minus illum optio.', '2019-12-24 06:27:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '5', '18', 'Et dignissimos qui quia deleniti eius. Perspiciatis cumque quos cupiditate iste voluptate. Doloremque aliquid eligendi ratione sit sunt voluptatem.', '1979-10-13 07:14:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '13', '1', 'Modi enim odio cumque laboriosam. Consequatur veritatis quia maxime quae minus. A qui minima amet voluptas consequatur voluptatem.', '1987-03-29 03:24:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '100', '62', 'Voluptatem perspiciatis cupiditate fugit voluptatem ut mollitia ut. Eius et recusandae rerum eos dolor earum. Commodi vel quasi voluptate porro.', '2005-11-18 21:58:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '36', '22', 'Perferendis quibusdam et adipisci unde. Voluptatem repellendus vel placeat laborum itaque nesciunt temporibus. Velit accusamus harum blanditiis est distinctio. Quos itaque libero cum voluptatum rerum accusamus sit.', '1981-03-15 16:07:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '60', '17', 'Nulla facere itaque accusantium ad repellat. Quas distinctio id cumque sint ea vitae quo ipsa.', '1987-12-05 09:06:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '77', '44', 'Recusandae et tenetur officia dolores saepe atque sit. Nam esse modi ut quas nemo. Error minus sit iure assumenda.', '1999-05-09 18:50:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '37', '86', 'In ducimus aut earum provident placeat et autem. Qui dolorum maxime velit sit in voluptatem exercitationem rerum. Recusandae voluptas est libero vel. Facere necessitatibus ipsam libero aliquam. Natus odit magni minus illum quis.', '1970-04-11 14:15:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '42', '80', 'Eveniet illo est excepturi impedit sunt voluptates. Repellat reprehenderit suscipit necessitatibus rerum quibusdam incidunt et.', '2021-01-09 18:24:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '98', '7', 'Aut pariatur ad totam dolore vel est. Dignissimos fuga labore nobis consequatur inventore nesciunt consectetur sit. Qui voluptatum beatae exercitationem odit sequi et est velit. Hic tenetur est enim est placeat.', '1992-04-02 00:27:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '71', '49', 'Facilis voluptas ipsam debitis et reiciendis debitis neque exercitationem. Delectus vitae saepe recusandae nisi unde ullam. Debitis et molestiae consequuntur perferendis.', '1987-12-31 06:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '51', '93', 'Impedit aperiam et velit minus soluta libero. In a tenetur voluptas est est beatae veritatis. Ut iure et ut maxime. Laboriosam quae optio sed. Odio nisi iusto inventore consequatur quia ut.', '2015-07-30 03:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '31', '18', 'Iste earum beatae qui aut. Et est autem aut consectetur esse exercitationem. Fugit nesciunt veniam ex dolorem labore eius culpa ea. Dolorem quidem recusandae eos laborum nobis dolore ut.', '1997-08-05 13:15:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '71', '63', 'Commodi omnis sed consequatur sed. Eveniet nemo accusamus eaque et. Reprehenderit atque sequi sed dolore voluptas ipsam est.', '2021-11-21 07:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '39', '9', 'Optio et rerum ducimus accusamus. Commodi nulla quos quam nobis officia. Vel voluptates perferendis culpa commodi hic.', '2017-08-04 04:46:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '18', '64', 'Delectus magni ratione qui. Perferendis et quis sunt corporis illum at. Veritatis inventore error nesciunt blanditiis excepturi quia ratione et. Rerum non perspiciatis quo cum.', '1975-03-28 09:36:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '6', '9', 'Aut laudantium debitis animi esse eum veritatis a. Iusto voluptas suscipit magnam aut quae. Numquam recusandae dolor nostrum in. Qui eos soluta vitae.', '1986-12-24 22:12:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '63', '63', 'Doloribus nulla quas dolores et. Hic sint quibusdam minus quaerat et voluptates. Voluptatem aperiam necessitatibus possimus laboriosam molestiae nam libero. Distinctio delectus et ut aut exercitationem.', '1999-04-11 14:55:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '18', '61', 'Similique laborum dolorum recusandae ratione. Et et qui earum eligendi dolore. Sed blanditiis alias tempora vel ipsum ducimus inventore.', '1986-12-27 15:08:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '16', '46', 'Vitae neque placeat possimus est cupiditate saepe. Et iusto omnis quidem molestiae nesciunt quia error asperiores. Doloribus inventore sint culpa sed qui vel.', '1980-11-17 00:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '2', '14', 'Voluptatum exercitationem doloremque voluptas quod voluptatum esse. Ab quia autem doloribus explicabo aliquid. Enim possimus vero qui nihil sunt qui earum.', '1972-12-12 06:03:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '39', '32', 'Sed impedit quisquam commodi in. Quia aperiam earum iure suscipit libero quae. Quo accusantium eaque et nobis. Sunt et explicabo rerum ratione officiis neque nulla.', '1979-07-27 04:41:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '42', '75', 'Beatae dolorem ea quaerat. Atque dolorum recusandae sed cumque enim et. Aut non velit est impedit sunt.', '1972-11-27 11:59:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '71', '19', 'Et harum dolorum accusantium voluptatem harum. Commodi delectus voluptatem quia nobis. Qui fuga quis molestiae amet ullam ipsam. Autem soluta provident odio aut.', '1988-11-14 02:41:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '31', '56', 'Quia quis autem omnis praesentium. Sit voluptatum voluptas iusto fuga quo.', '1999-07-01 18:07:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '24', '66', 'Numquam non quos pariatur eligendi tempora est aut. Sit tenetur veritatis hic quia et perferendis. Velit amet enim aperiam soluta voluptatem laudantium voluptas. Mollitia a nisi ullam sint laudantium suscipit voluptas.', '1977-02-16 20:43:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '10', '82', 'Nihil aliquid perspiciatis iste voluptatibus quasi nihil itaque necessitatibus. Quia enim tempora iusto aut minus et suscipit nam. Sunt adipisci optio porro sit deserunt error omnis et. Voluptas id et quae modi voluptatem ut id.', '1991-05-17 17:34:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '50', '63', 'Dolores omnis in consequatur molestiae ut doloremque. Nesciunt possimus dolores voluptas voluptatem vitae ipsa. Nobis cum nesciunt praesentium maiores. Et id suscipit quasi tenetur cumque itaque optio. Sit et possimus doloremque.', '2005-01-22 23:07:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '42', '46', 'Laborum est necessitatibus officia quia eos quo. Est vel accusantium harum rerum ut consequatur velit quaerat. Ipsam et enim quia. Unde voluptatibus sequi voluptatem voluptas quis qui.', '2012-02-13 11:14:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '27', '46', 'Quidem voluptatem voluptatem rem est amet omnis saepe ab. Inventore quae sit inventore quia natus quos. Aperiam velit est omnis nesciunt facilis et ipsa.', '2012-05-08 08:27:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '65', '49', 'Velit aut aperiam perferendis qui et modi. Necessitatibus aut voluptatibus nisi earum sunt. Nisi nostrum excepturi voluptates tempora omnis laboriosam.', '2015-06-22 04:09:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '68', '19', 'Quasi aut ducimus veritatis vel qui totam. Facere omnis amet voluptas qui perspiciatis. Qui ab blanditiis occaecati facere.', '2014-04-26 20:53:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '20', '75', 'Earum velit consequatur libero rem quo quia. Excepturi unde deserunt aut corporis dolorum nihil sed. Mollitia quia quae veniam.', '2000-07-21 02:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '34', '25', 'Optio quaerat voluptas consectetur labore rerum facilis. Cum quae quia fuga voluptatem distinctio ducimus qui fugit. Dolorem quae ut esse quia rerum. Minus voluptatem et eum.', '1987-08-25 12:19:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '99', '67', 'Quia vitae qui fugiat provident soluta. Magnam maiores aliquam totam dolores reiciendis animi adipisci et. Atque vitae hic incidunt cum quidem quam.', '1972-06-12 23:26:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '1', '6', 'Culpa et voluptas numquam sequi quibusdam ut suscipit. Quia provident iusto deserunt nulla sint ut distinctio. Ea deleniti sit excepturi hic ducimus eum et.', '1983-06-02 04:44:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '66', '12', 'Nostrum quas fugiat soluta quasi soluta qui. Qui corporis sequi quos. Beatae eius excepturi non minus error aut autem. Velit iste distinctio et maxime et distinctio.', '2011-03-17 20:52:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '72', '95', 'Illum magnam quasi rerum et nihil. Commodi rerum voluptas odio.', '1984-03-12 14:15:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '45', '80', 'Quod qui suscipit quia. Rerum at ab neque recusandae pariatur laudantium. Occaecati iusto vitae magnam perspiciatis. Ut enim perspiciatis voluptatum soluta adipisci molestiae non.', '2000-09-12 04:22:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '19', '70', 'Magnam esse et nostrum et rerum. Eos minima delectus omnis corrupti consectetur fugit adipisci voluptas. Ducimus accusantium fugit et iste. Assumenda quis adipisci natus facere eligendi.', '2015-08-12 23:34:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '84', '33', 'Placeat voluptatibus necessitatibus perferendis omnis sit numquam. Perferendis dolor odit nisi ab aspernatur aut. Perferendis nihil sit distinctio aut maxime fugiat est. Velit qui quo nulla aspernatur est.', '1975-02-07 08:43:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '14', '71', 'Placeat consectetur deleniti adipisci fugiat suscipit non. Laborum aspernatur odio ducimus eum sunt. Modi eligendi iure magni sapiente qui.', '1983-05-08 20:06:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '50', '92', 'Quia distinctio neque sequi aut sunt fuga est. Modi totam velit quos quo veniam quod dicta. Omnis aut autem rerum qui molestias et ratione. Modi non nesciunt sed sequi.', '2010-11-14 02:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '70', '1', 'Porro dolorem inventore molestiae velit consequatur. Ut fugiat minima est. Sed ipsum rerum exercitationem minima error enim officia deleniti.', '1991-05-06 15:58:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '11', '29', 'Culpa voluptatibus consequuntur et. Praesentium ut quos eveniet vel. Dolorem nobis et voluptas.', '2005-09-27 13:30:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '72', '41', 'Vel quas rem voluptatem. Ut debitis modi ex omnis eos. Nam consequatur quos fuga mollitia quod aut aliquam reprehenderit.', '1991-05-17 15:30:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '20', '21', 'Tenetur animi rerum voluptas id sed est. Iste itaque nihil alias illum. Veritatis quia rerum omnis illum. Nobis accusantium voluptatem aliquam dolorem deserunt.', '2020-05-28 03:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '39', '69', 'Dicta pariatur rem rerum. Consequatur inventore numquam magni quod. Qui tempore consequatur beatae non ipsam et.', '2011-10-11 13:35:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '52', '75', 'Neque eaque laboriosam dolores molestias. Atque officia at excepturi rerum sapiente quia aut. Labore error eum et et iure enim dolore vel. Quo recusandae sint velit ullam ducimus.', '1972-01-28 07:13:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '56', '9', 'Aperiam sunt sed fuga optio ut est. Voluptates ab voluptatem consequatur. Sunt aliquid ab dolores at voluptate. Non occaecati architecto asperiores nihil.', '1986-05-31 04:53:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '54', '95', 'Quisquam enim laboriosam possimus dolorem veritatis doloremque tenetur ipsum. Quos et impedit odit et facere reiciendis accusantium occaecati. Sit cumque sint hic vero ea pariatur. Eveniet minus voluptas cum numquam ipsa alias non.', '2004-03-24 21:13:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '30', '48', 'Quidem vel exercitationem non qui error a beatae. Ipsum nemo assumenda sint voluptates est necessitatibus voluptas. Occaecati provident doloribus veritatis ex rem. Ipsam omnis tempora velit velit repellat debitis nam tempora. Atque in minus distinctio et eveniet cumque eum necessitatibus.', '1974-02-26 20:52:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '37', '4', 'Dolore suscipit nihil omnis unde minus est. Commodi libero autem ex reiciendis. Neque itaque nobis velit facere sint. Culpa impedit ducimus dolorem quae.', '2020-09-01 14:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '33', '12', 'Corporis aut voluptas eum et blanditiis. Odit quia ipsam beatae tempora sed et. Impedit dignissimos assumenda necessitatibus quis ea qui. Qui quo quos fugiat sit natus dolor velit blanditiis.', '2001-03-25 00:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '85', '52', 'Aut dolorem sed quod aut similique illo itaque. Dolore corrupti explicabo sed fugiat. Et suscipit laboriosam sint sit quibusdam assumenda. Neque reiciendis et vitae eum sit aperiam. Ex perspiciatis illum inventore qui vel.', '1970-10-31 11:14:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '77', '66', 'Blanditiis ut error voluptatem aliquid qui. Odio facilis nulla suscipit aut mollitia repellendus. Quis quo eius placeat. Laborum omnis ducimus ut ab.', '2017-06-28 07:12:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '2', '98', 'Quisquam unde esse eaque ut ratione hic et. Vitae totam ut sed quas iste tempore. Ratione ad et dolore iusto.', '1987-05-05 22:11:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '89', '30', 'Exercitationem dolor nisi molestiae libero et deleniti labore. Facere excepturi qui sit dignissimos reprehenderit neque. Aliquam dolorum ea quia est voluptas qui alias.', '1995-12-27 07:56:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '4', '7', 'Omnis rerum dolor ut quo provident eum reiciendis perferendis. Quaerat ut quis et placeat dolore. Modi dolor eum minima est. Iste fugit tenetur odio veritatis.', '2001-12-29 09:13:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '3', '97', 'Maiores ea necessitatibus aut temporibus recusandae qui suscipit culpa. Suscipit sit quia dicta ipsum ut.', '1999-04-04 21:08:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '27', '93', 'Est aut et rerum velit quas maxime. Dolorum perferendis eum dolorum omnis facere adipisci voluptatibus. Quo eveniet rerum tempore dolore quos.', '1975-11-12 01:01:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '67', '70', 'Esse corporis commodi earum officiis eos. Et et eos fugit velit mollitia porro fuga. Ut dolores illo magnam debitis consectetur officia molestiae asperiores.', '2001-05-18 16:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '1', '1', 'Cum minima quo et voluptate placeat quas. Harum saepe quis illum esse nobis laboriosam laudantium autem. Et optio ut eos expedita. Illo qui id sapiente quo.', '1982-08-05 09:28:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '48', '15', 'Rerum delectus molestiae ducimus sunt quo. Eius autem quisquam assumenda dolor quasi. Est et reiciendis eaque quaerat eveniet sunt iusto deserunt. Dolores sequi commodi excepturi eum.', '2001-07-14 17:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '8', '36', 'Quaerat voluptatem et impedit. Placeat assumenda repellendus perspiciatis molestiae excepturi. Quia autem quas sit explicabo aut aut ut deserunt.', '1974-06-30 12:27:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '45', '50', 'Minima facilis aut et labore aperiam. Inventore pariatur accusantium rerum voluptatem quis accusamus nesciunt laborum. Quis molestiae sapiente mollitia quo quasi debitis. Molestiae veniam pariatur sunt delectus aut. Dolorem quod nobis dolorum unde non.', '1996-07-05 16:22:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '60', '59', 'Provident modi doloribus odit. Et laboriosam dicta debitis quisquam aperiam hic blanditiis.', '1981-05-18 21:17:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '4', '91', 'Corporis odio qui nostrum aut ratione. Magni aliquid voluptatem possimus perferendis delectus ut. Molestias eum qui et possimus dolores.', '1991-08-11 09:24:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '31', '92', 'Et rerum amet et ex quis. Voluptates iure voluptatem debitis nihil ut sed impedit qui. Qui atque ipsa consectetur culpa modi ut. Repellendus dicta eum impedit minus ut. Neque dignissimos facilis autem qui.', '2018-06-19 04:24:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '92', '30', 'Totam provident ad dolore quae eum maiores molestias. Amet voluptatem et dolorem quae ea sit totam.', '2005-07-06 18:45:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '4', '7', 'Dolor accusantium sed inventore labore ea minima. Voluptatem aut dolor ab maxime inventore. Est maiores explicabo architecto qui quod quia.', '2007-08-29 03:33:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '5', '79', 'Optio voluptas ut enim eum. Sit voluptatem harum recusandae a cumque non. Qui quo et eum asperiores voluptas. Voluptas eos et quis quibusdam nam esse nisi.', '2014-06-09 18:47:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '75', '25', 'Voluptas rerum sunt cumque ab. Qui pariatur perspiciatis illo dolore laborum praesentium quia porro. Fugiat ducimus deserunt iusto aut et. Non ut est dolorum corporis nulla.', '2014-08-26 06:11:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '30', '6', 'Aperiam culpa veritatis ea magnam qui natus consequatur illum. Alias neque vitae debitis voluptate ea earum quod. Qui consequatur voluptas id minus nemo. Ipsam aut non rerum fugit qui nulla.', '2022-07-10 03:30:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '89', '94', 'Nostrum odio voluptatem voluptatem quaerat rem. Vero consectetur laboriosam eos consequatur. Non quis et iusto in ex inventore eos. Ut quia minima nulla et.', '2014-02-19 10:22:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '100', '93', 'Autem quaerat nemo sunt minus cumque velit natus. Iure et atque reprehenderit sit consequatur id. Minima ratione ut inventore voluptatum consequatur.', '1997-04-12 00:29:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '91', '42', 'Et sit ad natus quae. Nostrum quas et debitis adipisci odio. Aut dicta amet natus explicabo aliquid.', '1989-09-08 08:32:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '1', '95', 'Praesentium alias deleniti repellat repellendus totam quas quis. Optio et reiciendis saepe maxime rerum. Consequatur dolores dolor accusantium aspernatur eos aut sit.', '2003-01-28 13:26:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '3', '57', 'Aperiam dolores excepturi voluptatem assumenda. Voluptas corrupti aut non saepe sint. Quia nobis exercitationem corporis at dolorem ut ut ut. Rerum voluptatem vel aut voluptatem.', '1990-10-09 16:00:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '88', '34', 'Enim dolores totam quas est sunt sunt et. Optio dolores non optio in dolores. Architecto recusandae praesentium suscipit. Nemo quidem in quaerat minima consequuntur qui rem.', '1992-01-19 18:17:37');



DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types`(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'photos', '2007-08-28 12:18:23', '1998-02-05 16:50:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'video', '1990-04-16 19:33:28', '1990-04-22 08:55:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'music', '2013-08-22 09:03:49', '2016-11-26 13:26:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'games', '2020-02-29 21:20:08', '1978-12-25 22:59:19');



DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    `size` INT,
	metadata VARCHAR(255),
    created_at DATETIME default now(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`,  `created_at`, `updated_at`)
VALUES (1, 1, 2, 'Some description of my_video', 'My_video', 1, 'some metadata', '1992-01-15 21:28:37', '1975-10-10 02:00:24'),
(2, 3, 4, 'Some description of my_music', 'My_music', 2, 'some metadata', '2012-09-11 05:42:21', '1978-01-10 12:33:39'),
(3, 2, 1, 'Some description of my_photo', 'My_photo', 6, 'some metadata', '1994-11-05 17:14:06', '1979-11-24 12:38:44'),
(4, 1, 5, 'Some description of my_game', 'My_game', 7, 'some metadata', '2016-01-24 07:03:24', '1992-02-24 11:56:41'),
(5, 4, 3, 'Some description of my_photo', 'My_photo', 3, 'some metadata', '2017-11-11 08:11:15', '1996-01-15 12:03:31'),
(6, 4, 8, 'Some description of my_game', 'My_game', 4, 'some metadata', '2017-01-03 17:03:11', '1992-02-24 22:12:21'),
(7, 3, 6, 'Some description of my_video', 'My_video', 5, 'some metadata', '2015-06-23 15:04:51', '1999-12-14 23:32:23'),
(8, 4, 7, 'Some description of my_game', 'My_game', 8, 'some metadata', '2011-01-01 19:53:31', '2007-11-01 11:11:27'),
(9, 2, 9, 'Some description of my_music', 'My_music', 10, 'some metadata', '2006-10-17 12:13:55', '2010-03-14 14:42:41'),
(10, 2, 10, 'Some description of my_game', 'My_game', 9, 'some metadata', '2001-11-13 21:16:10', '1995-12-04 21:52:24');


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'exercitationem', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'dolorem', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'sit', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'voluptatem', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'in', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'aperiam', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'vel', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'in', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'voluptas', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'autem', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'tempore', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'perspiciatis', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'maxime', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'culpa', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ex', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'cupiditate', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'ipsum', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'dicta', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'totam', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'et', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quia', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'maxime', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'dolorum', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'aut', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'consequuntur', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'velit', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'corrupti', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'cum', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'veritatis', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'laboriosam', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'earum', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'maiores', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'fuga', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'hic', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'fugit', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'ab', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'a', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'ab', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'non', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'reprehenderit', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'nobis', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'iusto', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'temporibus', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'quos', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'dolor', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'itaque', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'saepe', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'fugit', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'nihil', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'assumenda', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'ratione', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'aspernatur', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'aut', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'quasi', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'necessitatibus', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'alias', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'voluptates', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'ullam', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'molestiae', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'odit', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'et', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'pariatur', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'pariatur', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'quisquam', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'eum', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'amet', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'vel', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'dolore', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'quidem', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'minus', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'doloribus', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'eius', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'et', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'nostrum', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'quod', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'error', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'molestiae', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'quam', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'optio', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'et', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'numquam', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'dolor', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'esse', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'quia', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'facilis', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'deleniti', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'dolores', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'aut', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'voluptas', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'et', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'modi', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'voluptatem', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'voluptatibus', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'commodi', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'in', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'nobis', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'esse', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'officia', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'et', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'quis', '17');



DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '3', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '4', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '2', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '9', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '8', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '6', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '7', '4');

ALTER TABLE `profiles` ADD CONSTRAINT fk_photo_id
    FOREIGN KEY (photo_id) REFERENCES photos(id)
    ON UPDATE CASCADE ON DELETE set NULL;