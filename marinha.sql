-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 19:43
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marinha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `artico`
--

CREATE TABLE `artico` (
  `nome` int(200) NOT NULL,
  `especie` int(200) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `comprimento` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atlantico`
--

CREATE TABLE `atlantico` (
  `nome` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `peso` double(8,2) DEFAULT NULL,
  `comprimento` double(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atlantico`
--

INSERT INTO `atlantico` (`nome`, `especie`, `peso`, `comprimento`) VALUES
('Baleia Azul', 'Balaenoptera musculus', 200000.00, 30.00),
('Tubarão Branco', 'Balaenoptera musculus', 2268.00, 6.00),
('Golfinho nariz de garrafa', 'Balaenoptera musculus', 650.00, 4.00),
('Tartaruga de couro', 'Dermochelys coriacea', 700.00, 2.00),
('Sardinha', 'Sardina pilchardus', 0.00, 0.00),
('Baleia jubarte', 'Megaptera novaeangliae', 36000.00, 16.00),
('Baleia azul', 'Balaenoptera musculus', 200000.00, 30.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `indico`
--

CREATE TABLE `indico` (
  `nome` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `comprimento` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `email`, `senha`) VALUES
(1, 'joao.silva@email.com', 'J0ao*2023'),
(2, 'juliana.nunes@email.com', 'Ju1i@Nunes22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacifico`
--

CREATE TABLE `pacifico` (
  `nome` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `comprimento` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
