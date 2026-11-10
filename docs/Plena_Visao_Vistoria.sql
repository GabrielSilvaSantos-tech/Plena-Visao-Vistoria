-- =====================================================
-- PROJETO PLENA VISAO VISTORIA
-- ARQUIVO SQL UNIFICADO: ESTRUTURA, DADOS E CONSULTAS
-- ATENCAO: este script apaga e recria as tabelas existentes
-- no banco indicado. Faça backup antes de executar.
-- =====================================================

CREATE DATABASE IF NOT EXISTS plena_visao_vistoria_caso_b;
USE plena_visao_vistoria_caso_b;

-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: plena_visao_vistoria_caso_b
-- ------------------------------------------------------
-- Server version	8.0.46

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

-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Codigo_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nome_Completo` varchar(150) NOT NULL,
  `CPF_CNPJ` varchar(20) NOT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Cliente`),
  UNIQUE KEY `CPF_CNPJ` (`CPF_CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'CLIENTE DEMONSTRACAO 01','DEMO-CLIENTE-001','(11) 90000-0001','cliente01@exemplo.com'),(2,'CLIENTE DEMONSTRACAO 02','DEMO-CLIENTE-002','(11) 90000-0002','cliente02@exemplo.com'),(3,'CLIENTE DEMONSTRACAO 03','DEMO-CLIENTE-003','(11) 90000-0003','cliente03@exemplo.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja` (
  `Codigo_Loja` int NOT NULL AUTO_INCREMENT,
  `Nome_Loja` varchar(100) NOT NULL,
  `CNPJ_Loja` varchar(20) DEFAULT NULL,
  `Descricao_Acordo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Loja`),
  UNIQUE KEY `CNPJ_Loja` (`CNPJ_Loja`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
INSERT INTO `loja` VALUES (1,'CARANGOS PREMIUM',NULL,NULL),(2,'AUTO NOVE',NULL,NULL),(3,'AUTO AVENIDA',NULL,NULL),(4,'AUTO TAG',NULL,NULL),(5,'B&G',NULL,NULL),(6,'DH MOTOS',NULL,NULL),(7,'ENS',NULL,NULL),(8,'GTS MOTORS',NULL,NULL),(9,'GAC SUMARE',NULL,NULL),(10,'MUNIZ CENTRO DE REPASSE',NULL,NULL),(11,'PRO AUTO SUMARE',NULL,NULL),(12,'PRO AUTO ENGENHEIRO',NULL,NULL),(13,'PRO AUTO MITNORTH',NULL,NULL),(14,'SELECT CARRILO',NULL,NULL),(15,'RB VEICULOS',NULL,NULL),(16,'VELOCITTA',NULL,NULL);
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vistoria`
--

DROP TABLE IF EXISTS `tipo_vistoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_vistoria` (
  `Codigo_TipoVistoria` int NOT NULL AUTO_INCREMENT,
  `Nome_Tipo` varchar(100) NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Codigo_TipoVistoria`),
  UNIQUE KEY `Nome_Tipo` (`Nome_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vistoria`
--

LOCK TABLES `tipo_vistoria` WRITE;
/*!40000 ALTER TABLE `tipo_vistoria` DISABLE KEYS */;
INSERT INTO `tipo_vistoria` VALUES (1,'ECV','Vistoria de identificação veicular'),(2,'CAUTELAR','Vistoria cautelar veicular'),(3,'INFRACAO DE TRANSITO (REVISTORIA)','Revistoria relacionada a infração de trânsito');
/*!40000 ALTER TABLE `tipo_vistoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `Codigo_Veiculo` int NOT NULL AUTO_INCREMENT,
  `Placa` varchar(10) NOT NULL,
  `Chassi` varchar(30) NOT NULL,
  `Renavam` varchar(20) NOT NULL,
  `Marca` varchar(60) NOT NULL,
  `Modelo` varchar(80) NOT NULL,
  `Ano_Fabricacao` year DEFAULT NULL,
  PRIMARY KEY (`Codigo_Veiculo`),
  UNIQUE KEY `Placa` (`Placa`),
  UNIQUE KEY `Chassi` (`Chassi`),
  UNIQUE KEY `Renavam` (`Renavam`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'ABC1D23','CHASSI-DEMO-000001','RENAVAM-DEMO-001','TOYOTA','COROLLA',2020),(2,'DEF4G56','CHASSI-DEMO-000002','RENAVAM-DEMO-002','FORD','KA',2019),(3,'GHI7J89','CHASSI-DEMO-000003','RENAVAM-DEMO-003','CHEVROLET','ONIX',2022),(4,'DEMO-0004','CHASSI-DEMO-000004','RENAVAM-DEMO-004','FIAT','ARGO',2021),(5,'DEMO-0005','CHASSI-DEMO-000005','RENAVAM-DEMO-005','HONDA','CIVIC',2023);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vistoriador`
--

DROP TABLE IF EXISTS `vistoriador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vistoriador` (
  `Codigo_Vistoriador` int NOT NULL AUTO_INCREMENT,
  `Nome_Vistoriador` varchar(150) NOT NULL,
  `CPF_Vistoriador` varchar(20) NOT NULL,
  PRIMARY KEY (`Codigo_Vistoriador`),
  UNIQUE KEY `CPF_Vistoriador` (`CPF_Vistoriador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vistoriador`
--

LOCK TABLES `vistoriador` WRITE;
/*!40000 ALTER TABLE `vistoriador` DISABLE KEYS */;
INSERT INTO `vistoriador` VALUES (1,'Danilo','DEMO-VIST-001'),(2,'Durval','DEMO-VIST-002'),(3,'Leonardo','DEMO-VIST-003'),(4,'Leandro','DEMO-VIST-004'),(5,'Gabriel','DEMO-VIST-005');
/*!40000 ALTER TABLE `vistoriador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 20:57:33
-- Table structure for table `vistoria`
--

DROP TABLE IF EXISTS `vistoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vistoria` (
  `Codigo_Vistoria` int NOT NULL AUTO_INCREMENT,
  `Data_Hora` datetime NOT NULL,
  `Resultado_Vistoria` enum('CONFORME','APONTAMENTO','NAO_CONFORME') DEFAULT NULL,
  `Observacoes` text,
  `Valor_Cobrado` decimal(10,2) NOT NULL,
  `Codigo_TipoVistoria` int NOT NULL,
  `Codigo_Cliente` int DEFAULT NULL,
  `Codigo_Loja` int DEFAULT NULL,
  `Codigo_Veiculo` int NOT NULL,
  `Codigo_Vistoriador` int NOT NULL,
  PRIMARY KEY (`Codigo_Vistoria`),
  KEY `Codigo_TipoVistoria` (`Codigo_TipoVistoria`),
  KEY `Codigo_Cliente` (`Codigo_Cliente`),
  KEY `Codigo_Loja` (`Codigo_Loja`),
  KEY `Codigo_Veiculo` (`Codigo_Veiculo`),
  KEY `Codigo_Vistoriador` (`Codigo_Vistoriador`),
  CONSTRAINT `vistoria_ibfk_1` FOREIGN KEY (`Codigo_TipoVistoria`) REFERENCES `tipo_vistoria` (`Codigo_TipoVistoria`),
  CONSTRAINT `vistoria_ibfk_2` FOREIGN KEY (`Codigo_Cliente`) REFERENCES `cliente` (`Codigo_Cliente`),
  CONSTRAINT `vistoria_ibfk_3` FOREIGN KEY (`Codigo_Loja`) REFERENCES `loja` (`Codigo_Loja`),
  CONSTRAINT `vistoria_ibfk_4` FOREIGN KEY (`Codigo_Veiculo`) REFERENCES `veiculo` (`Codigo_Veiculo`),
  CONSTRAINT `vistoria_ibfk_5` FOREIGN KEY (`Codigo_Vistoriador`) REFERENCES `vistoriador` (`Codigo_Vistoriador`),
  CONSTRAINT `vistoria_chk_1` CHECK ((((`Codigo_Cliente` is not null) and (`Codigo_Loja` is null)) or ((`Codigo_Cliente` is null) and (`Codigo_Loja` is not null)))),
  CONSTRAINT `vistoria_chk_2` CHECK ((`Valor_Cobrado` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vistoria`
--

LOCK TABLES `vistoria` WRITE;
/*!40000 ALTER TABLE `vistoria` DISABLE KEYS */;
INSERT INTO `vistoria` VALUES (1,'2026-11-04 09:00:00',NULL,NULL,135.00,1,1,NULL,1,1),(2,'2026-11-04 10:00:00','CONFORME','DADOS FICTICIOS DE DEMONSTRACAO',299.00,2,2,NULL,2,2),(3,'2026-11-04 11:00:00','APONTAMENTO','DADOS FICTICIOS: REPARO LATERAL ESQUERDA',80.00,2,NULL,1,1,3),(4,'2026-11-04 13:00:00','NAO_CONFORME','DADOS FICTICIOS: LONGARINA DIANTEIRA AMASSADA',100.00,2,NULL,10,2,4),(5,'2026-11-04 14:00:00',NULL,'DADOS FICTICIOS DE DEMONSTRACAO',190.00,3,NULL,16,3,5);
/*!40000 ALTER TABLE `vistoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechamento_loja`
--

DROP TABLE IF EXISTS `fechamento_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechamento_loja` (
  `Codigo_Fechamento` int NOT NULL AUTO_INCREMENT,
  `Codigo_Loja` int NOT NULL,
  `Mes` int NOT NULL,
  `Ano` int NOT NULL,
  `Data_Fechamento` date DEFAULT NULL,
  `Valor_Total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Situacao_Fechamento` enum('ABERTO','FECHADO','ENVIADO') NOT NULL DEFAULT 'ABERTO',
  PRIMARY KEY (`Codigo_Fechamento`),
  UNIQUE KEY `Codigo_Loja` (`Codigo_Loja`,`Mes`,`Ano`),
  CONSTRAINT `fechamento_loja_ibfk_1` FOREIGN KEY (`Codigo_Loja`) REFERENCES `loja` (`Codigo_Loja`),
  CONSTRAINT `fechamento_loja_chk_1` CHECK ((`Mes` between 1 and 12)),
  CONSTRAINT `fechamento_loja_chk_2` CHECK ((`Ano` >= 2020)),
  CONSTRAINT `fechamento_loja_chk_3` CHECK ((`Valor_Total` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechamento_loja`
--

LOCK TABLES `fechamento_loja` WRITE;
/*!40000 ALTER TABLE `fechamento_loja` DISABLE KEYS */;
INSERT INTO `fechamento_loja` VALUES (1,1,11,2026,'2026-11-06',80.00,'ENVIADO');
/*!40000 ALTER TABLE `fechamento_loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_fechamento`
--

DROP TABLE IF EXISTS `item_fechamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_fechamento` (
  `Codigo_Item` int NOT NULL AUTO_INCREMENT,
  `Codigo_Fechamento` int NOT NULL,
  `Codigo_Vistoria` int NOT NULL,
  PRIMARY KEY (`Codigo_Item`),
  UNIQUE KEY `Codigo_Vistoria` (`Codigo_Vistoria`),
  KEY `Codigo_Fechamento` (`Codigo_Fechamento`),
  CONSTRAINT `item_fechamento_ibfk_1` FOREIGN KEY (`Codigo_Fechamento`) REFERENCES `fechamento_loja` (`Codigo_Fechamento`),
  CONSTRAINT `item_fechamento_ibfk_2` FOREIGN KEY (`Codigo_Vistoria`) REFERENCES `vistoria` (`Codigo_Vistoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_fechamento`
--

LOCK TABLES `item_fechamento` WRITE;
/*!40000 ALTER TABLE `item_fechamento` DISABLE KEYS */;
INSERT INTO `item_fechamento` VALUES (1,1,3);
/*!40000 ALTER TABLE `item_fechamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `Codigo_Pagamento` int NOT NULL AUTO_INCREMENT,
  `Codigo_Vistoria` int DEFAULT NULL,
  `Codigo_Fechamento` int DEFAULT NULL,
  `Forma_Pagamento` enum('DINHEIRO','PIX','DEBITO','CREDITO','BOLETO') NOT NULL,
  `Valor_Pago` decimal(10,2) NOT NULL,
  `Numero_Nota_Fiscal` varchar(30) DEFAULT NULL,
  `Data_Pagamento` datetime DEFAULT NULL,
  `Situacao_Pagamento` enum('PENDENTE','PAGO') NOT NULL DEFAULT 'PENDENTE',
  PRIMARY KEY (`Codigo_Pagamento`),
  UNIQUE KEY `Codigo_Fechamento` (`Codigo_Fechamento`),
  UNIQUE KEY `uq_pagamento_vistoria` (`Codigo_Vistoria`),
  CONSTRAINT `fk_pagamento_fechamento` FOREIGN KEY (`Codigo_Fechamento`) REFERENCES `fechamento_loja` (`Codigo_Fechamento`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`Codigo_Vistoria`) REFERENCES `vistoria` (`Codigo_Vistoria`),
  CONSTRAINT `chk_pagamento_forma_vinculo` CHECK ((((`Codigo_Vistoria` is not null) and (`Codigo_Fechamento` is null) and (`Forma_Pagamento` <> _utf8mb4'BOLETO')) or ((`Codigo_Vistoria` is null) and (`Codigo_Fechamento` is not null) and (`Forma_Pagamento` = _utf8mb4'BOLETO')))),
  CONSTRAINT `chk_pagamento_vinculo` CHECK ((((`Codigo_Vistoria` is not null) and (`Codigo_Fechamento` is null)) or ((`Codigo_Vistoria` is null) and (`Codigo_Fechamento` is not null)))),
  CONSTRAINT `pagamento_chk_1` CHECK ((`Valor_Pago` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,1,NULL,'PIX',135.00,'NF-DEMO-001','2026-11-04 09:30:00','PAGO'),(2,2,NULL,'DEBITO',299.00,'NF-DEMO-002','2026-11-04 10:30:00','PAGO');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preco_vistoria`
--

DROP TABLE IF EXISTS `preco_vistoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preco_vistoria` (
  `Codigo_Preco` int NOT NULL AUTO_INCREMENT,
  `Codigo_TipoVistoria` int NOT NULL,
  `Codigo_Loja` int DEFAULT NULL,
  `Tipo_Atendimento` enum('PARTICULAR','LOJA') NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Codigo_Preco`),
  UNIQUE KEY `Codigo_TipoVistoria` (`Codigo_TipoVistoria`,`Codigo_Loja`,`Tipo_Atendimento`),
  KEY `Codigo_Loja` (`Codigo_Loja`),
  CONSTRAINT `preco_vistoria_ibfk_1` FOREIGN KEY (`Codigo_TipoVistoria`) REFERENCES `tipo_vistoria` (`Codigo_TipoVistoria`),
  CONSTRAINT `preco_vistoria_ibfk_2` FOREIGN KEY (`Codigo_Loja`) REFERENCES `loja` (`Codigo_Loja`),
  CONSTRAINT `preco_vistoria_chk_1` CHECK ((`Valor` > 0)),
  CONSTRAINT `preco_vistoria_chk_2` CHECK ((((`Tipo_Atendimento` = _utf8mb4'PARTICULAR') and (`Codigo_Loja` is null)) or ((`Tipo_Atendimento` = _utf8mb4'LOJA') and (`Codigo_Loja` is not null))))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preco_vistoria`
--

LOCK TABLES `preco_vistoria` WRITE;
/*!40000 ALTER TABLE `preco_vistoria` DISABLE KEYS */;
INSERT INTO `preco_vistoria` VALUES (1,1,NULL,'PARTICULAR',135.00),(2,2,NULL,'PARTICULAR',299.00),(3,3,NULL,'PARTICULAR',190.00),(4,1,1,'LOJA',50.00),(5,2,1,'LOJA',80.00),(6,3,1,'LOJA',190.00),(7,1,2,'LOJA',60.00),(8,2,2,'LOJA',80.00),(9,3,2,'LOJA',190.00),(10,1,3,'LOJA',80.00),(11,2,3,'LOJA',90.00),(12,3,3,'LOJA',190.00),(13,1,4,'LOJA',90.00),(14,2,4,'LOJA',100.00),(15,3,4,'LOJA',190.00),(16,1,5,'LOJA',80.00),(17,2,5,'LOJA',90.00),(18,3,5,'LOJA',190.00),(19,1,6,'LOJA',100.00),(20,2,6,'LOJA',100.00),(21,3,6,'LOJA',190.00),(22,1,7,'LOJA',100.00),(23,2,7,'LOJA',100.00),(24,3,7,'LOJA',190.00),(25,1,8,'LOJA',80.00),(26,2,8,'LOJA',90.00),(27,3,8,'LOJA',190.00),(28,1,9,'LOJA',60.00),(29,2,9,'LOJA',70.00),(30,3,9,'LOJA',190.00),(31,1,10,'LOJA',95.00),(32,2,10,'LOJA',100.00),(33,3,10,'LOJA',190.00),(34,1,11,'LOJA',50.00),(35,2,11,'LOJA',60.00),(36,3,11,'LOJA',190.00),(37,1,12,'LOJA',65.00),(38,2,12,'LOJA',80.00),(39,3,12,'LOJA',190.00),(40,1,13,'LOJA',55.00),(41,2,13,'LOJA',90.00),(42,3,13,'LOJA',190.00),(43,1,14,'LOJA',90.00),(44,2,14,'LOJA',80.00),(45,3,14,'LOJA',190.00),(46,1,15,'LOJA',100.00),(47,2,15,'LOJA',100.00),(48,3,15,'LOJA',190.00),(49,1,16,'LOJA',100.00),(50,2,16,'LOJA',100.00),(51,3,16,'LOJA',190.00);
/*!40000 ALTER TABLE `preco_vistoria` ENABLE KEYS */;
UNLOCK TABLES;

--

-- =====================================================
-- CONSULTAS GERENCIAIS, AUDITORIA E TESTES
-- =====================================================

-- =====================================================
-- CONSULTAS GERENCIAIS E DE AUDITORIA
-- PROJETO PLENA VISAO VISTORIA
-- =====================================================

-- G01 - Consultar as vistorias realizadas,
-- identificando cliente ou loja, veículo e vistoriador.

SELECT
    v.Codigo_Vistoria,
    DATE_FORMAT(v.Data_Hora, '%d/%m/%Y %H:%i:%s') AS Data_Hora,
    COALESCE(c.Nome_Completo, l.Nome_Loja) AS Responsavel,
    ve.Placa,
    ve.Marca,
    ve.Modelo,
    tv.Nome_Tipo,
    vi.Nome_Vistoriador,
    v.Valor_Cobrado,
    v.Resultado_Vistoria
FROM vistoria v
LEFT JOIN cliente c
    ON v.Codigo_Cliente = c.Codigo_Cliente
LEFT JOIN loja l
    ON v.Codigo_Loja = l.Codigo_Loja
INNER JOIN veiculo ve
    ON v.Codigo_Veiculo = ve.Codigo_Veiculo
INNER JOIN tipo_vistoria tv
    ON v.Codigo_TipoVistoria = tv.Codigo_TipoVistoria
INNER JOIN vistoriador vi
    ON v.Codigo_Vistoriador = vi.Codigo_Vistoriador
ORDER BY v.Data_Hora;


-- G02 - Consultar os pagamentos e suas situações.

SELECT
    p.Codigo_Pagamento,
    p.Forma_Pagamento,
    p.Valor_Pago,
    DATE_FORMAT(p.Data_Pagamento, '%d/%m/%Y %H:%i:%s') AS Data_Pagamento,
    p.Situacao_Pagamento,
    p.Codigo_Vistoria,
    p.Codigo_Fechamento
FROM pagamento p
ORDER BY p.Codigo_Pagamento;


-- G03 - Consultar o total cobrado por tipo de vistoria.

SELECT
    tv.Nome_Tipo,
    COUNT(v.Codigo_Vistoria) AS Quantidade_Vistorias,
    SUM(v.Valor_Cobrado) AS Total_Cobrado
FROM tipo_vistoria tv
LEFT JOIN vistoria v
    ON tv.Codigo_TipoVistoria = v.Codigo_TipoVistoria
GROUP BY tv.Codigo_TipoVistoria, tv.Nome_Tipo;


-- G04 - Consultar os fechamentos financeiros das lojas.

SELECT
    l.Nome_Loja,
    f.Mes,
    f.Ano,
    f.Valor_Total,
    f.Situacao_Fechamento,
    DATE_FORMAT(f.Data_Fechamento, '%d/%m/%Y') AS Data_Fechamento
FROM fechamento_loja f
INNER JOIN loja l
    ON f.Codigo_Loja = l.Codigo_Loja
ORDER BY f.Ano, f.Mes;


-- A01 - Verificar vistorias que ainda não possuem pagamento registrado.

SELECT
    v.Codigo_Vistoria,
    DATE_FORMAT(v.Data_Hora, '%d/%m/%Y %H:%i:%s') AS Data_Hora,
    v.Valor_Cobrado
FROM vistoria v
LEFT JOIN pagamento p
    ON v.Codigo_Vistoria = p.Codigo_Vistoria
WHERE p.Codigo_Pagamento IS NULL;


-- A02 - Verificar veículos cadastrados que ainda não possuem vistoria.

SELECT
    ve.Codigo_Veiculo,
    ve.Placa,
    ve.Marca,
    ve.Modelo
FROM veiculo ve
LEFT JOIN vistoria v
    ON ve.Codigo_Veiculo = v.Codigo_Veiculo
WHERE v.Codigo_Vistoria IS NULL;


-- A03 - Verificar possíveis duplicidades de placa.
-- Resultado vazio é esperado enquanto Placa possuir restrição UNIQUE.

SELECT
    Placa,
    COUNT(*) AS Quantidade
FROM veiculo
GROUP BY Placa
HAVING COUNT(*) > 1;


-- =====================================================
-- DEMONSTRAÇÃO DE UPDATE E DELETE
-- As transações são desfeitas com ROLLBACK.
-- Os registros originais são preservados.
-- =====================================================

-- UPDATE - Atualização demonstrativa de um cliente.

START TRANSACTION;

UPDATE cliente
SET Email = 'teste@exemplo.com'
WHERE Codigo_Cliente = 3;

SELECT *
FROM cliente
WHERE Codigo_Cliente = 3;

ROLLBACK;
SELECT Codigo_Cliente, Nome_Completo, Email
FROM cliente
WHERE Codigo_Cliente = 3;


-- DELETE - Exclusão demonstrativa de um cliente.

START TRANSACTION;

DELETE FROM cliente
WHERE Codigo_Cliente = 3;

SELECT *
FROM cliente
WHERE Codigo_Cliente = 3;

ROLLBACK;
SELECT Codigo_Cliente, Nome_Completo, Email
FROM cliente
WHERE Codigo_Cliente = 3;
