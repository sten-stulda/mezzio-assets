# Host: localhost  (Version 5.7.31)
# Date: 2021-10-12 00:41:57
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "availability"
#

DROP TABLE IF EXISTS `availability`;
CREATE TABLE `availability` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "availability"
#


#
# Structure for table "confidentiality"
#

DROP TABLE IF EXISTS `confidentiality`;
CREATE TABLE `confidentiality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "confidentiality"
#

/*!40000 ALTER TABLE `confidentiality` DISABLE KEYS */;
INSERT INTO `confidentiality` VALUES (1,'1','Aktiva jsou veřejně přístupná nebo byla určena ke zveřejnění. Narušení důvěrnosti aktiv neohrožuje opravněné zájmy povinné osoby. V případě sdílení takového aktiva s třetími  stranami a použití klasifikace podle tzv. traffic light protokolu (dále jen \"TLP\") je využíváno označení TLP: WHITE',1),(2,'2','',2),(3,'3','',3),(4,'4','',4);
/*!40000 ALTER TABLE `confidentiality` ENABLE KEYS */;

#
# Structure for table "impact"
#

DROP TABLE IF EXISTS `impact`;
CREATE TABLE `impact` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `level` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "impact"
#


#
# Structure for table "integrity"
#

DROP TABLE IF EXISTS `integrity`;
CREATE TABLE `integrity` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "integrity"
#


#
# Structure for table "resulting_rate"
#

DROP TABLE IF EXISTS `resulting_rate`;
CREATE TABLE `resulting_rate` (
  `level_of_threat` int(11) NOT NULL,
  `level_of_vulnerability` int(11) NOT NULL,
  `level_of_impact` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`level_of_threat`,`level_of_vulnerability`,`level_of_impact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

#
# Data for table "resulting_rate"
#

/*!40000 ALTER TABLE `resulting_rate` DISABLE KEYS */;
INSERT INTO `resulting_rate` VALUES (1,1,1,1),(1,1,2,2),(1,1,3,3),(1,1,4,4),(1,2,1,2),(1,2,2,3),(1,2,3,4),(1,2,4,5),(1,3,1,3),(1,3,2,4),(1,3,3,5),(1,3,4,6),(1,4,1,4),(1,4,2,5),(1,4,3,6),(1,4,4,7),(2,1,1,2),(2,1,2,3),(2,1,3,4),(2,1,4,5),(2,2,1,3),(2,2,2,4),(2,2,3,5),(2,2,4,6),(2,3,1,4),(2,3,2,5),(2,3,3,6),(2,3,4,7),(2,4,1,5),(2,4,2,6),(2,4,3,7),(2,4,4,8),(3,1,1,3),(3,1,2,4),(3,1,3,5),(3,1,4,6),(3,2,1,4),(3,2,2,5),(3,2,3,6),(3,2,4,7),(3,3,1,5),(3,3,2,6),(3,3,3,7),(3,3,4,8),(3,4,1,6),(3,4,2,7),(3,4,3,8),(3,4,4,9),(4,1,1,4),(4,1,2,5),(4,1,3,6),(4,1,4,7),(4,2,1,5),(4,2,2,6),(4,2,3,7),(4,2,4,8),(4,3,1,6),(4,3,2,7),(4,3,3,8),(4,3,4,9),(4,4,1,7),(4,4,2,8),(4,4,3,9),(4,4,4,10);
/*!40000 ALTER TABLE `resulting_rate` ENABLE KEYS */;

#
# Structure for table "risk_limits"
#

DROP TABLE IF EXISTS `risk_limits`;
CREATE TABLE `risk_limits` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `min_value` int(11) NOT NULL,
  `max_value` int(11) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "risk_limits"
#

/*!40000 ALTER TABLE `risk_limits` DISABLE KEYS */;
INSERT INTO `risk_limits` VALUES (1,1,3,99,'Riziko je považováno za přijatelné.'),(1,2,100,249,'Riziko může být sníženo méně náročnými opatřeními nebo v případě vyšší náročnosti opatření je riziko přijatelné.'),(3,3,250,399,'Riziko je dlouhodobě nepřípustné a musí být zahájeny systematické kroky k jeho odstranění.'),(4,4,300,810,'Riziko je nepřípustné a musí být neprodleně zahájeny kroky k jeho odstranění.');
/*!40000 ALTER TABLE `risk_limits` ENABLE KEYS */;

#
# Structure for table "threat"
#

DROP TABLE IF EXISTS `threat`;
CREATE TABLE `threat` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "threat"
#


#
# Structure for table "vulnerability"
#

DROP TABLE IF EXISTS `vulnerability`;
CREATE TABLE `vulnerability` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "vulnerability"
#

