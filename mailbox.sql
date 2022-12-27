-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Dez-2022 às 14:22
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `listaemails`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mailbox`
--

DROP TABLE IF EXISTS `mailbox`;
CREATE TABLE IF NOT EXISTS `mailbox` (
  `username` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mailbox`
--

INSERT INTO `mailbox` (`username`, `name`) VALUES
('EDUARDO2022@HOTMAIL.COM', 'EDU'),
('AKLJSDASJDFJASDB@HOTMAIL.COM', 'LKJHJKN'),
('oiupoiojlip@hotmail.com', 'LKJKSNJVHDKFJ'),
('qwerty@lkjkjklçjh.com', 'MLKJHLLKJGLKGN'),
('qweqrqwdfastw@gmail.com', 'AKBFAMSDF'),
('LKJGLISDFH@HOTMAIL.COM', 'KLSJHDFLJKS'),
('QWETWLERNMDFN@HLKJÇALKVN.COM', 'LKJFDHISUFL'),
('aksjfajvjasvgj@hotmail.com', 'asdfghjklçzxcvbnmq'),
('ASDAG@HOTMAIL.COM', 'QWERTYUIOPASDFGHJKL'),
('gasdfrasdfsa@gmail.com', 'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfgh'),
('teste2.0', 'testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste'),
('teste@hotmail.com', 'teste'),
('teste@gmail.com', 'luciano'),
('rafa@gmail.com', 'rafa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
