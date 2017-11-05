-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cprint
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_alertas`
--

DROP TABLE IF EXISTS `tb_alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_alertas` (
  `dsc_alr` varchar(100) DEFAULT NULL COMMENT 'Alertas',
  `dth_alr` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_alr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alertas`
--

LOCK TABLES `tb_alertas` WRITE;
/*!40000 ALTER TABLE `tb_alertas` DISABLE KEYS */;
INSERT INTO `tb_alertas` VALUES ('Imp:Cedro Usr:jusceliasc - Qtde de quota menor que o doc!','2017-10-13 17:47:20',57424),('Imp:Cedro Usr:jusceliasc - Qtde de quota menor que o doc!','2017-10-13 17:51:58',57433),('Imp:Cedro Usr:jusceliasc - Qtde de quota menor que o doc!','2017-10-13 17:59:40',57443),('Imp:Cedro Usr:jusceliasc - Qtde de quota menor que o doc!','2017-10-13 17:59:46',57444);
/*!40000 ALTER TABLE `tb_alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_history`
--

DROP TABLE IF EXISTS `tb_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_history` (
  `cod_hst` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_usr` varchar(15) NOT NULL COMMENT 'Nome usuario',
  `nom_arq` varchar(100) DEFAULT NULL COMMENT 'Nome arquivo',
  `qtd_pag` int(11) DEFAULT NULL COMMENT 'Qtde paginas',
  `maq_cli` varchar(16) DEFAULT NULL COMMENT 'Endereco maquina cliente',
  `nom_imp` varchar(15) DEFAULT NULL COMMENT 'Impressora utilizada',
  `dth_imp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cod_hst`)
) ENGINE=InnoDB AUTO_INCREMENT=10889 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_history`
--

LOCK TABLES `tb_history` WRITE;
/*!40000 ALTER TABLE `tb_history` DISABLE KEYS */;

INSERT INTO `tb_history` VALUES (10734,'ariannaarr','Microsoft Word - CRISLAINE DE FATIMA ALVES DA SILVA',1,'10.110.0.104','Cedro','2017-10-13 17:05:39'),(10735,'ariannaarr','Microsoft Word - Melissa Dominike Estolano Pereira',1,'10.110.0.104','Cedro','2017-10-13 17:05:46'),(10736,'ariannaarr','Microsoft Word - Taticiane Marques da Silva',2,'10.110.0.104','Cedro','2017-10-13 17:05:46'),(10737,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:05:46'),(10738,'cintiaajs','Kathiane Aparecida Mendes da Silva',1,'10.110.0.118','Cedro','2017-10-13 17:06:10'),(10739,'laurabsa','Jeferson 2017 - LP 40',1,'10.110.0.129','Jacaranda','2017-10-13 17:06:42'),(10740,'laurabsa','Jeferson 2017 - LP 40',1,'10.110.0.129','Jacaranda','2017-10-13 17:06:42'),(10741,'cintiaajs','Remote Downlevel Document ',1,'10.110.0.118','Cedro','2017-10-13 17:06:50'),(10742,'laurabsa','Ana Lucia 2017 LP - 37',1,'10.110.0.129','Jacaranda','2017-10-13 17:07:13'),(10743,'laurabsa','Ana Lucia 2017 LP - 37',1,'10.110.0.129','Jacaranda','2017-10-13 17:07:13'),(10744,'laurabsa','Ana Lucia 2017 LP - 39',1,'10.110.0.129','Jacaranda','2017-10-13 17:07:13'),(10745,'laurabsa','Ana Lucia 2017 LP - 39',1,'10.110.0.129','Jacaranda','2017-10-13 17:07:13'),(10746,'cintiaajs','CINTIA ALESSANDRA DE OLIVEIRA',1,'10.110.0.118','Cedro','2017-10-13 17:08:25'),(10747,'gabryellacs','FPEN104.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:12:26'),(10748,'juliamr','JasperReports - ReciboTransmissaoDadosArquivo',1,'10.110.0.54','Jacaranda','2017-10-13 17:13:50'),(10749,'juliamr','JasperReports - RelatorioApuracaoOperacoesProprias',1,'10.110.0.54','Jacaranda','2017-10-13 17:14:07'),(10750,'juliamr','JasperReports - RegistrosFiscaisdaApuracaoDosValoresIpi',1,'10.110.0.54','Jacaranda','2017-10-13 17:14:20'),(10751,'anacsm','Zimbra',1,'10.110.0.76','Cedro','2017-10-13 17:16:07'),(10752,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:16:25'),(10753,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:17:01'),(10754,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:17:12'),(10755,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:17:29'),(10756,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:17:47'),(10757,'ariannaarr','Microsoft Word - Thaline Barbosa Silva',1,'10.110.0.104','Cedro','2017-10-13 17:18:30'),(10758,'ariannaarr','Microsoft Word - RAQUEL BAQUELCCE COSTA',1,'10.110.0.104','Cedro','2017-10-13 17:18:30'),(10759,'ariannaarr','Microsoft Word - MONALISA DA ROCHA SANTOS',1,'10.110.0.104','Cedro','2017-10-13 17:18:30'),(10760,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:18:30'),(10761,'ariannaarr','Microsoft Word - RENATO DANTAS MARRA',1,'10.110.0.104','Cedro','2017-10-13 17:18:31'),(10762,'ariannaarr','Microsoft Word - Rafael Braiam Soares Soto',1,'10.110.0.104','Cedro','2017-10-13 17:18:31'),(10763,'ariannaarr','Microsoft Word - Naiara Polyane Fonseca da Silva',1,'10.110.0.104','Cedro','2017-10-13 17:18:31'),(10764,'ariannaarr','Microsoft Word - Aline Godói Malheiros',1,'10.110.0.104','Cedro','2017-10-13 17:18:31'),(10765,'ariannaarr','Microsoft Word - Jalile Pires Felix',1,'10.110.0.104','Cedro','2017-10-13 17:18:32'),(10766,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:18:32'),(10767,'ariannaarr','Microsoft Word - LEANDRO DANTAS DE SOUZA',1,'10.110.0.104','Cedro','2017-10-13 17:18:32'),(10768,'ariannaarr','Microsoft Word - Isabella Gonçalves de Lima',2,'10.110.0.104','Cedro','2017-10-13 17:18:32'),(10769,'ariannaarr','Microsoft Word - Aline Gonçalves Lopes',1,'10.110.0.104','Cedro','2017-10-13 17:18:33'),(10770,'ariannaarr','Microsoft Word - RODRIGO FERREIRA MIRANDA',1,'10.110.0.104','Cedro','2017-10-13 17:18:33'),(10771,'ariannaarr','Microsoft Word - Tatiana Da Silva Torres',1,'10.110.0.104','Cedro','2017-10-13 17:18:33'),(10772,'ariannaarr','Microsoft Word - Lucas Brito Silva',1,'10.110.0.104','Cedro','2017-10-13 17:18:34'),(10773,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:18:34'),(10774,'ariannaarr','Microsoft Word - ANA LUCIA CASTRO ALVES ARRUDA MORAES',1,'10.110.0.104','Cedro','2017-10-13 17:18:34'),(10775,'ariannaarr','Remote Downlevel Document ',2,'10.110.0.104','Cedro','2017-10-13 17:18:34'),(10776,'ariannaarr','Microsoft Word - Juliana Rodrigues de Sá',1,'10.110.0.104','Cedro','2017-10-13 17:18:35'),(10777,'ariannaarr','Microsoft Word - Mágda Silva de Andrade',2,'10.110.0.104','Cedro','2017-10-13 17:18:35'),(10778,'ariannaarr','Microsoft Word - Lisiane Rodrigues de Jesus',2,'10.110.0.104','Cedro','2017-10-13 17:18:35'),(10779,'ariannaarr','Microsoft Word - Willian Rodrigo Dias Carlos',1,'10.110.0.104','Cedro','2017-10-13 17:18:35'),(10780,'ariannaarr','Microsoft Word - ANDRE MACARIO SOARES DOS SANTOS',1,'10.110.0.104','Cedro','2017-10-13 17:18:36'),(10781,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:18:36'),(10782,'ariannaarr','Microsoft Word - Jonnathan Sousa dos Prazeres',1,'10.110.0.104','Cedro','2017-10-13 17:18:36'),(10783,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:51'),(10784,'ariannaarr','Remote Downlevel Document ',2,'10.110.0.104','Cedro','2017-10-13 17:19:51'),(10785,'ariannaarr','Microsoft Word - GISELE CRISTINA MACHADO',1,'10.110.0.104','Cedro','2017-10-13 17:19:52'),(10786,'ariannaarr','Microsoft Word - Rodney Benedito Cosme Da Silva',1,'10.110.0.104','Cedro','2017-10-13 17:19:52'),(10787,'ariannaarr','Microsoft Word - VANESSA LIMA GONÇALVES DE ANDRADE',1,'10.110.0.104','Cedro','2017-10-13 17:19:52'),(10788,'ariannaarr','Microsoft Word - Raiane Freitas de Sousa',1,'10.110.0.104','Cedro','2017-10-13 17:19:53'),(10789,'ariannaarr','Microsoft Word - Natalia Dama De Sousa',1,'10.110.0.104','Cedro','2017-10-13 17:19:53'),(10790,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:53'),(10791,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:53'),(10792,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:54'),(10793,'ariannaarr','Microsoft Word - Warley Junior Lemes',2,'10.110.0.104','Cedro','2017-10-13 17:19:54'),(10794,'ariannaarr','Microsoft Word - Jean Carlos da Silva',2,'10.110.0.104','Cedro','2017-10-13 17:19:54'),(10795,'ariannaarr','Microsoft Word - Jonathan Santos lopes',1,'10.110.0.104','Cedro','2017-10-13 17:19:55'),(10796,'ariannaarr','Microsoft Word - Kerolayne Rocha Arantes',2,'10.110.0.104','Cedro','2017-10-13 17:19:55'),(10797,'ariannaarr','Microsoft Word - Lucimaura de Freitas Crepaldi',1,'10.110.0.104','Cedro','2017-10-13 17:19:55'),(10798,'ariannaarr','Microsoft Word - LAURA SANTOS CHAVES',1,'10.110.0.104','Cedro','2017-10-13 17:19:55'),(10799,'ariannaarr','Microsoft Word - Ozana Rodridrgues de Faria',1,'10.110.0.104','Cedro','2017-10-13 17:19:56'),(10800,'ariannaarr','Microsoft Word - LILIANE SEVERINO DA SILVA',2,'10.110.0.104','Cedro','2017-10-13 17:19:56'),(10801,'ariannaarr','Microsoft Word - Dayse Alves de Melo Carvalho',1,'10.110.0.104','Cedro','2017-10-13 17:19:56'),(10802,'ariannaarr','Microsoft Word - LINDINEIS PEREIRA NASCIMENTO',1,'10.110.0.104','Cedro','2017-10-13 17:19:56'),(10803,'ariannaarr','Microsoft Word - THAYANA CARLA MARQUES OLIVEIRA',1,'10.110.0.104','Cedro','2017-10-13 17:19:57'),(10804,'ariannaarr','Remote Downlevel Document ',2,'10.110.0.104','Cedro','2017-10-13 17:19:57'),(10805,'ariannaarr','Microsoft Word - Sarah Cristina Carvalho Mendes',2,'10.110.0.104','Cedro','2017-10-13 17:19:57'),(10806,'ariannaarr','Microsoft Word - Alinne Carla Ferreira',1,'10.110.0.104','Cedro','2017-10-13 17:19:58'),(10807,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:58'),(10808,'ariannaarr','Microsoft Word - Thamirys Karoline Rocha',1,'10.110.0.104','Cedro','2017-10-13 17:19:58'),(10809,'ariannaarr','Microsoft Word - Franciele Aparecida Silva',1,'10.110.0.104','Cedro','2017-10-13 17:19:59'),(10810,'ariannaarr','Remote Downlevel Document ',1,'10.110.0.104','Cedro','2017-10-13 17:19:59'),(10811,'ariannaarr','Microsoft Word - Nathany Adressa Goulart Queiroz',1,'10.110.0.104','Cedro','2017-10-13 17:19:59'),(10812,'ariannaarr','Microsoft Word - Ludmaycol Oliveira Silva',1,'10.110.0.104','Cedro','2017-10-13 17:19:59'),(10813,'ariannaarr','Microsoft Word - Lidia Augusta da Silva',2,'10.110.0.104','Cedro','2017-10-13 17:20:00'),(10814,'ariannaarr','Microsoft Word - TAMIRES FERREIRA SILVA RIBEIRO',1,'10.110.0.104','Cedro','2017-10-13 17:20:00'),(10815,'ariannaarr','Microsoft Word - Carlos Kenedy Santos Rosa',2,'10.110.0.104','Cedro','2017-10-13 17:20:00'),(10816,'ariannaarr','Remote Downlevel Document ',2,'10.110.0.104','Cedro','2017-10-13 17:20:00'),(10817,'anacsm','Nota Fiscal de Serviços Eletrônica',1,'10.110.0.76','Cedro','2017-10-13 17:20:21'),(10818,'gabryellacs','FPEN104.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:21:27'),(10819,'gabryellacs','FPEN104.Imp',2,'10.110.0.124','Cedro','2017-10-13 17:21:28'),(10820,'gabryellacs','FPFF008.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:21:28'),(10821,'gabryellacs','FPFF008.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:21:28'),(10822,'gabryellacs','FPEN104.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:21:28'),(10823,'gabryellacs','FPEN104.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:21:29'),(10824,'gabryellacs','FPFF008.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:21:29'),(10825,'juliamr','JasperReports - ReciboTransmissaoDadosArquivo',1,'10.110.0.54','Jacaranda','2017-10-13 17:22:00'),(10826,'nathaliarp','RATEIO PAT 09-2017 - Cópia .xls',1,'10.110.0.108','Jacaranda','2017-10-13 17:24:26'),(10827,'ericajs','C748726Cd01',1,'10.110.1.127','Jacaranda','2017-10-13 17:27:59'),(10828,'laurabsa','F6409525d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:08'),(10829,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:15'),(10830,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:16'),(10831,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:18'),(10832,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:19'),(10833,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:39'),(10834,'gabryellacs','Documento',1,'10.110.0.124','Cedro','2017-10-13 17:29:45'),(10835,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:46'),(10836,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:48'),(10837,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:49'),(10838,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:29:50'),(10839,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:12'),(10840,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:19'),(10841,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:20'),(10842,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:21'),(10843,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:23'),(10844,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:30:44'),(10845,'gabryellacs','FPEN104.Imp',3,'10.110.0.124','Cedro','2017-10-13 17:30:49'),(10846,'gabryellacs','FPEN104.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:30:50'),(10847,'gabryellacs','FPFF008.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:31:14'),(10848,'wellingtonlm','FPFR103.Imp',9,'10.110.0.73','Cedro','2017-10-13 17:31:20'),(10849,'gabryellacs','FPFF008.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:31:44'),(10850,'gabryellacs','FPEN104.Imp',12,'10.110.0.124','Cedro','2017-10-13 17:31:50'),(10851,'gabryellacs','FPEN104.Imp',1,'10.110.0.124','Cedro','2017-10-13 17:32:15'),(10852,'gabryellacs','Documento',1,'10.110.0.124','Cedro','2017-10-13 17:33:19'),(10853,'betaniapms','Remote Downlevel Document ',1,'10.110.0.75','Cedro','2017-10-13 17:34:21'),(10854,'nathaliarp','FDE3D67Dd01',1,'10.110.0.108','Jacaranda','2017-10-13 17:35:22'),(10855,'betaniapms','RelatorioConferenciaItensConsumo.jsf',1,'10.110.0.75','Cedro','2017-10-13 17:35:27'),(10856,'nathaliarp','FDE3D67Dd01',1,'10.110.0.108','Jacaranda','2017-10-13 17:35:28'),(10857,'laurabsa','C4BCDD95d01',1,'10.110.0.129','Jacaranda','2017-10-13 17:41:24'),(10858,'mauridesjm','Crystal Reports ActiveX Designer - ',1,'10.110.0.100','Cedro','2017-10-13 17:41:30'),(10859,'mauridesjm','Crystal Reports ActiveX Designer - ',1,'10.110.0.100','Cedro','2017-10-13 17:41:30'),(10860,'anacsm','HRRE011.Imp',2,'10.110.0.76','Cedro','2017-10-13 17:41:56'),(10861,'cintiaajs','Foto de página inteira',1,'10.110.0.118','Cedro','2017-10-13 17:43:48'),(10862,'cintiaajs','Foto de página inteira',1,'10.110.0.118','Cedro','2017-10-13 17:43:54'),(10863,'cintiaajs','CANDIDATO JOSE NARCISO F DA SILVA',2,'10.110.0.118','Cedro','2017-10-13 17:44:21'),(10864,'jusceliasc','Remote Downlevel Document ',1,'10.40.4.97','Cedro','2017-10-13 17:47:14'),(10865,'cintiaajs','Foto de página inteira',1,'10.110.0.118','Cedro','2017-10-13 17:47:46'),(10866,'wellingtonlm','Alcione Aparecida Carneiro_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 17:49:00'),(10867,'juliamr','JasperReports - ReciboTransmissaoDadosArquivo',1,'10.110.0.54','Jacaranda','2017-10-13 17:49:00'),(10868,'juliamr','JasperReports - RelatorioApuracaoOperacoesProprias',1,'10.110.0.54','Jacaranda','2017-10-13 17:49:31'),(10869,'juliamr','JasperReports - RegistrosFiscaisdaApuracaoDosValoresIpi',1,'10.110.0.54','Jacaranda','2017-10-13 17:50:01'),(10870,'leilianegp','Zimbra',2,'10.110.0.119','Cedro','2017-10-13 17:50:07'),(10871,'cleamsb','Documento de Contabilização e Programação Financeira.xls',1,'10.110.0.79','Jacaranda','2017-10-13 17:50:33'),(10872,'cleamsb','Documento de Contabilização e Programação Financeira.xls',1,'10.110.0.79','Jacaranda','2017-10-13 17:52:39'),(10873,'lorrainemf','SOLICITAÇAO PAGTO DIVERSOS.xls',2,'10.110.0.115','Mogno','2017-10-13 17:52:39'),(10874,'wellingtonlm','Amanda Macedo Martins_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 17:54:49'),(10875,'ericajs','434ECF36d01',1,'10.110.1.127','Jacaranda','2017-10-13 17:56:11'),(10876,'anacsm','Remote Downlevel Document ',2,'10.110.0.76','Cedro','2017-10-13 17:56:43'),(10877,'cintiaajs','FORMULARIO ORIGINAL.xls',1,'10.110.0.118','Cedro','2017-10-13 17:57:55'),(10878,'ericajs','0981864Ad01',1,'10.110.1.127','Jacaranda','2017-10-13 17:58:25'),(10879,'wellingtonlm','Bruna Ribeiro da Silva_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 18:01:14'),(10880,'ericajs','41171005330384000124550010011745641716848429.pdf',1,'10.110.1.127','Jacaranda','2017-10-13 18:01:45'),(10881,'ericajs','41171005330384000124550010011745641716848429.pdf',1,'10.110.1.127','Jacaranda','2017-10-13 18:01:51'),(10882,'ericajs','B2DA1D1Ad01',1,'10.110.1.127','Jacaranda','2017-10-13 18:05:31'),(10883,'wellingtonlm','Bruna Ribeiro da Silva_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 18:06:02'),(10884,'juliamr','JasperReports - ReciboTransmissaoDadosArquivo',1,'10.110.0.54','Jacaranda','2017-10-13 18:11:02'),(10885,'wellingtonlm','Libia Bueno Silva_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 18:19:18'),(10886,'wellingtonlm','Lidia Vilma Gomes de Sousa Ilario_Vendedor Interno.xls',1,'10.110.0.73','Cedro','2017-10-13 18:24:26'),(10887,'duannemc','Microsoft Word - Novo(a) Documento do Microsoft Word',1,'10.110.0.89','Mogno','2017-10-13 18:31:19'),(10888,'juliamr','JasperReports - ReciboTransmissaoDadosArquivo',1,'10.110.0.54','Jacaranda','2017-10-13 18:49:37');
/*!40000 ALTER TABLE `tb_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `cod_usr` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Codigo usuario',
  `nom_usr` varchar(15) NOT NULL COMMENT 'Nome usuario',
  `qut_def` int(10) unsigned DEFAULT NULL,
  `qut_atu` int(10) unsigned DEFAULT NULL,
  `qut_ant` int(10) unsigned DEFAULT NULL,
  `grp_usr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod_usr`),
  UNIQUE KEY `uidx_usr` (`nom_usr`)
) ENGINE=InnoDB AUTO_INCREMENT=647 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (3,'celiolsm',40,29,5,'grp_ti'),(4,'testeinfra',0,0,0,'grp_ti'),(5,'alissonfp',30,26,30,'grp_ti'),(7,'antoniorlj',50,37,50,'grp_ti'),(8,'wenderfc',100,83,100,'grp_armazem'),(9,'carlosfsj',30,20,30,'grp_ti'),(10,'carolineam',30,27,3,'grp_ti'),(11,'gabrielsl',30,30,30,'grp_ti'),(12,'allefejss',30,22,30,'grp_ti'),(13,'thalisonjc',30,9,30,'grp_ti'),(14,'marcosas',30,0,30,'grp_ti'),(15,'marciojsf',30,30,30,'grp_ti'),(16,'andrerr',30,30,30,'grp_ti'),(17,'edersongs',30,30,30,'grp_ti'),(18,'eduardosr',30,30,30,'grp_ti'),(19,'raniera',0,0,0,'grp_ti'),(20,'monicapr',30,30,30,'grp_ti'),(21,'nairlp',150,3,150,'grp_ti'),(22,'bruno.fc',30,30,30,'grp_ti'),(23,'suportetst',0,0,0,'grp_ti'),(24,'matheusm',30,27,30,'grp_ti'),(25,'analn',40,28,30,'grp_ti'),(26,'luizars',30,28,30,'grp_ti'),(27,'biancass',30,17,30,'grp_ti'),(28,'lauroof',30,1,30,'grp_ti'),(29,'raphaelsm',30,30,30,'grp_ti'),(30,'fabiobc',30,30,30,'grp_ti'),(85,'ramsessf',0,0,0,'grp_controladoria'),(86,'laurabsa',250,30,250,'grp_controladoria'),(87,'ericajs',200,60,200,'grp_controladoria'),(88,'robinsonhfna',0,0,0,'grp_controladoria'),(89,'eliasms',100,3,100,'grp_controladoria'),(90,'marcosao',200,121,200,'grp_financeiro'),(91,'lucasrv',0,0,0,'grp_controladoria'),(92,'brunavr',300,240,300,'grp_controladoria'),(93,'amandago',150,45,100,'grp_controladoria'),(94,'claudieneas',300,207,300,'grp_controladoria'),(95,'itallolb',0,0,0,'grp_controladoria'),(96,'juliamr',300,97,300,'grp_controladoria'),(97,'nathaliarp',300,130,300,'grp_controladoria'),(98,'thaysfs',300,12,300,'grp_controladoria'),(99,'terezars',100,3,100,'grp_controladoria'),(100,'shimennikrm',200,15,200,'grp_juridico'),(101,'cleamsb',200,38,200,'grp_controladoria'),(146,'thaisrf',100,94,100,'grp_financeiro'),(147,'michelefpm',0,0,0,'grp_financeiro'),(148,'nathaliave',100,100,100,'grp_financeiro'),(149,'kamilasp',30,29,30,'grp_financeiro'),(150,'mariaepf',0,0,0,'grp_financeiro'),(151,'lorrainecms',30,30,30,'grp_financeiro'),(152,'karoliniesr',0,0,0,'grp_financeiro'),(153,'hingriddra',0,0,0,'grp_financeiro'),(154,'beatrizqa',30,30,30,'grp_financeiro'),(155,'thaynaraagf',30,30,30,'grp_financeiro'),(156,'maykeam',200,180,200,'grp_financeiro'),(157,'matheusga',0,0,0,'grp_financeiro'),(158,'mariliard',0,0,0,'grp_financeiro'),(159,'pedrohab',100,93,100,'grp_financeiro'),(160,'polianesc',0,0,0,'grp_financeiro'),(161,'samuellsgs',30,30,30,'grp_financeiro'),(162,'tassilabms',30,30,30,'grp_financeiro'),(163,'mayarapb',0,0,0,'grp_financeiro'),(164,'geovanacg',0,0,0,'grp_financeiro'),(165,'matheusls',500,436,500,'grp_financeiro'),(166,'juiliamss',300,96,300,'grp_financeiro'),(167,'jordanagg',100,76,100,'grp_financeiro'),(168,'jhenifergsn',30,30,30,'grp_financeiro'),(169,'giselefc',30,19,30,'grp_financeiro'),(170,'leonardora',30,30,30,'grp_financeiro'),(171,'luizaps',0,0,0,'grp_financeiro'),(172,'marianacs',30,24,30,'grp_financeiro'),(173,'amandacmo',50,50,50,'grp_financeiro'),(174,'adrissianecb',100,19,100,'grp_financeiro'),(175,'elcimarppj',0,0,0,'grp_financeiro'),(176,'elainet',50,50,50,'grp_financeiro'),(177,'eduardamb',100,67,100,'grp_financeiro'),(178,'ericaas',30,30,30,'grp_financeiro'),(179,'mauridesjm',600,54,400,'grp_financeiro'),(180,'thalitaac',0,0,0,'grp_financeiro'),(182,'vitoriaab',30,26,0,'grp_financeiro'),(183,'heitorfcf',0,0,0,'grp_financeiro'),(184,'viniciuseas',0,0,0,'grp_financeiro'),(185,'thamaraknc',0,0,0,'grp_financeiro'),(186,'rayssasc',0,0,0,'grp_financeiro'),(187,'annalsl',0,0,0,'grp_financeiro'),(188,'joaovlf',0,0,0,'grp_financeiro'),(189,'viniciorv',80,71,80,'grp_financeiro'),(190,'adrianacrc',50,47,50,'grp_financeiro'),(191,'elainecs',30,22,30,'grp_financeiro'),(282,'ariannaarr',430,150,350,'grp_rh'),(284,'danieletc',350,78,350,'grp_rh'),(285,'wellingtonlm',150,68,150,'grp_rh'),(286,'camilaig',1400,28,1300,'grp_rh'),(287,'luisfgr',150,107,30,'grp_rh'),(288,'karynerst',300,223,300,'grp_rh'),(289,'luizao',30,22,30,'grp_rh'),(290,'anacsm',700,32,500,'grp_rh'),(291,'saionaradsc',0,0,0,'grp_rh'),(292,'duannemc',300,227,300,'grp_mpropria'),(293,'danubiais',100,29,50,'grp_marketing'),(294,'laisefm',200,117,200,'grp_marketing'),(295,'leilianegp',350,95,350,'grp_rh'),(296,'julianacl',500,10,150,'grp_rh'),(297,'rebecass',1300,105,1300,'grp_rh'),(298,'jessicasa',0,0,0,'grp_rh'),(299,'gabryellacs',450,11,400,'grp_rh'),(300,'betaniapms',30,4,30,'grp_rh'),(301,'cintiaajs',550,107,350,'grp_rh'),(303,'lucasas',550,97,300,'grp_juridico'),(304,'stephaniom',350,139,300,'grp_juridico'),(305,'marialf',30,30,0,'grp_juridico'),(420,'victorhom',0,0,0,'grp_armazem'),(421,'luizfba',0,0,0,'grp_armazem'),(422,'brunocom',30,30,30,'grp_armazem'),(423,'maricelems',0,0,0,'grp_armazem'),(424,'eliardeps',0,0,0,'grp_armazem'),(425,'isacknra',30,29,0,'grp_armazem'),(426,'karolinyvl',0,0,0,'grp_armazem'),(427,'deborasp',0,0,0,'grp_armazem'),(428,'driellecb',0,0,0,'grp_armazem'),(429,'luanmsa',0,0,0,'grp_armazem'),(430,'uicsonmac',0,0,0,'grp_armazem'),(431,'sebastiaobfr',0,0,0,'grp_armazem'),(432,'evacirplf',0,0,0,'grp_armazem'),(433,'andersonj',30,30,30,'grp_armazem'),(434,'delfinors',0,0,0,'grp_armazem'),(435,'jheisonvs',0,0,0,'grp_armazem'),(437,'antenorz',0,0,0,'grp_armazem'),(438,'herciocgf',0,0,0,'grp_armazem'),(439,'andreas',0,0,0,'grp_armazem'),(440,'adrianaas',50,50,50,'grp_armazem'),(441,'robertoag',0,0,0,'grp_armazem'),(442,'renators',0,0,0,'grp_armazem'),(443,'leandrofo',0,0,0,'grp_armazem'),(444,'hugosb',0,0,0,'grp_armazem'),(584,'yurivbg',150,87,150,'grp_marketing'),(585,'jacquelineas',50,19,0,'grp_ccomercial'),(586,'brunasr',400,389,400,'grp_marketing'),(587,'caiquebor',300,145,300,'grp_suprimentos'),(588,'livialn',300,249,300,'grp_marketing'),(590,'giannia',100,79,100,'grp_suprimentos'),(591,'lorrainemf',300,130,300,'grp_marketing'),(592,'mariapcam',250,27,200,'grp_marketing'),(593,'alexsandracbo',100,100,100,'grp_mpropria'),(594,'patriciagmr',300,89,300,'grp_mpropria'),(602,'carolinarm',50,22,1,'grp_marketing'),(605,'brunafs',100,52,100,'grp_suprimentos'),(606,'anacras',50,14,50,'grp_marketing'),(607,'neirismarbj',50,44,50,'grp_suprimentos'),(617,'zeliamcl',50,0,50,'grp_diskcenter'),(618,'giullieneem',30,62,30,'grp_diskcenter'),(619,'karlasd',100,47,100,'grp_diskcenter'),(620,'fernandar',30,28,30,'grp_diskcenter'),(621,'sarafm',0,0,0,'grp_diskcenter'),(622,'geovanagb',0,0,0,'grp_diskcenter'),(624,'ritacr',0,0,0,'grp_diskcenter'),(625,'joaopm',100,100,0,'grp_diskcenter'),(626,'jusceliasc',20,0,20,'grp_diskcenter'),(627,'brunamv',30,30,30,'grp_diskcenter'),(628,'karlafg',0,0,0,'grp_diskcenter'),(629,'vanusaas',60,36,30,'grp_diskcenter'),(630,'tacielecc',30,30,30,'grp_diskcenter'),(631,'marcosvgs',50,22,20,'grp_diskcenter'),(632,'danielgs',0,0,0,'grp_diskcenter'),(633,'cristinafsp',35,21,0,'grp_diskcenter'),(634,'liviams',0,0,0,'grp_diskcenter'),(635,'gabriellyl',30,30,30,'grp_diskcenter'),(636,'lucasf',0,0,0,'grp_diskcenter'),(637,'isadorar',0,0,0,'grp_diskcenter'),(638,'josiasdr',0,0,0,'grp_manutencao'),(639,'jeanepa',0,0,0,'grp_manutencao'),(640,'marconiolfj',0,0,0,'grp_manutencao'),(641,'wagnersb',0,0,0,'grp_manutencao'),(642,'michelss',0,0,0,'grp_manutencao'),(643,'brunons',0,0,0,'grp_manutencao'),(644,'camilapa',0,0,0,'grp_manutencao'),(645,'wagnerca',0,0,0,'grp_manutencao'),(646,'celio',50,49,NULL,'local');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users_del`
--

DROP TABLE IF EXISTS `tb_users_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users_del` (
  `cod_usr` int(11) DEFAULT NULL COMMENT 'Codigo usuario',
  `nom_usr` varchar(15) DEFAULT NULL COMMENT 'Nome usuario',
  `qut_def` int(11) DEFAULT NULL COMMENT 'Quota default',
  `qut_atu` int(11) DEFAULT NULL COMMENT 'Quota atual',
  `dth_del` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `grp_usr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users_del`
--

LOCK TABLES `tb_users_del` WRITE;
/*!40000 ALTER TABLE `tb_users_del` DISABLE KEYS */;
INSERT INTO `tb_users_del` VALUES (1,'celio',15,10,'2017-09-11 16:21:09',NULL);
/*!40000 ALTER TABLE `tb_users_del` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users_del_tst`
--

DROP TABLE IF EXISTS `tb_users_del_tst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users_del_tst` (
  `cod_usr` int(11) DEFAULT NULL COMMENT 'Codigo usuario',
  `nom_usr` varchar(15) DEFAULT NULL COMMENT 'Nome usuario',
  `qut_def` int(11) DEFAULT NULL COMMENT 'Quota default',
  `qut_atu` int(11) DEFAULT NULL COMMENT 'Quota atual',
  `dth_del` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `grp_usr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users_del_tst`
--

LOCK TABLES `tb_users_del_tst` WRITE;
/*!40000 ALTER TABLE `tb_users_del_tst` DISABLE KEYS */;
INSERT INTO `tb_users_del_tst` VALUES (1,'celio',15,10,'2017-09-11 16:21:09',NULL),(NULL,'isadorar',0,0,'0000-00-00 00:00:00',NULL),(NULL,'lucasf',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'gabriellyl',30,30,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'zeliamcl',50,43,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'giullieneem',30,82,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'karlasd',100,59,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'fernandar',30,29,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'sarafm',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'geovanagb',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'ritacr',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'joaopm',100,100,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'jusceliasc',20,2,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'brunamv',30,30,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'karlafg',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'vanusaas',30,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'tacielecc',30,30,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'marcosvgs',50,19,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'danielgs',0,0,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'cristinafsp',35,21,'0000-00-00 00:00:00','grp_diskcenter'),(NULL,'liviams',0,0,'0000-00-00 00:00:00','grp_diskcenter');
/*!40000 ALTER TABLE `tb_users_del_tst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users_tst`
--

DROP TABLE IF EXISTS `tb_users_tst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users_tst` (
  `cod_usr` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Codigo usuario',
  `nom_usr` varchar(15) NOT NULL COMMENT 'Nome usuario',
  `qut_def` int(10) unsigned DEFAULT NULL,
  `qut_atu` int(10) unsigned DEFAULT NULL,
  `qut_ant` int(10) unsigned DEFAULT NULL,
  `grp_usr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users_tst`
--

LOCK TABLES `tb_users_tst` WRITE;
/*!40000 ALTER TABLE `tb_users_tst` DISABLE KEYS */;
INSERT INTO `tb_users_tst` VALUES (0,'testeinfra',NULL,NULL,NULL,'grp_ti'),(0,'alissonfp',NULL,NULL,NULL,'grp_ti'),(0,'celiolsm',NULL,NULL,NULL,'grp_ti'),(0,'antoniorlj',NULL,NULL,NULL,'grp_ti'),(0,'wenderfc',NULL,NULL,NULL,'grp_ti'),(0,'carlosfsj',NULL,NULL,NULL,'grp_ti'),(0,'carolineam',NULL,NULL,NULL,'grp_ti'),(0,'gabrielsl',NULL,NULL,NULL,'grp_ti'),(0,'allefejss',NULL,NULL,NULL,'grp_ti'),(0,'thalisonjc',NULL,NULL,NULL,'grp_ti'),(0,'marcosas',NULL,NULL,NULL,'grp_ti'),(0,'marciojsf',NULL,NULL,NULL,'grp_ti'),(0,'andrerr',NULL,NULL,NULL,'grp_ti'),(0,'edersongs',NULL,NULL,NULL,'grp_ti'),(0,'eduardosr',NULL,NULL,NULL,'grp_ti'),(0,'raniera',NULL,NULL,NULL,'grp_ti'),(0,'iannycmp',NULL,NULL,NULL,'grp_ti'),(0,'monicapr',NULL,NULL,NULL,'grp_ti'),(0,'bruno.fc',NULL,NULL,NULL,'grp_ti'),(0,'suportetst',NULL,NULL,NULL,'grp_ti'),(0,'nairlp',NULL,NULL,NULL,'grp_ti'),(0,'raphaelsm',NULL,NULL,NULL,'grp_ti'),(0,'biancass',NULL,NULL,NULL,'grp_ti'),(0,'lauroof',NULL,NULL,NULL,'grp_ti'),(0,'matheusm',NULL,NULL,NULL,'grp_ti'),(0,'analn',NULL,NULL,NULL,'grp_ti'),(0,'luizars',NULL,NULL,NULL,'grp_ti'),(0,'fabiobc',NULL,NULL,NULL,'grp_ti');
/*!40000 ALTER TABLE `tb_users_tst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-13 15:53:38
