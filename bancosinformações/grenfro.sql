

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `desc_cidade` varchar(20) DEFAULT NULL,
  `uf_cidade` char(2) DEFAULT NULL
) ;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `desc_cidade`, `uf_cidade`) VALUES
(1, 'Dourados', 'MS'),
(5, 'Campo-Grande', 'MS'),
(6, 'Ponta - Porã', 'MS'),
(7, 'Fatima do Sul', 'MS'),
(8, 'Glória de Dourados', 'MS'),
(9, 'Jatei', 'MS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(20) DEFAULT NULL,
  `cpf_cliente` char(11) DEFAULT NULL,
  `endereco_cliente` varchar(20) DEFAULT NULL,
  `telefone_cliente` char(11) DEFAULT NULL,
  `email_cliente` varchar(100) 
) ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `cpf_cliente`, `endereco_cliente`, `telefone_cliente`, `email_cliente`) VALUES
(1, 'Matheus Lopes', '12345678910', 'Não sei', '98343255', 'matheuslopes5634@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `data_contrato` date DEFAULT NULL,
  `valor_contrato` double DEFAULT NULL,
  `data_vencimento_contrato` date DEFAULT NULL,
  `id_veiculo` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_servico` int(11) DEFAULT NULL,
  `id_pacote` int(11) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `nome_empresa` varchar(20) DEFAULT NULL,
  `senha_empresa` varchar(20) DEFAULT NULL,
  `responsavel_empresa` varchar(20) DEFAULT NULL,
  `telefone_empresa` char(11) DEFAULT NULL,
  `email_empresa` varchar(40) ,
  `endereco_empresa` varchar(40) ,
  `cnpj_veiculo` char(14) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `logo_empresa` text
) ;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nome_empresa`, `senha_empresa`, `responsavel_empresa`, `telefone_empresa`, `email_empresa`, `endereco_empresa`, `cnpj_veiculo`, `id_cidade`, `logo_empresa`) VALUES
(1, 'MTUR', '99510796', 'Marcos Lopes', '6798343255', 'Marcoslopes5687@gmail.com', 'Rua takão massago 1144', '01234566789', 7, 'https://valdetur.com.br/wp-content/uploads/2016/06/LOGO-Valdetur-1.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manuntencao`
--

CREATE TABLE `manuntencao` (
  `id_manuntencao` int(11) NOT NULL,
  `desc_manuntencao` text,
  `tipo_manuntencao` varchar(100) ,
  `valor_manuntencao` int(11) DEFAULT NULL,
  `data_manuntencao` date DEFAULT NULL,
  `id_veiculo` int(11) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacote`
--

CREATE TABLE `pacote` (
  `id_pacote` int(11) NOT NULL,
  `nome_pacote` varchar(20) DEFAULT NULL,
  `cidade_pacote` varchar(20) DEFAULT NULL,
  `estado_pacote` char(2) DEFAULT NULL,
  `preço_pacote` double DEFAULT NULL,
  `parcelamento` varchar(20) DEFAULT NULL,
  `data_viagem` date DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `id_contrato` int(11) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `tipo_servico` varchar(20) DEFAULT NULL,
  `km_percorrido` int(11) DEFAULT NULL,
  `data_ida` date DEFAULT NULL,
  `data_volta` date DEFAULT NULL,
  `cidade_servico_destino` varchar(40) DEFAULT NULL,
  `cidade_servico_origem` varchar(40) DEFAULT NULL
) ;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `tipo_servico`, `km_percorrido`, `data_ida`, `data_volta`, `cidade_servico_destino`, `cidade_servico_origem`) VALUES
(1, 'Fretamento', 1200, '2018-06-06', '2018-06-06', 'Campo-Grande', 'Dourados'),
(2, 'Fretamento', 1200, '2018-06-06', '2018-06-06', 'Dourados', 'Dourados'),
(3, 'Viagem Interestadual', 0, '2018-06-27', '2018-02-27', 'Dourados', 'Dourados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_veicullo`
--

CREATE TABLE `tipo_veicullo` (
  `id_tipo_veiculo` int(11) NOT NULL,
  `desc_tipo_veiculo` varchar(40) DEFAULT NULL
) ;

--
-- Extraindo dados da tabela `tipo_veicullo`
--

INSERT INTO `tipo_veicullo` (`id_tipo_veiculo`, `desc_tipo_veiculo`) VALUES
(1, 'ônibus'),
(2, 'Vans'),
(3, 'Carros'),
(4, 'Motos'),
(5, 'Caminhões');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id_veiculo` int(11) NOT NULL,
  `nome_veiculo` varchar(40) DEFAULT NULL,
  `capacidade_veiculo` int(11) DEFAULT NULL,
  `img_veiculo` text,
  `ano_veiculo` int(11) DEFAULT NULL,
  `marca_veiculo` varchar(20) DEFAULT NULL,
  `id_tipo_veiculo` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL
) ;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id_veiculo`, `nome_veiculo`, `capacidade_veiculo`, `img_veiculo`, `ano_veiculo`, `marca_veiculo`, `id_tipo_veiculo`, `id_empresa`) VALUES
(14, 'Cometa Flecha Azul', 42, 'https://1.bp.blogspot.com/-U4hthK8bePM/Wt_GQDJq35I/AAAAAAAA_3U/3bpx3esLdsUYNbV2kNz-GPGTrYVxK8T_ACLcBGAs/s1600/cometa7455-6.jpg', 1998, 'CMA', 1, 1),
(15, 'Marcopolo G7 1200', 52, 'https://www.mercedes-benz.com.br/resources/media/releases/gallery/original/20140922_8baddc27b32f4df3bcd88e802e60aa0a_viacao-cometa-2.jpg', 2016, 'Marcopolo', 1, 1),
(16, 'Marcopolo G6  DD 1800', 52, 'https://s3.amazonaws.com/onibusbrasil2012/11/5/p/be09629675f8ea45c071c7b90504a058.jpg', 2006, 'Marcopolo', 1, 1),
(17, 'Marcopolo  1050 TOCO', 52, 'https://www.segs.com.br/media/k2/items/cache/8d244fa3cb0142f8ea5ab4f5f1b276b0_XL.jpg', 2016, 'Marcopolo', 1, 1),
(18, 'Neobus N10', 52, 'http://conteudo.imguol.com.br/c/noticias/2013/12/13/a-cometa-vai-operar-4-onibus-batizados-de-flecha-de-ouro-lxv-com-a-pintura-e-o-interior-inspirados-no-classico-flecha-azul-a-iniciativa-atende-a-pedidos-e-sugestoes-de-clientes-passageiros-e-1386964432517_615x300.jpg', 2018, 'Neobus', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nome_vendedor` varchar(20) DEFAULT NULL,
  `fone_vendedor` char(11) DEFAULT NULL,
  `email_vendedor` varchar(100) 
) ;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nome_vendedor`, `fone_vendedor`, `email_vendedor`) VALUES
(1, 'josecarlos', '98343255', 'josecarlos5634@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_veiculo` (`id_veiculo`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_servico` (`id_servico`),
  ADD KEY `id_pacote` (`id_pacote`) USING BTREE;

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Indexes for table `manuntencao`
--
ALTER TABLE `manuntencao`
  ADD PRIMARY KEY (`id_manuntencao`),
  ADD KEY `id_veiculo` (`id_veiculo`);

--
-- Indexes for table `pacote`
--
ALTER TABLE `pacote`
  ADD PRIMARY KEY (`id_pacote`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_contrato` (`id_contrato`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- Indexes for table `tipo_veicullo`
--
ALTER TABLE `tipo_veicullo`
  ADD PRIMARY KEY (`id_tipo_veiculo`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD KEY `id_tipo_veiculo` (`id_tipo_veiculo`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manuntencao`
--
ALTER TABLE `manuntencao`
  MODIFY `id_manuntencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_veicullo`
--
ALTER TABLE `tipo_veicullo`
  MODIFY `id_tipo_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `contrato_ibfk_4` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`),
  ADD CONSTRAINT `contrato_ibfk_5` FOREIGN KEY (`id_pacote`) REFERENCES `pacote` (`id_pacote`),
  ADD CONSTRAINT `contrato_ibfk_6` FOREIGN KEY (`id_pacote`) REFERENCES `pacote` (`id_pacote`);

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`);

--
-- Limitadores para a tabela `manuntencao`
--
ALTER TABLE `manuntencao`
  ADD CONSTRAINT `manuntencao_ibfk_1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`);

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id_contrato`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`id_tipo_veiculo`) REFERENCES `tipo_veicullo` (`id_tipo_veiculo`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);
COMMIT;
