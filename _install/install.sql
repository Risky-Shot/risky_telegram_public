ALTER TABLE `characters` ADD COLUMN `telegramId` varchar(6) DEFAULT NULL, ADD UNIQUE KEY `telegramId` (`telegramId`);

CREATE TABLE IF NOT EXISTS `tebex_telegram_purchase` (
  `txId` varchar(100) NOT NULL,
  `packageName` text DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL,
  `customerEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`txId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `telegrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '',
  `postal` char(4) NOT NULL DEFAULT 'VN',
  `sender` varchar(6) DEFAULT '',
  `senderDeleted` enum('1','0') NOT NULL DEFAULT '0',
  `receiver` varchar(6) DEFAULT '',
  `receiverDeleted` enum('1','0') NOT NULL DEFAULT '0',
  `message` longtext DEFAULT NULL,
  `readStatus` enum('1','0') NOT NULL DEFAULT '0',
  `isAnonymouse` enum('1','0') NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `sender` (`sender`),
  FULLTEXT KEY `receiver` (`receiver`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `telegram_directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL DEFAULT 0,
  `telegram` varchar(6) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `telegram` (`telegram`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `telegram_tokens` (
  `identifier` int(11) NOT NULL DEFAULT 0,
  `tokens` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;