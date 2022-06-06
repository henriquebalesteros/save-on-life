-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06-Jun-2022 às 21:48
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_sol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login_adm`
--

DROP TABLE IF EXISTS `tb_login_adm`;
CREATE TABLE IF NOT EXISTS `tb_login_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_login_adm`
--

INSERT INTO `tb_login_adm` (`id`, `nome`, `senha`) VALUES
(1, 'admsol', 'admsol');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login_usuario`
--

DROP TABLE IF EXISTS `tb_login_usuario`;
CREATE TABLE IF NOT EXISTS `tb_login_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_login_usuario`
--

INSERT INTO `tb_login_usuario` (`id`, `nome`, `senha`) VALUES
(1, 'user', 'user');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_parceiro`
--

DROP TABLE IF EXISTS `tb_parceiro`;
CREATE TABLE IF NOT EXISTS `tb_parceiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `cnpj` varchar(200) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_parceiro`
--

INSERT INTO `tb_parceiro` (`id`, `nome`, `tipo`, `cnpj`, `endereco`, `email`, `telefone`) VALUES
(1, 'Fazer o BEM', 'ONG', '52.756.095/0001-55', 'Rua Pereira Bastos, 500 - São Paulo - SP', 'contato@bem.com.br', '11999557845');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `sexo` varchar(200) DEFAULT NULL,
  `nascimento` varchar(200) DEFAULT NULL,
  `cpf` varchar(200) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `confirmaSenha` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `sexo`, `nascimento`, `cpf`, `endereco`, `email`, `telefone`, `login`, `senha`, `confirmaSenha`) VALUES
(1, 'Karolina Araujo', 'Feminino', '18/01/1995', '388.060.038-44', 'Rua Francisco Hurtado, 55 apto 81 B', 'karolinakszar@gmail.com', '11997944777', 'karolinakszar', '1234', '1234'),
(2, 'Edma Galdino', 'Feminino', '12/04/1976', '909.708.451-20', 'Rua Francisco Hurtado, 55 - Apto 81 B', 'edmagaldino@hotmail.com', '11956557066', 'edmagaldino', '1234', '1235'),
(3, 'Francinaldo Araujo', 'Masculino', '15/07/1970', '522.948.701-15', 'Rua Francisco Hurtado, 55 apto  81 B - São Paulo - SP', 'francinaldo.araujo@hotmail.com', '11982134296', 'naldoaraujo', '1234', '1234'),
(4, 'nihih', 'ik', 'nihuh', 'iun', 'iu', 'hiu', 'hi', 'uhiu', 'h', 'ih'),
(5, 'jolinoihNih', 'oi', 'hnoi', 'hn', 'olhn', 'o', 'ih', 'oih', 'oih', 'oi'),
(6, 'ujbUIHuhU', 'HI', 'UH', 'IUH', 'IOU', 'H', 'IUH', 'IU', 'HIU', 'HI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
