-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: militares
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `compañia`
--

DROP TABLE IF EXISTS `compañia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compañia` (
  `Codcompañia` int NOT NULL AUTO_INCREMENT,
  `Actividad` varchar(100) NOT NULL,
  PRIMARY KEY (`Codcompañia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compañia`
--

LOCK TABLES `compañia` WRITE;
/*!40000 ALTER TABLE `compañia` DISABLE KEYS */;
INSERT INTO `compañia` VALUES (1,'Patrulla'),(2,'Servicios de Interior'),(3,'Seguridad Fronteriza'),(4,'Busqueda y Rescate'),(5,'Combate'),(6,'Banda de musica');
/*!40000 ALTER TABLE `compañia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuartel`
--

DROP TABLE IF EXISTS `cuartel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartel` (
  `Codcuartel` int NOT NULL AUTO_INCREMENT,
  `Nombre_c` varchar(100) NOT NULL,
  `Ubicacion_c` varchar(100) NOT NULL,
  PRIMARY KEY (`Codcuartel`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartel`
--

LOCK TABLES `cuartel` WRITE;
/*!40000 ALTER TABLE `cuartel` DISABLE KEYS */;
INSERT INTO `cuartel` VALUES (1,'Fortaleza SD','Santo Domingo'),(2,'Fortaleza San','Santiago'),(3,'Fortaleza PP','Puerto Plata'),(4,'Fortaleza MC','Monte Cristi'),(5,'Fortaleza M','Moca'),(6,'Fortaleza SFC','San Francisco de Macoris'),(7,'Fortaleza LV','La Vega'),(8,'Fortaleza SP','San Pedro de Macoris'),(9,'Fortaleza SAM','Samana');
/*!40000 ALTER TABLE `cuartel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpo_del_ejercito`
--

DROP TABLE IF EXISTS `cuerpo_del_ejercito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpo_del_ejercito` (
  `Codcuerpo` int NOT NULL AUTO_INCREMENT,
  `Denominacion` varchar(50) NOT NULL,
  PRIMARY KEY (`Codcuerpo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo_del_ejercito`
--

LOCK TABLES `cuerpo_del_ejercito` WRITE;
/*!40000 ALTER TABLE `cuerpo_del_ejercito` DISABLE KEYS */;
INSERT INTO `cuerpo_del_ejercito` VALUES (1,'Ejercito Nacional'),(2,'Armada Dominicana'),(3,'Fuerza Aerea');
/*!40000 ALTER TABLE `cuerpo_del_ejercito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Usuario` varchar(25) NOT NULL,
  `Contraseña` varchar(25) NOT NULL,
  `Tipo_de_Usuario` varchar(25) NOT NULL,
  PRIMARY KEY (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Usuariojefe','1234','Jefe'),('Usuariouser','1234','Usuario Simple');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacion_compañia_cuartel`
--

DROP TABLE IF EXISTS `relacion_compañia_cuartel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacion_compañia_cuartel` (
  `Codcompañia2` int NOT NULL,
  `Codcuartel2` int NOT NULL,
  KEY `CompañiaCuartel` (`Codcompañia2`),
  KEY `CuartelCompañia` (`Codcuartel2`),
  CONSTRAINT `CompañiaCuartel` FOREIGN KEY (`Codcompañia2`) REFERENCES `compañia` (`Codcompañia`),
  CONSTRAINT `CuartelCompañia` FOREIGN KEY (`Codcuartel2`) REFERENCES `cuartel` (`Codcuartel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacion_compañia_cuartel`
--

LOCK TABLES `relacion_compañia_cuartel` WRITE;
/*!40000 ALTER TABLE `relacion_compañia_cuartel` DISABLE KEYS */;
/*!40000 ALTER TABLE `relacion_compañia_cuartel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacion_servicio_soldado`
--

DROP TABLE IF EXISTS `relacion_servicio_soldado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacion_servicio_soldado` (
  `Codsoldado1` varchar(13) NOT NULL,
  `CodServicios1` int NOT NULL,
  KEY `SoldadoServicio` (`Codsoldado1`),
  KEY `ServicioSoldado` (`CodServicios1`),
  CONSTRAINT `ServicioSoldado` FOREIGN KEY (`CodServicios1`) REFERENCES `servicios` (`Codservicios`),
  CONSTRAINT `SoldadoServicio` FOREIGN KEY (`Codsoldado1`) REFERENCES `soldado` (`Codsoldado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `Codservicios` int NOT NULL AUTO_INCREMENT,
  `Actividad` varchar(100) NOT NULL,
  PRIMARY KEY (`Codservicios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `soldado`
--

DROP TABLE IF EXISTS `soldado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soldado` (
  `Codsoldado` varchar(13) NOT NULL,
  `Nombre_s` varchar(100) NOT NULL,
  `Apellido_s` varchar(100) NOT NULL,
  `Direccion_s` varchar(100) NOT NULL,
  `Telefono_s` varchar(100) NOT NULL,
  `Profesion_s` varchar(100) NOT NULL,
  `Lugar_de_Nac_s` varchar(100) NOT NULL,
  `Fecha_de_ingreso_s` varchar(100) NOT NULL,
  `Fecha_Nac_s` date NOT NULL,
  `Rango_s` varchar(100) NOT NULL,
  `Codcuerpo1` int NOT NULL,
  `Codcompañia1` int NOT NULL,
  `Codcuartel1` int NOT NULL,
  PRIMARY KEY (`Codsoldado`),
  KEY `SoldadoCuerpo` (`Codcuerpo1`),
  KEY `SoldadoCompañia` (`Codcompañia1`),
  KEY `SoldadoCuartel` (`Codcuartel1`),
  CONSTRAINT `SoldadoCompañia` FOREIGN KEY (`Codcompañia1`) REFERENCES `compañia` (`Codcompañia`),
  CONSTRAINT `SoldadoCuartel` FOREIGN KEY (`Codcuartel1`) REFERENCES `cuartel` (`Codcuartel`),
  CONSTRAINT `SoldadoCuerpo` FOREIGN KEY (`Codcuerpo1`) REFERENCES `cuerpo_del_ejercito` (`Codcuerpo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-20 20:51:01
