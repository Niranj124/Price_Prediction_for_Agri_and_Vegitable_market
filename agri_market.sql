# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             agri_market
# Server version:       5.4.3-beta-community
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.1 RC1 Revision: 1064
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'agri_market'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "agri_market" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "agri_market";


#
# Table structure for table 'dataset'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "dataset" (
  "s1" varchar(500) DEFAULT NULL,
  "s2" varchar(500) DEFAULT NULL,
  "s3" varchar(500) DEFAULT NULL,
  "s4" varchar(500) DEFAULT NULL,
  "s5" varchar(500) DEFAULT NULL,
  "s6" varchar(500) DEFAULT NULL,
  "s7" varchar(500) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'dataset'
#

/*!40000 ALTER TABLE "dataset" DISABLE KEYS;*/
LOCK TABLES "dataset" WRITE;
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Vegetable','Season','Month','Temp','Disaster','Vegetable condition','Priceperkg');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','','no','fresh','50');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','winter','jan','15','no','fresh','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','winter','jan','15','no','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cucumber','winter','jan','15','no','fresh','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','winter','','15','yes','fresh','130');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','winter','jan','15','no','fresh','10');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Bitter gourd','winter','jan','15','no','fresh','35');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('onion','winter','jan','15','no','fresh','35');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','fresh','45');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('garlic','winter','jan','15','no','fresh','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','winter','jan','15','yes','fresh','45');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('chilly','winter','jan','','no','fresh','80');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('okra','winter','jan','15','no','scrap','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','winter','jan','15','no','fresh','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','summer','apr','32','no','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','summer','apr','33','no','fresh','100');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('radish','summer','apr','','no','fresh','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','summer','apr','35','no','avarage','80');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','apr','32','no','fresh','50');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','summer','apr','37','no','fresh','60');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','monsoon','july','30','no','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','summer','apr','37','yes','avarage','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Bitter gourd','autumn','sept','32','no','fresh','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('onion','summer','apr','38','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','monsoon','july','28','yes','fresh','130');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('garlic','autumn','oct','30','no','fresh','170');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','monsoon','july','27','yes','scrap','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','winter','dec','18','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('chilly','summer','may','40','yes','fresh','200');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('okra','monsoon','aug','29','no','fresh','15');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','summer','may','41','no','fresh','10');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','summer','may','','no','fresh','40');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','summer','june','37','yes','scrap','200');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','monsoon','aug','31','yes','fresh','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','monsoon','july','30','yes','fresh','250');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','yes','fresh','90');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','winter','dec','15','no','scrap','16');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','avarage','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','winter','jan','15','no','scarp','40');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','monsoon',' ','27','no','scrap','15');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cucumber','monsoon','july','31','no','avarage','12');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','summer','may','43','no','avarage','50');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','winter','jan','15','no','fresh','15');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Bitter gourd','winter','dec','21','no','scarp','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('onion','winter','jan','26','no','avarage','28');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','fresh','35');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('garlic','winter','jan','15','no','fresh','120');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','jan','35','yes','avarage','75');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','spring','march','30','yes','fresh','18');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('chilly','winter','jan','15','no','fresh','80');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('okra','monsoon','aug','29','yes','fresh','40');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','winter','jan','15','yes','fresh','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','no','fresh','70');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','summer','apr','32','no','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','summer','','33','no','fresh','100');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('radish','summer','apr','32','no','fresh','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','summer','apr','35','yes','avarage','120');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','apr','32','no','fresh','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','summer','apr','37','no','fresh','60');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','monsoon','july','30','no','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','summer','apr','37','yes','avarage','80');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','summer','may','41','no','fresh','15');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','summer','may','38','no','fresh','45');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','summer','june','37','yes','scrap','190');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','monsoon','','31','yes','fresh','50');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','monsoon','july','30','yes','fresh','210');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','yes','fresh','130');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','winter','dec','15','no','scrap','10');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','avarage','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','winter','jan','15','no','scarp','42');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','monsoon',' ','27','no','scrap','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cucumber','monsoon','july','31','no','avarage','15');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','summer','may','43','no','avarage','55');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Bitter gourd','winter','dec','21','no','scarp','29');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('onion','winter','jan','26','no','avarage','32');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','fresh','20');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('garlic','winter','jan','15','no','fresh','132');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','jan','35','yes','avarage','60');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','spring','march','30','yes','fresh','21');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('chilly','winter','jan','15','no','fresh','75');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('okra','monsoon','aug','29','yes','fresh','');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','winter','jan','15','no','fresh','19');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','winter','jan','15','yes','fresh','32');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','no','fresh','90');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','summer','apr','32','no','fresh','22');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','summer','apr','33','no','fresh','35');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('radish','summer','apr','32','no','fresh','21');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','summer','apr','35','yes','avarage','90');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','apr','32','no','fresh','33');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','summer','apr','37','no','fresh','55');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','monsoon','july','30','no','fresh','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','monsoon','aug','31','yes','fresh','45');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','monsoon','july','30','yes','fresh','170');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','yes','fresh','150');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','winter','dec','15','no','scrap','24');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','avarage','30');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','winter','jan','15','no','scarp','35');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','monsoon',' ','27','no','scrap','23');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cucumber','monsoon','july','31','no','avarage','21');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pointed grourd ','summer','may','43','no','avarage','53');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Raddish','winter','jan','15','no','fresh','27');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('Bitter gourd','winter','dec','21','no','scarp','32');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('onion','winter','jan','26','no','avarage','24');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('tomato ','winter','jan','15','no','fresh','22');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('garlic','winter','jan','15','no','fresh','123');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('cabage','summer','jan','35','yes','avarage','55');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('califlower','spring','march','30','yes','fresh','21');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('chilly','winter','jan','15','no','fresh','90');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('okra','monsoon','aug','29','yes','fresh','25');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('pumkin','winter','jan','15','no','fresh','21');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('brinjal','winter','jan','15','yes','fresh','33');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('ginger','winter','jan','15','no','fresh','88');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('potato','summer','apr','32','no','fresh','24');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('peas','summer','apr','33','no','fresh','33');
REPLACE INTO "dataset" ("s1", "s2", "s3", "s4", "s5", "s6", "s7") VALUES
	('radish','summer','apr','32','no','fresh','9');
UNLOCK TABLES;
/*!40000 ALTER TABLE "dataset" ENABLE KEYS;*/


#
# Table structure for table 'insurance'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "insurance" (
  "s1" varchar(5000) DEFAULT NULL,
  "s2" varchar(5000) DEFAULT NULL,
  "s3" varchar(5000) DEFAULT NULL,
  "s4" varchar(5000) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'insurance'
#

/*!40000 ALTER TABLE "insurance" DISABLE KEYS;*/
LOCK TABLES "insurance" WRITE;
REPLACE INTO "insurance" ("s1", "s2", "s3", "s4") VALUES
	('Pradhan Mantri Fasal Bima Yojana (PMFBY)','Food crops (Cereals, Millets, Pulses), Oilseeds, Commercial & Horticultural crops','- 2% for Kharif crops
- 1.5% for Rabi crops
- 5% for commercial/horticultural crops','100% of the sum insured (based on Scale of Finance)');
REPLACE INTO "insurance" ("s1", "s2", "s3", "s4") VALUES
	('Coconut Palm Insurance Scheme (CPIS)','Coconut palms (aged 4 to 60 years)','?9 per palm (small growers)
?14 per palm (others)','- 900/palm (age 4–15 yrs)
- 1,750/palm (age 16–60 yrs)');
REPLACE INTO "insurance" ("s1", "s2", "s3", "s4") VALUES
	('Livestock Insurance Scheme','Cows, buffaloes (milch animals)','50% of premium subsidized','Sum assured = 100% of market value of animal');
REPLACE INTO "insurance" ("s1", "s2", "s3", "s4") VALUES
	('Weather Based Crop Insurance Scheme (WBCIS)','Weather-sensitive crops (e.g., Groundnut, Potato, Grapes, Mango, etc.)','- 2% for Kharif
- 1.5% for Rabi
- 5% for commercial/horticulture crops','Payout linked to weather index deviation from normal');
REPLACE INTO "insurance" ("s1", "s2", "s3", "s4") VALUES
	('Unified Package Insurance Scheme (UPIS)','Includes: PMFBY or WBCIS +:
- Personal Accident
- Life Insurance
- Student Safety
- Household/Workplace assets
- Agriculture Equipment','Crop portion same as PMFBY/WBCIS
Add-on premiums vary by component','Crop insurance as per PMFBY/WBCIS
Life: ?50,000
Personal accident: ?25,000–?50,000
Assets: ?10,000–?20,000');
UNLOCK TABLES;
/*!40000 ALTER TABLE "insurance" ENABLE KEYS;*/


#
# Table structure for table 'rental'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "rental" (
  "s1" varchar(5000) DEFAULT NULL,
  "s2" varchar(5000) DEFAULT NULL,
  "s3" varchar(5000) DEFAULT NULL,
  "s4" varchar(5000) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'rental'
#

/*!40000 ALTER TABLE "rental" DISABLE KEYS;*/
LOCK TABLES "rental" WRITE;
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	('AgroRent Solutions Pvt. Ltd.','Tractor (45 HP)',' Rs.500/hr','No. 12, Green Park Road, Coimbatore, Tamil Nadu - 641001.Contact: +91 98765 43210');
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	('AgroRent Solutions Pvt. Ltd.','Rotavator','Rs.300/hr','No. 12, Green Park Road, Coimbatore, Tamil Nadu - 641001.Contact: +91 98765 43210');
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	(' AgroRent Solutions Pvt. Ltd.','Combine Harvester','Rs.2,000/hr','No. 12, Green Park Road, Coimbatore, Tamil Nadu - 641001.Contact: +91 98765 43210');
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	('FarmEase Rentals','Power Tiller','Rs.250/hr','34, AgriTech Building, Trichy Road, Madurai, Tamil Nadu - 625001.Contact: +91 94444 88888');
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	('FarmEase Rentals','Seed Drill','Rs.150/hr','34, AgriTech Building, Trichy Road, Madurai, Tamil Nadu - 625001.Contact: +91 94444 88888');
REPLACE INTO "rental" ("s1", "s2", "s3", "s4") VALUES
	('FarmEase Rentals','Sprayer Machine','Rs.100/hr','34, AgriTech Building, Trichy Road, Madurai, Tamil Nadu - 625001.Contact: +91 94444 88888');
UNLOCK TABLES;
/*!40000 ALTER TABLE "rental" ENABLE KEYS;*/


#
# Table structure for table 'suggestion'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "suggestion" (
  "season" varchar(500) DEFAULT NULL,
  "Vegetables" varchar(500) DEFAULT NULL,
  "Ideal Temperature Range (°C)" varchar(500) DEFAULT NULL,
  "Best Cultivation Conditions" varchar(5000) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'suggestion'
#

/*!40000 ALTER TABLE "suggestion" DISABLE KEYS;*/
LOCK TABLES "suggestion" WRITE;
REPLACE INTO "suggestion" ("season", "Vegetables", "Ideal Temperature Range (°C)", "Best Cultivation Conditions") VALUES
	('Winter','Vegetables:Spinach, Cauliflower, Cabbage, Carrot, Peas, Broccoli, Radish, Garlic, Onion, Potato, Lettuce','Ideal Temperature Range (°C):5°C to 20°C','Best Cultivation Conditions:Cool temperatures with moderate rainfall, frost-tolerant');
REPLACE INTO "suggestion" ("season", "Vegetables", "Ideal Temperature Range (°C)", "Best Cultivation Conditions") VALUES
	('Summer','Vegetables:Tomato, Cucumber, Chili Peppers, Bell Peppers, Okra, Eggplant, Squash, Melons, Beans (Green Beans, Lima), Corn, Sweet Potato','Ideal Temperature Range (°C):25°C to 40°C','Best Cultivation Conditions:Warm temperatures, plenty of sunlight, moderate moisture');
REPLACE INTO "suggestion" ("season", "Vegetables", "Ideal Temperature Range (°C)", "Best Cultivation Conditions") VALUES
	('Monsoon','Vegetables:Rice, Pointed Gourd, Bitter Gourd, Okra, Pumpkin, Cabbage, Tomato, Peas, Brinjal, Fenugreek (Methi)','Ideal Temperature Range (°C):20°C to 30°C','Best Cultivation Conditions:Heavy rainfall, high humidity, well-drained soil');
REPLACE INTO "suggestion" ("season", "Vegetables", "Ideal Temperature Range (°C)", "Best Cultivation Conditions") VALUES
	('Autumn','Vegetables:Spinach, Lettuce, Carrot, Broccoli, Cauliflower, Kale, Garlic, Radish, Onion','Ideal Temperature Range (°C):15°C to 30°C','Best Cultivation Conditions:Moderate temperatures, moderate to low rainfall');
REPLACE INTO "suggestion" ("season", "Vegetables", "Ideal Temperature Range (°C)", "Best Cultivation Conditions") VALUES
	('Spring','Vegetables:Peas, Lettuce, Radish, Spinach, Broccoli, Cabbage, Cauliflower, Carrot, Potato, Tomato, Green Beans','Ideal Temperature Range (°C):10°C to 25°C','Best Cultivation Conditions:Mild temperatures, mild rain, longer daylight hours');
UNLOCK TABLES;
/*!40000 ALTER TABLE "suggestion" ENABLE KEYS;*/


#
# Table structure for table 'user_information'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user_information" (
  "userid" int(11) NOT NULL AUTO_INCREMENT,
  "username" varchar(50) DEFAULT NULL,
  "password" varchar(50) DEFAULT NULL,
  "address" varchar(50) DEFAULT NULL,
  "emailid" varchar(50) DEFAULT NULL,
  "mobile" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("userid")
) AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'user_information'
#

/*!40000 ALTER TABLE "user_information" DISABLE KEYS;*/
LOCK TABLES "user_information" WRITE;
REPLACE INTO "user_information" ("userid", "username", "password", "address", "emailid", "mobile") VALUES
	(1,'priya','priya','cbe','priya@gmail.com','9856325698');
REPLACE INTO "user_information" ("userid", "username", "password", "address", "emailid", "mobile") VALUES
	(2,'Ranji','ranji','cbe','ranji@gmail.com','9865748514');
UNLOCK TABLES;
/*!40000 ALTER TABLE "user_information" ENABLE KEYS;*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
