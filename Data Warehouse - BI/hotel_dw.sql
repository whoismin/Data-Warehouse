-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Abr-2026 às 00:52
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel_dw`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agencia`
--

CREATE TABLE `agencia` (
  `idAgencia` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `agencia`
--

INSERT INTO `agencia` (`idAgencia`, `nome`) VALUES
(1, 'Decolar'),
(2, 'CVC'),
(3, 'Booking'),
(4, 'Expedia'),
(5, 'Airbnb');

-- --------------------------------------------------------

--
-- Estrutura da tabela `apto`
--

CREATE TABLE `apto` (
  `idApartamento` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `andar` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `apto`
--

INSERT INTO `apto` (`idApartamento`, `numero`, `andar`, `tipo`) VALUES
(1, 101, 1, 'Luxo'),
(2, 102, 1, 'Simples'),
(3, 201, 2, 'Luxo'),
(4, 202, 2, 'Simples'),
(5, 301, 3, 'Premium');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumo`
--

CREATE TABLE `consumo` (
  `Tempo_idTempo` int(11) NOT NULL,
  `Hospede_idHospede` int(11) NOT NULL,
  `Apto_idApartamento` int(11) NOT NULL,
  `Produto_idProduto` int(11) NOT NULL,
  `Servico_idServico` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `Valor_Consumo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `consumo`
--

INSERT INTO `consumo` (`Tempo_idTempo`, `Hospede_idHospede`, `Apto_idApartamento`, `Produto_idProduto`, `Servico_idServico`, `quantidade`, `Valor_Consumo`) VALUES
(1, 1, 3, 4, 5, 3, 21.11),
(1, 2, 4, 5, 1, 3, 182.78),
(1, 3, 5, 1, 2, 2, 115.55),
(1, 4, 1, 2, 3, 1, 194.41),
(1, 5, 2, 3, 4, 3, 70.39),
(1, 6, 3, 4, 5, 3, 113.75),
(1, 7, 4, 5, 1, 3, 162.56),
(1, 8, 5, 1, 2, 2, 96.55),
(1, 9, 1, 2, 3, 1, 160.08),
(1, 10, 2, 3, 4, 3, 135.76),
(2, 1, 4, 5, 1, 3, 183.55),
(2, 2, 5, 1, 2, 2, 135.47),
(2, 3, 1, 2, 3, 1, 111.69),
(2, 4, 2, 3, 4, 3, 137.06),
(2, 5, 3, 4, 5, 3, 155.22),
(2, 6, 4, 5, 1, 3, 169.92),
(2, 7, 5, 1, 2, 2, 188.92),
(2, 8, 1, 2, 3, 1, 59.87),
(2, 9, 2, 3, 4, 3, 77.59),
(2, 10, 3, 4, 5, 3, 193.35),
(3, 1, 5, 1, 2, 2, 178.95),
(3, 2, 1, 2, 3, 1, 119.72),
(3, 3, 2, 3, 4, 3, 46.75),
(3, 4, 3, 4, 5, 3, 39.6),
(3, 5, 4, 5, 1, 3, 42.76),
(3, 6, 5, 1, 2, 2, 79.99),
(3, 7, 1, 2, 3, 1, 76.65),
(3, 8, 2, 3, 4, 3, 128.29),
(3, 9, 3, 4, 5, 3, 36.51),
(3, 10, 4, 5, 1, 3, 142.66),
(4, 1, 1, 2, 3, 1, 48.76),
(4, 2, 2, 3, 4, 3, 160.83),
(4, 3, 3, 4, 5, 3, 102.89),
(4, 4, 4, 5, 1, 3, 16.94),
(4, 5, 5, 1, 2, 2, 121.04),
(4, 6, 1, 2, 3, 1, 179.38),
(4, 7, 2, 3, 4, 3, 158.8),
(4, 8, 3, 4, 5, 3, 60.83),
(4, 9, 4, 5, 1, 3, 172.78),
(4, 10, 5, 1, 2, 2, 126.4),
(5, 1, 2, 3, 4, 3, 98.64),
(5, 2, 3, 4, 5, 3, 99.01),
(5, 3, 4, 5, 1, 3, 184.14),
(5, 4, 5, 1, 2, 2, 68.65),
(5, 5, 1, 2, 3, 1, 135.84),
(5, 6, 2, 3, 4, 3, 98.24),
(5, 7, 3, 4, 5, 3, 68.68),
(5, 8, 4, 5, 1, 3, 33.68),
(5, 9, 5, 1, 2, 2, 127.38),
(5, 10, 1, 2, 3, 1, 160.85),
(6, 1, 3, 4, 5, 3, 47.13),
(6, 2, 4, 5, 1, 3, 98.07),
(6, 3, 5, 1, 2, 2, 153.99),
(6, 4, 1, 2, 3, 1, 100.72),
(6, 5, 2, 3, 4, 3, 26.64),
(6, 6, 3, 4, 5, 3, 176.03),
(6, 7, 4, 5, 1, 3, 65.22),
(6, 8, 5, 1, 2, 2, 143.01),
(6, 9, 1, 2, 3, 1, 144.4),
(6, 10, 2, 3, 4, 3, 97.95),
(7, 1, 4, 5, 1, 3, 41.55),
(7, 2, 5, 1, 2, 2, 78.9),
(7, 3, 1, 2, 3, 1, 74.88),
(7, 4, 2, 3, 4, 3, 122.67),
(7, 5, 3, 4, 5, 3, 193.71),
(7, 6, 4, 5, 1, 3, 45.53),
(7, 7, 5, 1, 2, 2, 171.52),
(7, 8, 1, 2, 3, 1, 166.01),
(7, 9, 2, 3, 4, 3, 120.5),
(7, 10, 3, 4, 5, 3, 89.45),
(8, 1, 5, 1, 2, 2, 70.75),
(8, 2, 1, 2, 3, 1, 70.4),
(8, 3, 2, 3, 4, 3, 124.75),
(8, 4, 3, 4, 5, 3, 37.53),
(8, 5, 4, 5, 1, 3, 158.43),
(8, 6, 5, 1, 2, 2, 124.57),
(8, 7, 1, 2, 3, 1, 132.55),
(8, 8, 2, 3, 4, 3, 94.04),
(8, 9, 3, 4, 5, 3, 57.54),
(8, 10, 4, 5, 1, 3, 170.6),
(9, 1, 1, 2, 3, 1, 125.38),
(9, 2, 2, 3, 4, 3, 100.07),
(9, 3, 3, 4, 5, 3, 109.24),
(9, 4, 4, 5, 1, 3, 50.99),
(9, 5, 5, 1, 2, 2, 92.23),
(9, 6, 1, 2, 3, 1, 113.17),
(9, 7, 2, 3, 4, 3, 94.17),
(9, 8, 3, 4, 5, 3, 116.33),
(9, 9, 4, 5, 1, 3, 104.15),
(9, 10, 5, 1, 2, 2, 156.77),
(10, 1, 2, 3, 4, 3, 96.38),
(10, 2, 3, 4, 5, 3, 176.6),
(10, 3, 4, 5, 1, 3, 38.87),
(10, 4, 5, 1, 2, 2, 189.55),
(10, 5, 1, 2, 3, 1, 96.14),
(10, 6, 2, 3, 4, 3, 77.06),
(10, 7, 3, 4, 5, 3, 81.87),
(10, 8, 4, 5, 1, 3, 163.17),
(10, 9, 5, 1, 2, 2, 15.23),
(10, 10, 1, 2, 3, 1, 111.64);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `Hospede_idHospede` int(11) NOT NULL,
  `Meio_Transporte` varchar(30) DEFAULT NULL,
  `Agencia_idAgencia` int(11) NOT NULL,
  `Apartamento_idApartamento` int(11) NOT NULL,
  `Motivo_Viagem` varchar(30) DEFAULT NULL,
  `Tempo_idTempo` int(11) NOT NULL,
  `Valor_Faturado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `hospedagem`
--

INSERT INTO `hospedagem` (`Hospede_idHospede`, `Meio_Transporte`, `Agencia_idAgencia`, `Apartamento_idApartamento`, `Motivo_Viagem`, `Tempo_idTempo`, `Valor_Faturado`) VALUES
(1, 'Aviao', 3, 3, 'Lazer', 1, 1217.13),
(1, 'Carro', 4, 4, 'Lazer', 2, 264.56),
(1, 'Onibus', 5, 5, 'Lazer', 3, 1639.06),
(1, 'Aviao', 1, 1, 'Lazer', 4, 706.5),
(1, 'Carro', 2, 2, 'Lazer', 5, 369.61),
(1, 'Onibus', 3, 3, 'Lazer', 6, 1062.29),
(1, 'Aviao', 4, 4, 'Lazer', 7, 563.43),
(1, 'Carro', 5, 5, 'Lazer', 8, 1342.39),
(1, 'Onibus', 1, 1, 'Lazer', 9, 881.29),
(1, 'Aviao', 2, 2, 'Lazer', 10, 541.44),
(2, 'Aviao', 4, 4, 'Trabalho', 1, 527.14),
(2, 'Carro', 5, 5, 'Trabalho', 2, 1292.94),
(2, 'Onibus', 1, 1, 'Trabalho', 3, 959.91),
(2, 'Aviao', 2, 2, 'Trabalho', 4, 448.08),
(2, 'Carro', 3, 3, 'Trabalho', 5, 893.24),
(2, 'Onibus', 4, 4, 'Trabalho', 6, 432.33),
(2, 'Aviao', 5, 5, 'Trabalho', 7, 1329.09),
(2, 'Carro', 1, 1, 'Trabalho', 8, 794.61),
(2, 'Onibus', 2, 2, 'Trabalho', 9, 458.77),
(2, 'Aviao', 3, 3, 'Trabalho', 10, 1003.86),
(3, 'Aviao', 5, 5, 'Evento', 1, 1990.75),
(3, 'Carro', 1, 1, 'Evento', 2, 944.31),
(3, 'Onibus', 2, 2, 'Evento', 3, 530.94),
(3, 'Aviao', 3, 3, 'Evento', 4, 966.05),
(3, 'Carro', 4, 4, 'Evento', 5, 535.3),
(3, 'Onibus', 5, 5, 'Evento', 6, 1620.94),
(3, 'Aviao', 1, 1, 'Evento', 7, 919.87),
(3, 'Carro', 2, 2, 'Evento', 8, 375.52),
(3, 'Onibus', 3, 3, 'Evento', 9, 1121.9),
(3, 'Aviao', 4, 4, 'Evento', 10, 388.56),
(4, 'Aviao', 1, 1, 'Lazer', 1, 888.7),
(4, 'Carro', 2, 2, 'Lazer', 2, 540.43),
(4, 'Onibus', 3, 3, 'Lazer', 3, 827.34),
(4, 'Aviao', 4, 4, 'Lazer', 4, 542.62),
(4, 'Carro', 5, 5, 'Lazer', 5, 1740.09),
(4, 'Onibus', 1, 1, 'Lazer', 6, 1282.63),
(4, 'Aviao', 2, 2, 'Lazer', 7, 410.77),
(4, 'Carro', 3, 3, 'Lazer', 8, 757.59),
(4, 'Onibus', 4, 4, 'Lazer', 9, 630.04),
(4, 'Aviao', 5, 5, 'Lazer', 10, 1391.39),
(5, 'Aviao', 2, 2, 'Trabalho', 1, 624.68),
(5, 'Carro', 3, 3, 'Trabalho', 2, 945.31),
(5, 'Onibus', 4, 4, 'Trabalho', 3, 631.65),
(5, 'Aviao', 5, 5, 'Trabalho', 4, 1494.71),
(5, 'Carro', 1, 1, 'Trabalho', 5, 1216.42),
(5, 'Onibus', 2, 2, 'Trabalho', 6, 430.85),
(5, 'Aviao', 3, 3, 'Trabalho', 7, 1246.15),
(5, 'Carro', 4, 4, 'Trabalho', 8, 465.4),
(5, 'Onibus', 5, 5, 'Trabalho', 9, 1776.9),
(5, 'Aviao', 1, 1, 'Trabalho', 10, 714.48),
(6, 'Aviao', 3, 3, 'Evento', 1, 1143.99),
(6, 'Carro', 4, 4, 'Evento', 2, 596.4),
(6, 'Onibus', 5, 5, 'Evento', 3, 1320.54),
(6, 'Aviao', 1, 1, 'Evento', 4, 965.6),
(6, 'Carro', 2, 2, 'Evento', 5, 451.29),
(6, 'Onibus', 3, 3, 'Evento', 6, 908.48),
(6, 'Aviao', 4, 4, 'Evento', 7, 388.19),
(6, 'Carro', 5, 5, 'Evento', 8, 1564.12),
(6, 'Onibus', 1, 1, 'Evento', 9, 912.81),
(6, 'Aviao', 2, 2, 'Evento', 10, 443.07),
(7, 'Aviao', 4, 4, 'Lazer', 1, 605.92),
(7, 'Carro', 5, 5, 'Lazer', 2, 1293.07),
(7, 'Onibus', 1, 1, 'Lazer', 3, 1184.38),
(7, 'Aviao', 2, 2, 'Lazer', 4, 342.38),
(7, 'Carro', 3, 3, 'Lazer', 5, 1260.43),
(7, 'Onibus', 4, 4, 'Lazer', 6, 402.38),
(7, 'Aviao', 5, 5, 'Lazer', 7, 2096.96),
(7, 'Carro', 1, 1, 'Lazer', 8, 944.41),
(7, 'Onibus', 2, 2, 'Lazer', 9, 590.16),
(7, 'Aviao', 3, 3, 'Lazer', 10, 904.56),
(8, 'Aviao', 5, 5, 'Trabalho', 1, 1406.18),
(8, 'Carro', 1, 1, 'Trabalho', 2, 1251.45),
(8, 'Onibus', 2, 2, 'Trabalho', 3, 503.86),
(8, 'Aviao', 3, 3, 'Trabalho', 4, 1196.05),
(8, 'Carro', 4, 4, 'Trabalho', 5, 314.21),
(8, 'Onibus', 5, 5, 'Trabalho', 6, 1976.15),
(8, 'Aviao', 1, 1, 'Trabalho', 7, 1268.01),
(8, 'Carro', 2, 2, 'Trabalho', 8, 579.21),
(8, 'Onibus', 3, 3, 'Trabalho', 9, 812.77),
(8, 'Aviao', 4, 4, 'Trabalho', 10, 352.66),
(9, 'Aviao', 1, 1, 'Evento', 1, 985.62),
(9, 'Carro', 2, 2, 'Evento', 2, 364.07),
(9, 'Onibus', 3, 3, 'Evento', 3, 1150.84),
(9, 'Aviao', 4, 4, 'Evento', 4, 426.37),
(9, 'Carro', 5, 5, 'Evento', 5, 1200.49),
(9, 'Onibus', 1, 1, 'Evento', 6, 801.44),
(9, 'Aviao', 2, 2, 'Evento', 7, 547.43),
(9, 'Carro', 3, 3, 'Evento', 8, 1235.84),
(9, 'Onibus', 4, 4, 'Evento', 9, 405.41),
(9, 'Aviao', 5, 5, 'Evento', 10, 1434.43),
(10, 'Aviao', 2, 2, 'Lazer', 1, 527.16),
(10, 'Carro', 3, 3, 'Lazer', 2, 1101.21),
(10, 'Onibus', 4, 4, 'Lazer', 3, 591.2),
(10, 'Aviao', 5, 5, 'Lazer', 4, 1851.93),
(10, 'Carro', 1, 1, 'Lazer', 5, 1012.65),
(10, 'Onibus', 2, 2, 'Lazer', 6, 353.26),
(10, 'Aviao', 3, 3, 'Lazer', 7, 1226.67),
(10, 'Carro', 4, 4, 'Lazer', 8, 648.51),
(10, 'Onibus', 5, 5, 'Lazer', 9, 1540.95),
(10, 'Aviao', 1, 1, 'Lazer', 10, 1019.45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospede`
--

CREATE TABLE `hospede` (
  `idHospede` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `hospede`
--

INSERT INTO `hospede` (`idHospede`, `nome`) VALUES
(1, 'Ana'),
(2, 'Bruno'),
(3, 'Carlos'),
(4, 'Daniela'),
(5, 'Eduardo'),
(6, 'Fernanda'),
(7, 'Gabriel'),
(8, 'Helena'),
(9, 'Igor'),
(10, 'Julia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `descricao`) VALUES
(1, 'Agua'),
(2, 'Refrigerante'),
(3, 'Snack'),
(4, 'Suco'),
(5, 'Cerveja');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idServico` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServico`, `descricao`) VALUES
(1, 'Lavanderia'),
(2, 'Spa'),
(3, 'Room Service'),
(4, 'Taxi'),
(5, 'Passeio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tempo`
--

CREATE TABLE `tempo` (
  `idTempo` int(11) NOT NULL,
  `ano` char(4) NOT NULL,
  `mes` char(2) NOT NULL,
  `dia` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tempo`
--

INSERT INTO `tempo` (`idTempo`, `ano`, `mes`, `dia`) VALUES
(1, '2024', '01', '01'),
(2, '2024', '01', '02'),
(3, '2024', '01', '03'),
(4, '2024', '01', '04'),
(5, '2024', '01', '05'),
(6, '2024', '01', '06'),
(7, '2024', '01', '07'),
(8, '2024', '01', '08'),
(9, '2024', '01', '09'),
(10, '2024', '01', '10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`idAgencia`);

--
-- Índices para tabela `apto`
--
ALTER TABLE `apto`
  ADD PRIMARY KEY (`idApartamento`);

--
-- Índices para tabela `consumo`
--
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`Tempo_idTempo`,`Hospede_idHospede`,`Apto_idApartamento`,`Produto_idProduto`,`Servico_idServico`),
  ADD KEY `idx_consumo_tempo` (`Tempo_idTempo`),
  ADD KEY `idx_consumo_hospede` (`Hospede_idHospede`),
  ADD KEY `idx_consumo_apto` (`Apto_idApartamento`),
  ADD KEY `idx_consumo_produto` (`Produto_idProduto`),
  ADD KEY `idx_consumo_servico` (`Servico_idServico`);

--
-- Índices para tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`Hospede_idHospede`,`Tempo_idTempo`),
  ADD KEY `idx_hospedagem_tempo` (`Tempo_idTempo`),
  ADD KEY `idx_hospedagem_hospede` (`Hospede_idHospede`),
  ADD KEY `idx_hospedagem_agencia` (`Agencia_idAgencia`),
  ADD KEY `idx_hospedagem_apto` (`Apartamento_idApartamento`);

--
-- Índices para tabela `hospede`
--
ALTER TABLE `hospede`
  ADD PRIMARY KEY (`idHospede`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServico`);

--
-- Índices para tabela `tempo`
--
ALTER TABLE `tempo`
  ADD PRIMARY KEY (`idTempo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `consumo`
--
ALTER TABLE `consumo`
  ADD CONSTRAINT `consumo_ibfk_1` FOREIGN KEY (`Tempo_idTempo`) REFERENCES `tempo` (`idTempo`),
  ADD CONSTRAINT `consumo_ibfk_2` FOREIGN KEY (`Hospede_idHospede`) REFERENCES `hospede` (`idHospede`),
  ADD CONSTRAINT `consumo_ibfk_3` FOREIGN KEY (`Apto_idApartamento`) REFERENCES `apto` (`idApartamento`),
  ADD CONSTRAINT `consumo_ibfk_4` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `consumo_ibfk_5` FOREIGN KEY (`Servico_idServico`) REFERENCES `servico` (`idServico`);

--
-- Limitadores para a tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`Hospede_idHospede`) REFERENCES `hospede` (`idHospede`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`Agencia_idAgencia`) REFERENCES `agencia` (`idAgencia`),
  ADD CONSTRAINT `hospedagem_ibfk_3` FOREIGN KEY (`Apartamento_idApartamento`) REFERENCES `apto` (`idApartamento`),
  ADD CONSTRAINT `hospedagem_ibfk_4` FOREIGN KEY (`Tempo_idTempo`) REFERENCES `tempo` (`idTempo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
