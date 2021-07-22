-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: storage
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idorder` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `data` varchar(30) NOT NULL,
  `total` int NOT NULL,
  `paymethod` varchar(20) NOT NULL,
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,11,'Thu Jul 22 16:22:18 CEST 2021',70,'PayPal');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `code` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` float DEFAULT '0',
  `platform` varchar(100) DEFAULT NULL,
  `softhouse` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1000,'Monster Hunter Rise','Ambientato nel villaggio di Kamura, luogo a tema ninja, MONSTER HUNTER RISE ti esorta a esplorare lussureggianti ecosistemi e ad affrontare temibili mostri per diventare il cacciatore definitivo',60,'Switch','Capcom',2435),(1001,'Dragonball Fighter Z','Contiene tutto ciò che ha reso famosa la serie DRAGON BALL: scontri senza limiti fra guerrieri potentissimi. In collaborazione con Arc System Works, il gioco offre grafica da Anime, con tecniche di combattimento facili da apprendere, ma difficili da padroneggiare',20,'Playstation 4,Xbox one,Switch','Arc System Works',4765),(1002,'DARK SOULS™: REMASTERED','E poi venne il Fuoco. Rivivi l\'esperienza che ha rivoluzionato il mondo dei videogiochi e dato vita a un nuovo genere. Esplora la terra di Lordran in una splendida versione rimasterizzata in altissima definizione a 60 fps',40,'Microsoft Windows, PlayStation 4, Xbox One, Nintendo Switch','FromSoftware',8567),(1003,'Ori and the Blind Forest','Caratterizzato da grafica disegnata a mano, personaggi animati in modo meticoloso e una colonna sonora appositamente realizzata, \"Ori and the Blind Forest\" esplora una vicenda profondamente emozionante che parla di amore, sacrificio e della speranza che risiede in ognuno di noi',20,'Microsoft Windows, Xbox One, Nintendo Switch','Moon Studios',2345),(1004,'DARK SOULS™ II','DARK SOULS™ II riprende la nota difficoltà e l\'approccio innovativo della serie per offrire un\'esperienza unica per giocatore singolo e multigiocatore.',40,'PlayStation 4, Xbox One, Microsoft Windows','FromSoftware',6457),(1005,'Cyberpunk 2077','Cyberpunk 2077 è un\'avventura a mondo aperto ambientata a Night City, una megalopoli ossessionata dal potere, dalla moda e dalle modifiche cibernetiche. Vestirai i panni di V, un mercenario fuorilegge alla ricerca di un impianto unico in grado di conferire l\'immortalità',60,'PlayStation 4, Xbox One, PlayStation 5, Xbox Series X/S, Microsoft Windows','CD Projekt RED',3456),(1006,'Forza Horizon 4','Le stagioni dinamiche cambiano tutto nel festival automobilistico più grande del mondo. Gareggia in solitaria o fai squadra per esplorare la bellissima e storica Gran Bretagna in un mondo aperto e condiviso. Colleziona, modifica e guida oltre 450 auto',70,'	Xbox One, Microsoft Windows, Xbox Series X/S','Playground Games',7364),(1007,'Demon\'s Souls','Demon\'s Souls è un videogioco di ruolo/avventura dinamica dark fantasy sviluppato da FromSoftware e SCE Japan Studio per PlayStation 3. Il gioco è stato descritto come il successore spirituale di King\'s Field. Il 12 novembre 2020 è stato pubblicato il remake su PlayStation 5.',60,'PlayStation 5','FromSoftware',5768),(1008,'Super Mario Odyssey','è un gioco di piattaforme open world, pubblicato il 27 ottobre 2017 per Nintendo Switch. ... In questo capitolo della serie il cappello di Mario è posseduto da Cappy. La storia segue le avventure di Mario e Cappy che, a bordo della Odyssey, cercano di sventare il matrimonio tra Peach e Bowser.',60,'Switch','Nintendo',3551),(1009,'Assassin\'s Creed Valhalla','è un videogioco sviluppato da Ubisoft Montreal e pubblicato da Ubisoft. È il dodicesimo capitolo della saga principale di Assassin\'s Creed, sequel di Assassin\'s Creed: Odyssey, pubblicato nel 2018.',40,'Playstation 4,5,Xbox one,X|S','Ubisoft',3599),(1010,'Persona 5 Royal','presenta uno stile visivo unico, e il premiato compositore shoji meguro tornerà con una colonna sonora tutta nuova. Esplora Tokyo, sblocca nuovi persona, personalizza il covo dei ladri, scopri un arco narrativo mai visto prima, cutscenes, finali alternativi e tanto altro!',30,'Playstation 4','Atlus',1012),(1011,'The last of us Remastered','include i pacchetti mappe \"Territori abbandonati\" e \"Territori riscattati\", oltre all\'acclamata campagna per giocatore singolo \"The Last of Us: Left Behind\", che combina istinto di sopravvivenza, lealtà e amore con la giocabilità ricca di suspense tipica della saga.',20,'Playstation 4','Naughty Dog',2240),(1012,'Battlefield V','è uno sparatutto in prima persona, sviluppato da Digital Illusions Creative Entertainment (DICE) e pubblicato da Electronic Arts. ... Il gioco continuerà il filone storico del suo precursore Battlefield 1, concentrandosi e basandosi sulle ambientazioni e vicende della seconda guerra mondiale',20,'Playstation 4,Xbox one','Electronic Arts',5668),(1013,'Marvel\'s Spider-Man','ha come protagonista uno dei supereroi più amati al mondo e mette al centro dell\'azione le prodezze acrobatiche, la capacità di improvvisazione e i poteri di ragnatela che hanno reso celebre l\'arrampicamuri, introducendo al contempo elementi mai visti prima in un gioco di Spider-Man.',20,'Playstation 4','Insomniac',1689),(1014,'Dark souls 3','è un videogioco di ruolo/avventura dinamica a tema \"dark fantasy\" del 2016 sviluppato (e pubblicato in Giappone) da FromSoftware, pubblicato da Bandai Namco Entertainment',20,'Playstation 4,Xbox one,PC','From Software',8160),(1015,'Ghost of Thushima','è un videogioco d\'avventura dinamica e stealth. Giocato da una prospettiva in terza persona, il gioco è caratterizzato da un vasto open world dove è possibile esplorare liberamente senza waypoints. ... I giocatori possono confrontarsi direttamente con i nemici usando delle armi come una katana.',30,'Playstation 4','Sucker Punch',8268),(1016,'Halo 5','Guardians è un videogioco sparatutto in prima persona del 2015, sviluppato da 343 Industries e pubblicato da Microsoft Game Studios in esclusiva per Xbox One. Si tratta del quinto capitolo della fortunata serie di videogiochi Halo.',30,'Xbox one','343 Industries',2110),(1017,'Final Fantasy 7 Remake','Si tratta di un remake del titolo per PlayStation del 1997 Final Fantasy VII, il quale segue le vicende di Cloud Strife, un mercenario di un\'organizzazione ecoterrorista nota come AVALANCHE, nella sua lotta contro la malvagia compagnia Shinra e il leggendario SOLDIER Sephiroth, l\'antagonista principale del videogioco.',30,'Playstation 4,5','Square Enix',5515),(1018,'Bloodborne','è un videogioco di ruolo d\'azione dark fantasy sviluppato dalla software house giapponese FromSoftware, con la collaborazione di SCE Japan Studio e pubblicato da Sony Computer Entertainment esclusivamente per PlayStation 4. Diretto da Hidetaka Miyazaki, già ideatore di Demon\'s Souls e di Dark Souls.',10,'Playstation 4','From Software',4717),(1019,'Horizon Zero Dawn','La storia segue le avventure di Aloy, una cacciatrice che vive in un mondo post-apocalittico dominato da robot ostili (le \"Macchine\"), dove gli esseri umani sono riuniti in fazioni tribali.',40,'Playstation 4','Guerillia Games',6098),(1020,'The last of us part II','è un videogioco di sopravvivenza con elementi action e stealth e sfumature horror ambientato in un vasto mondo, ma comunque chiuso. Il giocatore può usare armi da fuoco e armi improvvisate per difendersi contro gli esseri umani ostili o le creature infettate dal Cordyceps.',40,'Playstation 4','Naughty dog',5587),(1021,'Dragonball Z: Kakaroth','è un videogioco action RPG semi open-world, basato sul franchise di Dragon Ball sviluppato da CyberConnect2 e pubblicato da Bandai Namco Entertainment il 16 gennaio 2020 in Giappone, e il giorno seguente nel resto del mondo',40,'Playstation 4,Xbox one,PC, Switch','CyberConnect2',3831),(1022,'Gears of War 5','è un videogioco sparatutto in terza persona sviluppato da The Coalition e pubblicato da Xbox Game Studios per Microsoft Windows e Xbox One. È il secondo capitolo della nuova trilogia di Gears of War annunciato durante l\'E3 2018 di Los Angeles previsto provvisoriamente per un generico 2019.',30,'Xbox one','The Coalition',9379),(1023,'Final Fantasy XV','è un gioco d\'azione a esplorazione libera, in cui il giocatore assume il controllo di Noctis Lucis Caelum, un principe dotato di poteri magici che gli permettono di eseguire numerose azioni legate al combattimento e all\'esplorazione.',15,'Playstation 4,Xbox one','Square Enix',6184),(1024,'Returnal',' racconta la storia di Selene Vassos, un\'astronauta che opera nei confini del programma di esplorazione dell\'universo \"Astra\". A bordo della sua navicella spaziale designata Helios, è vittima di un\'avaria ai motori proprio sopra il pianeta FISCHER-265-I, comunemente noto come Atropo',60,'Playstation 5','HouseMark',7360),(1025,'Pokémon Scudo','Pokémon Spada e Pokémon Scudo sono ambientati a Galar, una vasta regione con una gran varietà di paesaggi: zone rurali idilliache, città moderne, vaste pianure e montagne rocciose e innevate.',60,'Switch','Game Freak',1090),(1027,'Star wars: Jedi fallen order','Il gioco è ambientato tra gli eventi di Star Wars: Episodio III - La vendetta dei Sith e Rogue One: A Star Wars Story, narra la storia di un Padawan Jedi di nome Cal Kestis in fuga dall\'Impero Galattico.',40,'Playstation 4,Xbox one,PC','Respawn Entertainment',5385),(1028,'Pokémon Spada','Pokémon Spada e Pokémon Scudo sono ambientati a Galar, una vasta regione con una gran varietà di paesaggi: zone rurali idilliache, città moderne, vaste pianure e montagne rocciose e innevate.',60,'Switch','Game Freak',7043),(1030,'Watch dogs Legion','WATCH DOGS: LEGION offre un gameplay innovativo che ti permette di reclutare e giocare con qualunque personaggio in circolazione nella famosa città di Londra.',50,'	Xbox One, Microsoft Windows, Xbox Series X/S','Ubisoft',8569),(1031,'The world ends with you','Ambientato nel quartiere di Shibuya, The World Ends with You presenta numerosi elementi della cultura giapponese giovanile degli anni 2000 mescolati con l\'urban fantasy. Pubblicato in Giappone nel 2007, il videogioco è stato distribuito l\'anno seguente nel resto del mondo',40,'Switch','Square Enix',1234);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `cap` varchar(45) DEFAULT NULL,
  `rolename` char(10) NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root','Admin','Admin',NULL,NULL,NULL,NULL,NULL,'manager');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 21:10:52
