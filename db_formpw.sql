-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/04/2025 às 20:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_formpw`
--
CREATE DATABASE IF NOT EXISTS `db_formpw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_formpw`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_user`, `nome`, `email`, `senha`) VALUES
(1, 'Shandel', 'shandelvm16@gmail.com', '$2y$10$NpI0FHui4rx2OzaCWVVYMeDt9gPjC3jZvgvzbJhJ0wvTlGSz6TpPK'),
(4, 'Pedro Medeiros Santos', 'pedrosantista@gmail.com', '$2y$10$z5lPd0hNXA5ryXLQvaKxte8UcFhpmEHnJ22WE.SUF6LBV4UJgMfO.'),
(5, 'Murilo Guimarâes', 'muriloetec@gmaill.com', '$2y$10$hGkoaTXNKRMjuiMx/7c.s.SUz9u6TiR.ag6zr2Ly5ZhfxETyGCzWu'),
(6, 'Thiago Ribeiro', 'ribeiros@gmail.com', '$2y$10$Gq0rgoAuQFneLH5NBFR2D.qVP6vq9V4DcvvCx9IfcNlQ8np1T1eUa'),
(7, 'Daniel Mattos', 'danimattos123@gmail.com', '$2y$10$RjZZGfVrrkyEExvm7oaZW.mj0YL9Sr9ovRv3SboVmy8DWt0wGWEdS'),
(8, 'Eduardo Fernandes', 'edudausp@gmail.com', '$2y$10$ELRRNkmPXJxkKyFX.zSpuut8h22/9W4Pjq9hULlQzAI9QTHMu45WG');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
