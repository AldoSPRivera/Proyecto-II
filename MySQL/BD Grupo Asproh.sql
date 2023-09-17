-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para bd_local_asproh
CREATE DATABASE IF NOT EXISTS `bd_local_asproh` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `bd_local_asproh`;

-- Volcando estructura para tabla bd_local_asproh.person
CREATE TABLE IF NOT EXISTS `person` (
  `ID` int(11) NOT NULL,
  `UUID` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `LastUpdate` datetime(3) DEFAULT NULL,
  `CreationUserID` int(11) DEFAULT NULL,
  `CreationDate` datetime(3) DEFAULT NULL,
  `LastUpdateUserID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `FirstName` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdentificationDocument` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdentificationDocumentName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Picture` longblob DEFAULT NULL,
  `CountryID` int(11) DEFAULT NULL,
  `Passport` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FixedCategory301ID` int(11) DEFAULT NULL,
  `FixedCategory302ID` int(11) DEFAULT NULL,
  `FixedCategory303ID` int(11) DEFAULT NULL,
  `FixedCategory304ID` int(11) DEFAULT NULL,
  `FixedCategory305ID` int(11) DEFAULT NULL,
  `Custom01` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ErpSendStatusID` int(11) DEFAULT NULL,
  `ErpSendDate` datetime(3) DEFAULT NULL,
  `ErpDocumentID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecordStatusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  KEY `IX_PERSON_ID` (`ID`),
  KEY `IX_PERSON_LASTUPDATE` (`LastUpdate`),
  KEY `IX_PERSON_NAME` (`Name`),
  KEY `IX_PERSON_PASSPORT` (`Passport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_local_asproh.user
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL,
  `UUID` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `LastUpdate` datetime(3) DEFAULT NULL,
  `CreationDate` datetime(3) DEFAULT NULL,
  `CreationUserID` int(11) DEFAULT NULL,
  `LastUpdateUserID` int(11) DEFAULT NULL,
  `VoidUserID` int(11) DEFAULT NULL,
  `PersonID` int(11) DEFAULT NULL,
  `Login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fingerprint` longblob DEFAULT NULL,
  `DefaultStoreID` int(11) NOT NULL,
  `PIN` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdCard` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `SalesPersonExternalID` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsApplication` int(11) DEFAULT NULL,
  `ExternalID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecordStatusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  UNIQUE KEY `IX_USER_LOGIN` (`Login`),
  UNIQUE KEY `IX_USER_PIN` (`PIN`),
  UNIQUE KEY `IX_USER_IDCARD` (`IdCard`),
  KEY `IX_USER_ID` (`ID`),
  KEY `IX_USER_EXTERNALID` (`ExternalID`),
  KEY `IX_USER_ACTIVE` (`Active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
