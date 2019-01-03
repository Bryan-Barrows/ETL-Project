-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: etl_project
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `college_list`
--

DROP TABLE IF EXISTS `college_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `college_list` (
  `college_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(200) DEFAULT NULL,
  `college_city` varchar(100) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`college_list_id`),
  KEY `state_fk_idx` (`state_id`),
  CONSTRAINT `state_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_list`
--

LOCK TABLES `college_list` WRITE;
/*!40000 ALTER TABLE `college_list` DISABLE KEYS */;
INSERT INTO `college_list` VALUES (1,'Princeton University','Princeton',25),(2,'Harvard University','Cambridge',34),(3,'University of Chicago','Chicago',14),(4,'Yale University','New Haven',7),(5,'Columbia University','New York',27),(6,'Massachusetts Institute of Technology','Cambridge',34),(7,'Stanford University','Stanford',5),(8,'University of Pennsylvania','Philadelphia',39),(9,'Duke University','Durham',28),(10,'California Institute of Technology','Pasadena',5),(11,'Dartmouth College','Hanover',24),(12,'Johns Hopkins University','Baltimore',33),(13,'Northwestern University','Evanston',14),(14,'Brown University','Providence',40),(15,'Cornell University','Ithaca',27),(16,'Rice University','Houston',44),(17,'Vanderbilt University','Nashville',43),(18,'University of Notre Dame','Notre Dame',15),(19,'Washington University in St. Louis','St. Louis',38),(20,'Georgetown University','Washington',9),(21,'Emory University','Atlanta',11),(22,'University of California--Berkeley','Berkeley',5),(23,'University of California--Los Angeles','Los Angeles',5),(24,'University of Southern California','Los Angeles',5),(25,'Carnegie Mellon University','Pittsburgh',39),(26,'University of Virginia','Charlottesville',47),(27,'Wake Forest University','Winston-Salem',28),(28,'University of Michigan--Ann Arbor','Ann Arbor',35),(29,'Tufts University','Medford',34),(30,'New York University','New York',27),(31,'University of North Carolina--Chapel Hill','Chapel Hill',28),(32,'Boston College','Chestnut Hill',34),(33,'College of William and Mary','Williamsburg',47),(34,'Brandeis University','Waltham',34),(35,'Georgia Institute of Technology','Atlanta',11),(36,'University of Rochester','Rochester',27),(37,'Boston University','Boston',34),(38,'Case Western Reserve University','Cleveland',30),(39,'University of California--Santa Barbara','Santa Barbara',5),(40,'Northeastern University','Boston',34),(41,'Tulane University','New Orleans',19),(42,'Rensselaer Polytechnic Institute','Troy',27),(43,'University of California--Irvine','Irvine',5),(44,'University of California--San Diego','La Jolla',5),(45,'University of Florida','Gainesville',10),(46,'Lehigh University','Bethlehem',39),(47,'Pepperdine University','Malibu',5),(48,'University of California--Davis','Davis',5),(49,'University of Miami','Coral Gables',10),(50,'University of Wisconsin--Madison','Madison',50),(51,'Villanova University','Villanova',39),(52,'Pennsylvania State University--University Park','University Park',39),(53,'University of Illinois--Urbana-Champaign','Champaign',14),(54,'Ohio State University--Columbus','Columbus',30),(55,'University of Georgia','Athens',11),(56,'George Washington University','Washington',9),(57,'Purdue University--West Lafayette','West Lafayette',15),(58,'University of Connecticut','Storrs',7),(59,'University of Texas--Austin','Austin',44),(60,'University of Washington','Seattle',48),(61,'Brigham Young University--Provo','Provo',45),(62,'Fordham University','New York',27),(63,'Southern Methodist University','Dallas',44),(64,'Syracuse University','Syracuse',27),(65,'University of Maryland--College Park','College Park',33),(66,'Worcester Polytechnic Institute','Worcester',34),(67,'Clemson University','Clemson',41),(68,'University of Pittsburgh','Pittsburgh',39),(69,'American University','Washington',9),(70,'Rutgers University--New Brunswick','Piscataway',25),(71,'Stevens Institute of Technology','Hoboken',25),(72,'Texas A&M University--College Station','College Station',44),(73,'University of Minnesota--Twin Cities','Minneapolis',36),(74,'Virginia Tech','Blacksburg',47),(75,'Baylor University','Waco',44),(76,'Colorado School of Mines','Golden',6),(77,'University of Massachusetts--Amherst','Amherst',34),(78,'Miami University--Oxford','Oxford',30),(79,'Texas Christian University','Fort Worth',44),(80,'University of Iowa','Iowa City',16),(81,'Clark University','Worcester',34),(82,'Florida State University','Tallahassee',10),(83,'Michigan State University','East Lansing',35),(84,'North Carolina State University--Raleigh','Raleigh',28),(85,'University of California--Santa Cruz','Santa Cruz',5),(86,'University of Delaware','Newark',8),(87,'Binghamton University--SUNY','Binghamton',27),(88,'University of Denver','Denver',6),(89,'University of Tulsa','Tulsa',31),(90,'Indiana University--Bloomington','Bloomington',15),(91,'Marquette University','Milwaukee',50),(92,'University of Colorado--Boulder','Boulder',6),(93,'University of San Diego','San Diego',5),(94,'Drexel University','Philadelphia',39),(95,'Saint Louis University','St. Louis',38),(96,'Yeshiva University','New York',27),(97,'Rochester Institute of Technology','Rochester',27),(98,'Stony Brook University--SUNY','Stony Brook',27),(99,'SUNY College of Environmental Science and Forestry','Syracuse',27),(100,'University at Buffalo--SUNY','Buffalo',27),(101,'University of Oklahoma','Norman',31),(102,'University of Vermont','Burlington',46),(103,'Auburn University','Auburn',1),(104,'Illinois Institute of Technology','Chicago',14),(105,'Loyola University Chicago','Chicago',14),(106,'University of New Hampshire','Durham',24),(107,'University of Oregon','Eugene',32),(108,'University of South Carolina','Columbia',41),(109,'University of Tennessee','Knoxville',43),(110,'Howard University','Washington',9),(111,'University of Alabama','Tuscaloosa',1),(112,'University of San Francisco','San Francisco',5),(113,'University of the Pacific','Stockton',5),(114,'University of Utah','Salt Lake City',45),(115,'Arizona State University--Tempe','Tempe',3),(116,'Iowa State University','Ames',16),(117,'Temple University','Philadelphia',39),(118,'University of Kansas','Lawrence',17),(119,'University of St. Thomas','St. Paul',36),(120,'The Catholic University of America','Washington',9),(121,'DePaul University','Chicago',14),(122,'Duquesne University','Pittsburgh',39),(123,'University of Missouri','Columbia',38),(124,'Clarkson University','Potsdam',27),(125,'Colorado State University','Fort Collins',6),(126,'Michigan Technological University','Houghton',35),(127,'Seton Hall University','South Orange',25),(128,'University of Arizona','Tucson',3),(129,'University of California--Riverside','Riverside',5),(130,'University of Dayton','Dayton',30),(131,'University of Nebraska--Lincoln','Lincoln',22),(132,'Hofstra University','Hempstead',27),(133,'Louisiana State University--Baton Rouge','Baton Rouge',19),(134,'Mercer University','Macon',11),(135,'The New School','New York',27),(136,'Rutgers University--Newark','Newark',25),(137,'University of Arkansas','Fayetteville',4),(138,'University of Cincinnati','Cincinnati',30),(139,'University of Kentucky','Lexington',18),(140,'George Mason University','Fairfax',47),(141,'New Jersey Institute of Technology','Newark',25),(142,'San Diego State University','San Diego',5),(143,'University of South Florida','Tampa',10),(144,'Washington State University','Pullman',48),(145,'Kansas State University','Manhattan',17),(146,'Oregon State University','Corvallis',32),(147,'St. John Fisher College','Rochester',27),(148,'University of Illinois--Chicago','Chicago',14),(149,'University of Mississippi','University',37),(150,'University of Texas--Dallas','Richardson',44),(151,'Adelphi University','Garden City',27),(152,'Florida Institute of Technology','Melbourne',10),(153,'Ohio University','Athens',30),(154,'Seattle Pacific University','Seattle',48),(155,'University at Albany--SUNY','Albany',27),(156,'Oklahoma State University','Stillwater',31),(157,'University of Massachusetts--Lowell','Lowell',34),(158,'University of Rhode Island','Kingston',40),(159,'Biola University','La Mirada',5),(160,'Illinois State University','Normal',14),(161,'University of Alabama--Birmingham','Birmingham',1),(162,'University of Hawaii--Manoa','Honolulu',12),(163,'University of La Verne','La Verne',5),(164,'University of Maryland--Baltimore County','Baltimore',33),(165,'Immaculata University','Immaculata',39),(166,'Maryville University of St. Louis','St Louis',38),(167,'Missouri University of Science & Technology','Rolla',38),(168,'St. John\'s University','Queens',27),(169,'University of California--Merced','Merced',5),(170,'University of Louisville','Louisville',18),(171,'Mississippi State University','Mississippi State',37),(172,'Rowan University','Glassboro',25),(173,'University of Central Florida','Orlando',10),(174,'University of Idaho','Moscow',13),(175,'Virginia Commonwealth University','Richmond',47),(176,'Kent State University','Kent',30),(177,'Robert Morris University','Moon Township',39),(178,'Texas Tech University','Lubbock',44),(179,'Union University','Jackson',43),(180,'University of Hartford','West Hartford',7),(181,'Edgewood College','Madison',50),(182,'Lesley University','Cambridge',34),(183,'Lipscomb University','Nashville',43),(184,'Suffolk University','Boston',34),(185,'University of Maine','Orono',20),(186,'University of Wyoming','Laramie',51),(187,'Azusa Pacific University','Azusa',5),(188,'Ball State University','Muncie',15),(189,'Montclair State University','Montclair',25),(190,'Pace University','New York',27),(191,'West Virginia University','Morgantown',49),(192,'Andrews University','Berrien Springs',35),(193,'Indiana University-Purdue University--Indianapolis','Indianapolis',15),(194,'University of Houston','Houston',44),(195,'University of New Mexico','Albuquerque',26),(196,'University of North Dakota','Grand Forks',29),(197,'Widener University','Chester',39),(198,'New Mexico State University','Las Cruces',26),(199,'North Dakota State University','Fargo',29),(200,'Nova Southeastern University','Ft. Lauderdale',10),(201,'University of North Carolina--Charlotte','Charlotte',28),(202,'Bowling Green State University','Bowling Green',30),(203,'California State University--Fullerton','Fullerton',5),(204,'Dallas Baptist University','Dallas',44),(205,'University of Massachusetts--Boston','Boston',34),(206,'University of Nevada--Reno','Reno',23),(207,'Central Michigan University','Mount Pleasant',35),(208,'East Carolina University','Greenville',28),(209,'Florida A&M University','Tallahassee',10),(210,'Montana State University','Bozeman',21),(211,'University of Alaska--Fairbanks','Fairbanks',2),(212,'University of Colorado--Denver','Denver',6),(213,'University of Massachusetts--Dartmouth','North Dartmouth',34),(214,'University of Montana','Missoula',21),(215,'Western Michigan University','Kalamazoo',35),(216,'Florida International University','Miami',10),(217,'Louisiana Tech University','Ruston',19),(218,'South Dakota State University','Brookings',42),(219,'Southern Illinois University--Carbondale','Carbondale',14),(220,'University of Alabama--Huntsville','Huntsville',1),(221,'University of Missouri--Kansas City','Kansas City',38),(222,'Utah State University','Logan',45),(223,'Ashland University','Ashland',30),(224,'Benedictine University','Lisle',14),(225,'California State University--Fresno','Fresno',5),(226,'Gardner-Webb University','Boiling Springs',28),(227,'Georgia State University','Atlanta',11),(228,'Shenandoah University','Winchester',47),(229,'University of South Dakota','Vermillion',42),(230,'Wayne State University','Detroit',35),(231,'American International College','Springfield',34),(232,'Augusta University','Augusta',11),(233,'Barry University','Miami Shores',10),(234,'Boise State University','Boise',13),(235,'Cardinal Stritch University','Milwaukee',50),(236,'Clark Atlanta University','Atlanta',11),(237,'Cleveland State University','Cleveland',30),(238,'Eastern Michigan University','Ypsilanti',35),(239,'East Tennessee State University','Johnson City',43),(240,'Florida Atlantic University','Boca Raton',10),(241,'Georgia Southern University','Statesboro',11),(242,'Grand Canyon University','Phoenix',3),(243,'Indiana State University','Terre Haute',15),(244,'Indiana University of Pennsylvania','Indiana',39),(245,'Jackson State University','Jackson',37),(246,'Kennesaw State University','Kennesaw',11),(247,'Lamar University','Beaumont',44),(248,'Liberty University','Lynchburg',47),(249,'Lindenwood University','St. Charles',38),(250,'Middle Tennessee State University','Murfreesboro',43),(251,'Morgan State University','Baltimore',33),(252,'National Louis University','Chicago',14),(253,'North Carolina A&T State University','Greensboro',28),(254,'Northern Arizona University','Flagstaff',3),(255,'Northern Illinois University','DeKalb',14),(256,'Oakland University','Rochester',35),(257,'Old Dominion University','Norfolk',47),(258,'Portland State University','Portland',32),(259,'Prairie View A&M University','Prairie View',44),(260,'Regent University','Virginia Beach',47),(261,'Sam Houston State University','Huntsville',44),(262,'San Francisco State University','San Francisco',5),(263,'Spalding University','Louisville',18),(264,'Tennessee State University','Nashville',43),(265,'Tennessee Technological University','Cookeville',43),(266,'Texas A&M University--Commerce','Commerce',44),(267,'Texas A&M University--Corpus Christi','Corpus Christi',44),(268,'Texas A&M University--Kingsville','Kingsville',44),(269,'Texas Southern University','Houston',44),(270,'Texas State University','San Marcos',44),(271,'Texas Woman\'s University','Denton',44),(272,'Trevecca Nazarene University','Nashville',43),(273,'Trinity International University','Deerfield',14),(274,'University of Akron','Akron',30),(275,'University of Arkansas--Little Rock','Little Rock',4),(276,'University of Louisiana--Lafayette','Lafayette',19),(277,'University of Louisiana--Monroe','Monroe',19),(278,'University of Maryland--Eastern Shore','Princess Anne',33),(279,'University of Memphis','Memphis',43),(280,'University of Missouri--St. Louis','St. Louis',38),(281,'University of Nebraska--Omaha','Omaha',22),(282,'University of Nevada--Las Vegas','Las Vegas',23),(283,'University of New Orleans','New Orleans',19),(284,'University of North Carolina--Greensboro','Greensboro',28),(285,'University of Northern Colorado','Greeley',6),(286,'University of North Texas','Denton',44),(287,'University of South Alabama','Mobile',1),(288,'University of Southern Mississippi','Hattiesburg',37),(289,'University of Texas--Arlington','Arlington',44),(290,'University of Texas--El Paso','El Paso',44),(291,'University of Texas--Rio Grande Valley','Edinburg',44),(292,'University of Texas--San Antonio','San Antonio',44),(293,'University of the Cumberlands','Williamsburg',18),(294,'University of Toledo','Toledo',30),(295,'University of West Florida','Pensacola',10),(296,'University of West Georgia','Carrollton',11),(297,'University of Wisconsin--Milwaukee','Milwaukee',50),(298,'Valdosta State University','Valdosta',11),(299,'Wichita State University','Wichita',17),(300,'Wright State University','Dayton',30),(301,'Alliant International University','San Diego',5),(302,'Argosy University','Orange',5),(303,'California Institute of Integral Studies','San Francisco',5),(304,'Capella University','Minneapolis',36),(305,'Idaho State University','Pocatello',13),(306,'Northcentral University','San Diego',3),(307,'Trident University International','Cypress',5),(308,'Union Institute and University','Cincinnati',30),(309,'University of Phoenix','Phoenix',3),(310,'Walden University','Minneapolis',36),(311,'Wilmington University','New Castle',8),(312,'Harvey Mudd College',NULL,NULL),(313,'Occidental College',NULL,NULL),(314,'Cal Poly San Luis Obispo',NULL,NULL),(315,'University of California at Los Angeles',NULL,NULL),(316,'Pomona College',NULL,NULL),(317,'San Jose State University',NULL,NULL),(318,'California State University--Chico',NULL,NULL),(319,'California State University--Long Beach',NULL,NULL),(320,'California State University--East Bay',NULL,NULL),(321,'California State University--Sacramento',NULL,NULL),(322,'California State University--Northridge',NULL,NULL),(323,'California State University--Dominguez Hills',NULL,NULL),(324,'California State University--Stanislaus',NULL,NULL),(325,'Humboldt State University',NULL,NULL),(326,'Thomas Aquinas College',NULL,NULL),(327,'New Mexico Institute of Mining and Technology',NULL,NULL),(328,'Brigham Young University',NULL,NULL),(329,'Arizona State University',NULL,NULL),(330,'Seattle University',NULL,NULL),(331,'University of Puget Sound',NULL,NULL),(332,'Colorado College',NULL,NULL),(333,'Reed College',NULL,NULL),(334,'Whitman College',NULL,NULL),(335,'Montana State University--Bozeman',NULL,NULL),(336,'Gonzaga University',NULL,NULL),(337,'University of Hawaii',NULL,NULL),(338,'Western Washington University',NULL,NULL),(339,'Regis University',NULL,NULL),(340,'University of Alaska--Anchorage',NULL,NULL),(341,'Lewis & Clark College',NULL,NULL),(342,'Eastern Washington University',NULL,NULL),(343,'Fort Lewis College',NULL,NULL),(344,'Utah Valley State College',NULL,NULL),(345,'Evergreen State College',NULL,NULL),(346,'Southern Utah University',NULL,NULL),(347,'Montana State University--Billings',NULL,NULL),(348,'University Of Chicago',NULL,NULL),(349,'Carleton College',NULL,NULL),(350,'University of Illinois at Urbana-Champaign',NULL,NULL),(351,'University of Missouri--Rolla',NULL,NULL),(352,'South Dakota School of Mines & Technology',NULL,NULL),(353,'University of Michigan',NULL,NULL),(354,'Purdue University',NULL,NULL),(355,'DePauw University',NULL,NULL),(356,'Bradley University',NULL,NULL),(357,'St. Olaf College',NULL,NULL),(358,'University of Minnesota',NULL,NULL),(359,'Ohio State University',NULL,NULL),(360,'Denison University',NULL,NULL),(361,'University of Illinois at Chicago',NULL,NULL),(362,'Oberlin College',NULL,NULL),(363,'University of Missouri--Columbia',NULL,NULL),(364,'University of Nebraska',NULL,NULL),(365,'Gustavus Adolphus College',NULL,NULL),(366,'University of Wisconsin--Platteville',NULL,NULL),(367,'Wittenberg University',NULL,NULL),(368,'Grinnell College',NULL,NULL),(369,'University of Wisconsin--Whitewater',NULL,NULL),(370,'Minnesota State University--Mankato',NULL,NULL),(371,'University of Nebraska at Omaha',NULL,NULL),(372,'Southern Illinois University Carbondale',NULL,NULL),(373,'St. Cloud State University',NULL,NULL),(374,'University of Wisconsin--Parkside',NULL,NULL),(375,'Missouri State University',NULL,NULL),(376,'University of Wisconsin--La Crosse',NULL,NULL),(377,'University of Wisconsin--Stout',NULL,NULL),(378,'Robert Morris College',NULL,NULL),(379,'University of Wisconsin--Oshkosh',NULL,NULL),(380,'University of Wisconsin--Eau Claire',NULL,NULL),(381,'Park University',NULL,NULL),(382,'University of Wisconsin--Stevens Point',NULL,NULL),(383,'University of Wisconsin--Green Bay',NULL,NULL),(384,'Indiana Wesleyan University',NULL,NULL),(385,'Pittsburg State University',NULL,NULL),(386,'Davenport University',NULL,NULL),(387,'Black Hills State University',NULL,NULL),(388,'Washington and Lee University',NULL,NULL),(389,'Davidson College',NULL,NULL),(390,'Texas A&M University',NULL,NULL),(391,'Virginia Polytechnic Institute and State University',NULL,NULL),(392,'University of Richmond',NULL,NULL),(393,'American University--Washington D.C.',NULL,NULL),(394,'Louisiana State University',NULL,NULL),(395,'Randolph-Macon College',NULL,NULL),(396,'North Carolina State University',NULL,NULL),(397,'University of Alabama at Huntsville',NULL,NULL),(398,'University of North Carolina at Chapel Hill',NULL,NULL),(399,'University of Alabama--Tuscaloosa',NULL,NULL),(400,'University of Texas at Arlington',NULL,NULL),(401,'University of Maryland Baltimore County',NULL,NULL),(402,'University of Louisiana at Lafayette',NULL,NULL),(403,'University of Arkansas--Monticello',NULL,NULL),(404,'University of North Carolina at Charlotte',NULL,NULL),(405,'LeTourneau University',NULL,NULL),(406,'University of Texas at El Paso',NULL,NULL),(407,'University of Texas at San Antonio',NULL,NULL),(408,'University of Alabama at Birmingham',NULL,NULL),(409,'Appalachian State University',NULL,NULL),(410,'Western Carolina University',NULL,NULL),(411,'Jacksonville University',NULL,NULL),(412,'University of North Carolina at Wilmington',NULL,NULL),(413,'Oklahoma City University',NULL,NULL),(414,'Arkansas State University',NULL,NULL),(415,'Tarleton State University',NULL,NULL),(416,'Morehead State University',NULL,NULL),(417,'Mississippi College',NULL,NULL),(418,'Austin Peay State University',NULL,NULL),(419,'Saint Leo University',NULL,NULL),(420,'Tusculum College',NULL,NULL),(421,'Virginia Wesleyan College',NULL,NULL),(422,'Lee University',NULL,NULL),(423,'Florida Metropolitan University',NULL,NULL),(424,'Polytechnic University of New York--Brooklyn',NULL,NULL),(425,'Cooper Union',NULL,NULL),(426,'Bucknell University',NULL,NULL),(427,'Colgate University',NULL,NULL),(428,'Amherst College',NULL,NULL),(429,'Lafayette College',NULL,NULL),(430,'Bowdoin College',NULL,NULL),(431,'College of the Holy Cross',NULL,NULL),(432,'Swarthmore College',NULL,NULL),(433,'Williams College',NULL,NULL),(434,'Wesleyan University',NULL,NULL),(435,'Wentworth Institute of Technology',NULL,NULL),(436,'Bates College',NULL,NULL),(437,'Binghamton University',NULL,NULL),(438,'Union College',NULL,NULL),(439,'Vassar College',NULL,NULL),(440,'Middlebury College',NULL,NULL),(441,'Mount Holyoke College',NULL,NULL),(442,'St. John\'s University--New York',NULL,NULL),(443,'Long Island University',NULL,NULL),(444,'Stony Brook University',NULL,NULL),(445,'Franklin and Marshall College',NULL,NULL),(446,'State University of New York at Albany',NULL,NULL),(447,'Rutgers University',NULL,NULL),(448,'Pratt Institute',NULL,NULL),(449,'Rider University',NULL,NULL),(450,'Providence College',NULL,NULL),(451,'Ithaca College',NULL,NULL),(452,'Colby College',NULL,NULL),(453,'Gettysburg College',NULL,NULL),(454,'Pennsylvania State University',NULL,NULL),(455,'Siena College',NULL,NULL),(456,'La Salle University',NULL,NULL),(457,'State University of New York at Farmingdale',NULL,NULL),(458,'Smith College',NULL,NULL),(459,'Hamilton College',NULL,NULL),(460,'Wellesley College',NULL,NULL),(461,'University of New Haven',NULL,NULL),(462,'Dowling College',NULL,NULL),(463,'State University of New York at Buffalo',NULL,NULL),(464,'State University of New York at Geneseo',NULL,NULL),(465,'Fashion Institute of Technology',NULL,NULL),(466,'Philadelphia University',NULL,NULL),(467,'Ursinus College',NULL,NULL),(468,'Juniata College',NULL,NULL),(469,'Fairleigh Dickinson University',NULL,NULL),(470,'State University of New York at Oswego',NULL,NULL),(471,'State University of New York at Oneonta',NULL,NULL),(472,'Quinnipiac University',NULL,NULL),(473,'State University of New York at Plattsburgh',NULL,NULL),(474,'Sacred Heart University',NULL,NULL),(475,'Skidmore College',NULL,NULL),(476,'Moravian College',NULL,NULL),(477,'Penn State--Harrisburg',NULL,NULL),(478,'Fitchburg State College',NULL,NULL),(479,'Roger Williams University',NULL,NULL),(480,'University Of Maine',NULL,NULL),(481,'State University of New York at Potsdam',NULL,NULL),(482,'Niagara University',NULL,NULL),(483,'State University of New York at Fredonia',NULL,NULL),(484,'University of Southern Maine',NULL,NULL),(485,'Mercy College',NULL,NULL);
/*!40000 ALTER TABLE `college_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 20:25:33