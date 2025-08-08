-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2025 às 20:50
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

--
-- Extraindo dados da tabela `tbl_alunos`
--

INSERT INTO `tbl_alunos` (`id_aluno`, `rm`, `nome`, `serie`, `curso`) VALUES
(1, '1001', 'Ana Silva', '', 'Informática'),
(2, '1002', 'Carlos Mendes', '', 'Química'),
(3, '1003', 'Beatriz Rocha', '', 'Administração');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ods`
--

CREATE TABLE `tbl_ods` (
  `id_ods` int(11) NOT NULL,
  `ods` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_ods`
--

INSERT INTO `tbl_ods` (`id_ods`, `ods`) VALUES
(1, 'Erradicação da pobreza'),
(2, 'Fome zero e agricultura sustentavel'),
(3, 'Saude e bem-estar'),
(4, 'Educação de qualidade'),
(5, 'Igualdade de genero'),
(6, 'Agua potavel e saneamento'),
(7, 'Energia limpa e acessivel'),
(8, 'Trabalho decente e crescimento economico'),
(9, 'Industria, inovacao e infraestrutura'),
(10, 'Reducao das desigualdades'),
(11, 'Cidades e comunidades sustentaveis'),
(12, 'Consumo e producao responsaeis'),
(13, 'Acao contra a mudanca global do clima'),
(14, 'Vida na agua'),
(15, 'Vida terrestre'),
(16, 'Paz, justica e instituicoes eficazes'),
(17, 'Parcerias e meios de implementacao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_projetos`
--

CREATE TABLE `tbl_projetos` (
  `id_projetos` int(11) NOT NULL,
  `titulo_projeto` varchar(100) NOT NULL,
  `descricao_projeto` varchar(255) NOT NULL,
  `bloco` enum('A','B') NOT NULL,
  `sala` varchar(20) NOT NULL,
  `stand` varchar(3) NOT NULL,
  `prof_orientador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_projetos`
--

INSERT INTO `tbl_projetos` (`id_projetos`, `titulo_projeto`, `descricao_projeto`, `bloco`, `sala`, `stand`, `prof_orientador`) VALUES
(1, 'EcoLuz', 'Projeto que transforma luz solar em energia para comunidades.', 'A', '1', '58', 'Professor João'),
(2, 'AgroTech', 'Sistema inteligente para monitoramento de plantações.', 'B', '2', '52', 'Professora Luana'),
(3, 'EcoLuz', 'Projeto que transforma luz solar em energia para comunidades.', 'A', '1', '58', 'ProfessorJoao'),
(4, 'AgroTech', 'Sistema inteligente para monitoramento de plantações.', 'B', '2', '52', 'ProfessoraLuana');

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
(32, 'Olavo Alves', 'Front-end', '/imagens', 'https://www.linkedin.com/in/olavo-alves-schiavi-338488353?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', 'https://github.com/Olavoschiavi'),
(33, 'Rafaela Mayumi', 'Banco de dados - Team leader', '/imagens', 'https://www.linkedin.com/in/rafaela-mayumi-3b4587286?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', 'https://github.com/RafaelaMayumiFukuda'),
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
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tbl_ods`
--
ALTER TABLE `tbl_ods`
  MODIFY `id_ods` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `tbl_projetos`
--
ALTER TABLE `tbl_projetos`
  MODIFY `id_projetos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_creditos`
--
ALTER TABLE `tb_creditos`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
