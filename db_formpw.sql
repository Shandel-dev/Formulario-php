-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/04/2025 às 22:39
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
(8, 'Eduardo Fernandes', 'edudausp@gmail.com', '$2y$10$ELRRNkmPXJxkKyFX.zSpuut8h22/9W4Pjq9hULlQzAI9QTHMu45WG'),
(11, 'Fabrício Costa', 'fabricioetec192@gmail.com', '$2y$10$A3BiNgRs8UunLZCacgBTO.3Rx2wTWwA/ne4u6Vl7sL1V/gzrsqOP6'),
(12, 'Lucas Almeida', 'lucas.almeida23@gmail.com', '$2y$10$9cU6a68EhpxIuAvGfeEbEOAsdtqHrrg4N9XMvnzNldZQuBZB8K6Oi'),
(13, 'Mariana Costa', 'mariana.costa79@gmail.com', '$2y$10$ZI65lnoef33kAY6/F3FBA.tVfK2aW1zzexx7HkVcI92ovuklN0IQ6'),
(14, 'Felipe Souza', 'felipe.souza18@outlook.com', '$2y$10$wNCqW8rDp.T56a7S86c/SukwqIzK.C3DZuQU0pFBtnY8KuRr.WWnG'),
(15, 'Julia Pereira', 'julia.pereira65@yahoo.com', '$2y$10$dHRRxRb8I/r1BoWe2LXG5e3WDM.bPBPyqXtWasbuEKz9n.UV9gftW'),
(16, 'Roberto Silva', 'roberto.silva22@icloud.com', '$2y$10$v7CZiyo1VEzNk0r.AwqVF.PrkCjv6NVtuRqEy/IMfD6IPmrkdtn/K'),
(17, 'Ana Clara Rocha', 'anaclara.rocha22@gmail.com', '$2y$10$TvLX7xidPyKg4NPtak1leeDoQsr64CbjuHxkU.e7KhYMJvMm2ZR6y'),
(18, 'Carlos Mendes', 'carlos.mendes.23@live.com', '$2y$10$86dDbklPYHj12XhQXEBlZ.RrCO7cOYTycaagCFWgdZVMHeFYE9e4G'),
(19, 'Fernanda Lima', 'fernanda.lima12@hotmail.com', '$2y$10$GYEQCKe9hS.8Wm3O/1lfCO0R.GqEr/GLDZFs4Mrup76yKujwWb/8a'),
(20, 'Gabriel Snntos', 'gabriel.santos89@outlook.com', '$2y$10$Uq0Sc8GJ8r/Ho8LVrIMVjeCYAZGHLVChGQ0mIWRX1HM/S0Gm7esWa'),
(21, 'Beatriz Oliveira', 'beatriz.oliveira77@yahoo.com', '$2y$10$SBq7zN7bbAEqymJ0ZI/IDOxxqzfrT.IReTEoIpPalEdiMF7sdV15i');

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
