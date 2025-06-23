-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2025 às 20:10
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
-- Banco de dados: `bd_feira`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_alunos`
--

CREATE TABLE `tbl_alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `turma` varchar(50) NOT NULL,
  `curso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_projetos`
--

CREATE TABLE `tbl_projetos` (
  `id_projetos` int(11) NOT NULL,
  `projetos` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `ods` varchar(100) NOT NULL,
  `bloco` varchar(2) NOT NULL,
  `sala` varchar(20) NOT NULL,
  `stand` varchar(3) NOT NULL,
  `prof_orientador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Extraindo dados da tabela `tb_creditos`
--

INSERT INTO `tb_creditos` (`id_dev`, `nome_dev`, `cargo_dev`, `foto_dev`, `linkedin_dev`, `github_dev`) VALUES
(1, 'Amanda Kaori', 'Front-end', '/imagens', NULL, 'https://github.com/projamandakaori'),
(2, 'Amanda Rodriguez', 'Banco de Dados', '/imagens', NULL, 'https://github.com/amandszr'),
(3, 'Ângelo Gabriel', 'Back-end - Team leader', '/imagens', NULL, 'https://github.com/projAngeloAraujo'),
(4, 'Bryan de Oliveira', 'Banco de dados', '/imagens', NULL, 'https://github.com/BryanOli17'),
(5, 'Camila Vitoria', 'Front-end', '/imagens', NULL, 'https://github.com/ProjCamilaVitoria'),
(6, 'Cauã Arthur', 'Front-end', '/imagens', NULL, 'https://github.com/Projcauaramos'),
(7, 'Cecília Santiago', 'Front-end', '/imagens', NULL, 'https://github.com/ceciliasf'),
(8, 'Denner Pereira', 'Banco de Dados', '/imagens', NULL, 'https://github.com/Denner106'),
(9, 'Eduardo de Ataíde', 'Front-end', '/imagens', NULL, 'https://github.com/duduusxz'),
(10, 'Enzo Móbile', 'Back-end', '/imagens', NULL, 'https://github.com/enzomobile'),
(11, 'Giovana Pracanico', 'Gestão', '/imagens', NULL, 'https://github.com/projgipracanico'),
(12, 'Giulia Benedetti', 'Front-end - Team leader', '/imagens', NULL, 'https://github.com/projgioliveira'),
(13, 'Guilherme Benatte', 'Banco de dados - Team leader', '/imagens', NULL, 'https://github.com/guibenatte'),
(14, 'Guilherme Solon', 'Back-end', '/imagens', 'https://www.linkedin.com/in/guilherme-solon-6b4a142a9/', 'https://github.com/Solonguitec'),
(15, 'Gustavo da Rocha', 'Back-end', '/imagens', NULL, 'https://github.com/gustapinheiro'),
(16, 'Gustavo Rangel', 'Back-end', '/imagens', NULL, 'https://github.com/DEVRangelll'),
(17, 'Heitor Albuquerque', 'Gestão', '/imagens', NULL, 'https://github.com/projheitorfreitas'),
(18, 'Iuri Carati', 'Back-end', '/imagens', NULL, 'https://github.com/ToxicDumpster'),
(19, 'Jean Marcos', 'Back-end', '/imagens', NULL, 'https://github.com/jean666'),
(20, 'João Xavier', 'Front-end', '/imagens', 'https://www.linkedin.com/in/jo%C3%A3o-vitor-xavier-de-carvalho-469147183/?trk=opento_nprofile_details', 'https://github.com/joaovitorxc'),
(21, 'Joshua Rodrigues', 'Gestão', '/imagens', NULL, 'https://github.com/JoshRodriguescae'),
(22, 'Júlia Medeiros', 'Back-end', '/imagens', NULL, 'https://github.com/jumedeirost'),
(23, 'Katharina Iaussoghi', 'Banco de dados', '/imagens', NULL, 'https://github.com/Katharinasilveira'),
(24, 'Kevin Rafael', 'Front-end', '/imagens', NULL, 'https://github.com/Kevin2007x'),
(25, 'Lívia Amaral', 'Front-end - Team leader', '/imagens', 'https://www.linkedin.com/in/l%C3%ADvia-amaral-sales-antonio-675219326/', 'https://github.com/Liviaamaralsales'),
(26, 'Luara Gouveia', 'Gestão', '/imagens', NULL, 'https://github.com/luarag45'),
(27, 'Mariana Campello', 'Banco de dados', '/imagens', 'https://www.linkedin.com/in/mariana-cunha-campello-b865b5363/', 'https://github.com/marianacampelo'),
(28, 'Matheus Pereira', 'Back-end', '/imagens', NULL, 'https://github.com/MatheusSontos'),
(29, 'Miguel Sommerfeld', 'Back-end - Team leader', '/imagens', 'https://www.linkedin.com/in/miguel-sommerfeld-06491b340/', 'https://github.com/MiguelSommerf'),
(30, 'Miguel Teodoro', 'Back-end', '/imagens', NULL, 'https://github.com/Miguelteodorodesouza'),
(31, 'Nicole Pereira', 'Banco de dados', '/imagens', NULL, 'https://github.com/Nicolepereiragregorutti'),
(32, 'Olavo Alves', 'Front-end', '/imagens', NULL, 'https://github.com/Olavoschiavi'),
(33, 'Rafaela Mayumi', 'Banco de dados - Team leader', '/imagens', NULL, 'https://github.com/RafaelaMayumiFukuda'),
(34, 'Sabrina Bela', 'Back-end', '/imagens', NULL, 'https://github.com/sabrinabela1'),
(35, 'Sabrina Vitória', 'Front-end', '/imagens', NULL, 'https://github.com/Sabrinavmoura'),
(36, 'Stefanny Sayuri', 'Front-end', '/imagens', NULL, 'https://github.com/StefannySayuri'),
(37, 'Stephany dos Santos\r\n', 'Back-end', '/imagens', NULL, 'https://github.com/stephanydossantos16'),
(38, 'Thomas Coradi', 'Back-end', '/imagens', NULL, 'https://github.com/thomcoradi'),
(39, 'Welington Fernando', 'Front-end', '/imagens', NULL, 'https://github.com/Welingtonf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `id` int(4) NOT NULL,
  `id_user` int(4) NOT NULL,
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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_alunos`
--
ALTER TABLE `tbl_alunos`
  ADD PRIMARY KEY (`id_aluno`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
-- AUTO_INCREMENT de tabela `tbl_projetos`
--
ALTER TABLE `tbl_projetos`
  MODIFY `id_projetos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_creditos`
--
ALTER TABLE `tb_creditos`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_votos`
--
ALTER TABLE `tb_votos`
  MODIFY `id_votos` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

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
