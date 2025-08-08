-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jul-2025 às 21:53
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `feira`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ods_projeto`
--

CREATE TABLE `ods_projeto` (
  `id_ods` int(11) NOT NULL,
  `id_projetos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_alunos`
--

CREATE TABLE `tbl_alunos` (
  `id_aluno` int(11) NOT NULL,
  `rm` varchar(5) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `serie` enum('1','2','3') NOT NULL,
  `curso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ods`
--

CREATE TABLE `tbl_ods` (
  `id_ods` int(11) NOT NULL,
  `ods` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_projetos`
--

CREATE TABLE `tbl_projetos` (
  `id_projetos` int(11) NOT NULL,
  `titulo_projeto` varchar(100) NOT NULL,
  `descricao_projeto` varchar(255) NOT NULL,
  `ods` varchar(100) NOT NULL,
  `bloco` enum('A','B') NOT NULL,
  `sala` varchar(20) NOT NULL,
  `posicao_projeto` int(11) NOT NULL,
  `stand` varchar(3) NOT NULL,
  `prof_orientador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_projetos`
--

INSERT INTO `tbl_projetos` (`id_projetos`, `titulo_projeto`, `descricao_projeto`, `ods`, `bloco`, `sala`, `posicao_projeto`, `stand`, `prof_orientador`) VALUES
(1, 'titulo1', 'projeto1', '1', 'A', '5', 56, '5', 'fulano1'),
(2, 'titulo2', 'projeto2', '2', 'B', '2', 78, '8', 'fulano2'),
(3, 'titulo3', 'projeto3', '3', 'A', '7', 34, '3', 'fulano3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `is_admin`, `nome`, `email`, `senha`, `data_nasc`) VALUES
(1, 0, 'teste1', 'teste1@gmail.com', '12345678', '2025-07-01'),
(2, 0, 'teste2', 'teste2@gmail.com', '12345678', '2025-07-16'),
(3, 0, 'teste3', 'teste3@gmail.com', '12345678', '2025-07-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_creditos`
--

CREATE TABLE `tb_creditos` (
  `id_dev` int(11) NOT NULL,
  `nome_dev` varchar(128) NOT NULL,
  `cargo_dev` varchar(128) NOT NULL,
  `foto_dev` varchar(128) NOT NULL,
  `linkedin_dev` varchar(255) DEFAULT NULL,
  `github_dev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `id_feedback` int(4) NOT NULL,
  `id_users` int(4) NOT NULL,
  `nota` int(1) NOT NULL,
  `comentario` varchar(400) DEFAULT NULL,
  `data_envio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_integrantes`
--

CREATE TABLE `tb_integrantes` (
  `id_projetos` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_votos`
--

CREATE TABLE `tb_votos` (
  `id_votos` int(11) NOT NULL,
  `dt_hora_voto` datetime NOT NULL,
  `valor_voto` int(11) NOT NULL,
  `coment_voto` varchar(200) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_projetos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_votos`
--

INSERT INTO `tb_votos` (`id_votos`, `dt_hora_voto`, `valor_voto`, `coment_voto`, `id_user`, `id_projetos`) VALUES
(1, '2025-07-28 21:51:44', 100, NULL, 2, 3),
(2, '2025-07-28 21:51:44', 0, 'abcd', 3, 1),
(3, '2025-07-28 21:51:44', 50, '', 3, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ods_projeto`
--
ALTER TABLE `ods_projeto`
  ADD KEY `id_ods` (`id_ods`),
  ADD KEY `id_projetos` (`id_projetos`);

--
-- Índices para tabela `tbl_alunos`
--
ALTER TABLE `tbl_alunos`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `tbl_ods`
--
ALTER TABLE `tbl_ods`
  ADD PRIMARY KEY (`id_ods`);

--
-- Índices para tabela `tbl_projetos`
--
ALTER TABLE `tbl_projetos`
  ADD PRIMARY KEY (`id_projetos`);

--
-- Índices para tabela `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Índices para tabela `tb_creditos`
--
ALTER TABLE `tb_creditos`
  ADD PRIMARY KEY (`id_dev`) USING BTREE;

--
-- Índices para tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `id_users` (`id_users`);

--
-- Índices para tabela `tb_integrantes`
--
ALTER TABLE `tb_integrantes`
  ADD KEY `id_projetos_integrantes` (`id_projetos`),
  ADD KEY `id_alunos_integrantes` (`id_aluno`);

--
-- Índices para tabela `tb_votos`
--
ALTER TABLE `tb_votos`
  ADD PRIMARY KEY (`id_votos`),
  ADD KEY `id_projetos` (`id_projetos`),
  ADD KEY `id_users` (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_alunos`
--
ALTER TABLE `tbl_alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_ods`
--
ALTER TABLE `tbl_ods`
  MODIFY `id_ods` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_projetos`
--
ALTER TABLE `tbl_projetos`
  MODIFY `id_projetos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_creditos`
--
ALTER TABLE `tb_creditos`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `id_feedback` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_votos`
--
ALTER TABLE `tb_votos`
  MODIFY `id_votos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `ods_projeto`
--
ALTER TABLE `ods_projeto`
  ADD CONSTRAINT `ods_projeto_ibfk_1` FOREIGN KEY (`id_ods`) REFERENCES `tbl_ods` (`id_ods`),
  ADD CONSTRAINT `ods_projeto_ibfk_2` FOREIGN KEY (`id_projetos`) REFERENCES `tbl_projetos` (`id_projetos`);

--
-- Limitadores para a tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD CONSTRAINT `tb_feedback_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Limitadores para a tabela `tb_integrantes`
--
ALTER TABLE `tb_integrantes`
  ADD CONSTRAINT `id_alunos_integrantes` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_alunos` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_projetos_integrantes` FOREIGN KEY (`id_projetos`) REFERENCES `tbl_projetos` (`id_projetos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tb_votos`
--
ALTER TABLE `tb_votos`
  ADD CONSTRAINT `id_projetos` FOREIGN KEY (`id_projetos`) REFERENCES `tbl_projetos` (`id_projetos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_users` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
