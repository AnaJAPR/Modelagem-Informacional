SET search_path=oper_chaves_imoveis;

INSERT INTO UF (UF, UFEstadoNome, IDH) VALUES
('DF', 'Distrito Federal', 0.814),
('SP', 'São Paulo', 0.809),
('SC', 'Santa Catarina', 0.798),
('MG', 'Minas Gerais', 0.774),
('ES', 'Espírito Santo', 0.771),
('RS', 'Rio Grande do Sul', 0.769),
('PR', 'Paraná', 0.762),
('RJ', 'Rio de Janeiro', 0.742),
('MS', 'Mato Grosso do Sul', 0.737),
('GO', 'Goiás', 0.736),
('MT', 'Mato Grosso', 0.736),
('CE', 'Ceará', 0.734),
('TO', 'Tocantins', 0.731),
('RN', 'Rio Grande do Norte', 0.728),
('PE', 'Pernambuco', 0.719),
('AC', 'Acre', 0.710),
('SE', 'Sergipe', 0.702),
('AM', 'Amazonas', 0.700),
('RO', 'Rondônia', 0.700),
('RR', 'Roraima', 0.699),
('PB', 'Paraíba', 0.698),
('BA', 'Bahia', 0.691),
('PA', 'Pará', 0.690),
('PI', 'Piauí', 0.690),
('AP', 'Amapá', 0.688),
('AL', 'Alagoas', 0.684),
('MA', 'Maranhão', 0.676);

-- Insert into CEP
INSERT INTO CEP (TipoLogradouro, CEP, CEPMunicipio, NmLogradouro, UF) VALUES
('Rua', '12345-678', 'São Paulo', 'Paulista', 'SP'),
('Avenida', '23456-789', 'Rio de Janeiro', 'Atlântica', 'RJ'),
('Travessa', '34567-890', 'Belo Horizonte', 'Amazonas', 'MG'),
('Praça', '45678-901', 'Vitória', 'Mestre Álvaro', 'ES'),
('Alameda', '56789-012', 'Salvador', 'Oceânica', 'BA'),
('Estrada', '67890-123', 'Curitiba', 'Flores', 'PR'),
('Viela', '78901-234', 'Florianópolis', 'Lua Nova', 'SC'),
('Rodovia', '89012-345', 'Porto Alegre', 'Sol Poente', 'RS'),
('Largo', '90123-456', 'Goiânia', 'Goiás Central', 'GO'),
('Via', '01234-567', 'Recife', 'Recife Antigo', 'PB'),

('Rua', '12345-111', 'São Paulo', 'Oscar Freire', 'SP'),
('Avenida', '22222-222', 'Rio de Janeiro', 'Prado Júnior', 'RJ'),
('Travessa', '33333-333', 'Belo Horizonte', 'Gonçalves Dias', 'MG'),
('Praça', '10000-256', 'Vitória', 'Mestre Samuel', 'ES'),
('Alameda', '44444-444', 'Salvador', 'dos Rovoviários', 'BA'),
('Estrada', '55555-555', 'Curitiba', 'Santa', 'PR'),
('Viela', '66666-666', 'Florianópolis', 'Cavalcanti', 'SC'),
('Rodovia', '77777-777', 'Porto Alegre', 'Abrantes', 'RS'),
('Largo', '88888-888', 'Goiânia', 'dos Conflitos', 'GO'),
('Via', '99999-999', 'Recife', 'Campo da Pólvora', 'PB'),
--- ### NOVOS DADOS TESTE
('Rua', '13245-569', 'Palmas', 'Projetada', 'TO'),
('Avenida', '21222-523', 'Cuiabá', 'Brasil', 'MT'),
('Travessa', '33233-301', 'Campo Grande', 'Santos Dummond', 'MS'),
('Praça', '10700-278', 'Teresina', 'da Paz', 'PI'),
('Alameda', '44744-478', 'Rio Branco', 'dos Médicos', 'AC'),
('Estrada', '55855-859', 'Brasília', 'Vinte e dois', 'DF'),
('Avenida', '66166-678', 'Maceió', 'das Flores', 'AL'),
('Rodovia', '17777-789', 'Porto Velho', 'Anauê', 'RO'),
('Largo', '28888-879', 'Boa Vista', 'Ipê', 'RR'),
('Via', '99999-972', 'Belém', 'Bela Vista', 'PA'),

('Rua', '21345-560', 'Palmas', 'Buritirana', 'TO'),
('Avenida', '12122-523', 'Cuiabá', 'Taquaralto', 'MT'),
('Travessa', '23233-302', 'Campo Grande', 'Acne', 'MS'),
('Praça', '17000-279', 'Teresina', 'Matinha', 'PI'),
('Alameda', '44756-479', 'Rio Branco', 'Mafuá', 'AC'),
('Estrada', '55782-986', 'Brasília', 'Cabral', 'DF'),
('Avenida', '66178-678', 'Maceió', 'Álvaro Otacílio', 'AL'),
('Rodovia', '17789-789', 'Porto Velho', 'Fernandes Lima', 'RO'),
('Largo', '28879-870', 'Boa Vista', 'Doutor Antônio', 'RR'),
('Via', '99789-973', 'Belém', 'Rotary', 'PA'),

('Rua', '24675-503', 'Juazeiro do Norte', 'dos Canários', 'CE'),
('Viela', '14675-573', 'Natal', 'da Saudade', 'RN'),
('Travessa', '23958-307', 'Arcoverde', 'das Tulipas', 'PE'),
('Beco', '10975-278', 'Arauá', 'do Samba', 'SE'),
('Beco', '44596-409', 'Iranduba', 'da Alegria', 'AM'),
('Estrada', '54584-898', 'Oiapoque', 'do Silêncio', 'AP'),
('Alameda', '66594-690', 'Balsas', 'dos Jasmins', 'MA'),
('Travessa', '17579-539', 'Santa Maria do Suaçuí', 'da Esperança', 'MG'),
('Largo', '28657-891', 'Londrina', 'da Matriz', 'PR'),
('Rua', '94569-929', 'Chapecó', 'dos Girassóis', 'SC'),

('Rua', '26575-859', 'Juazeiro do Norte', 'das Borboletas', 'CE'),
('Alameda', '15652-523', 'Natal', 'das Hortênsias', 'RN'),
('Travessa', '23493-302', 'Arcoverde', 'das Acácias', 'PE'),
('Praça', '15680-290', 'Arauá', 'da Harmonia', 'SE'),
('Alameda', '45769-490', 'Iranduba', 'dos Flamboyants', 'AM'),
('Estrada', '54752-982', 'Oiapoque', 'das Pedras', 'AP'),
('Rua', '66475-772', 'Balsas', 'dos Bem-te-vis', 'MA'),
('Travessa', '17775-980', 'Santa Maria do Suaçuí', 'das Estrelas', 'MG'),
('Largo', '24675-787', 'Londrina', 'do Sabiá', 'PR'),
('Alameda', '93759-894', 'Chapecó', 'dos Jacarandás', 'SC');

-- Insert into Endereco
INSERT INTO Endereco (EndID, EndNumero, EndComplemento, EndBairro, CEP, RegiaoID) VALUES
-- Endereços para clientes vendedores
('EN0001', 101, 'Apto 201', 'Centro', '12345-678', NULL),
('EN0002', 202, 'Bloco B', 'Jardim Oceânico', '23456-789', NULL),
('EN0003', 303, 'Casa', 'Savassi', '34567-890', NULL),
('EN0004', 404, NULL, 'Praia do Canto', '45678-901', NULL),
('EN0005', 505, 'Apto 505', 'Barra', '56789-012', NULL),
('EN0006', 606, 'Apto 601', 'Batel', '67890-123', NULL),
('EN0007', 707, NULL, 'Beira Mar', '78901-234', NULL),
('EN0008', 808, 'Casa 20', 'Moinhos de Vento', '89012-345', NULL),
('EN0009', 909, 'Apto 909', 'Setor Bueno', '90123-456', NULL),
('EN0010', 1010, 'Casa 5', 'Boa Viagem', '01234-567', NULL),

('EN0011', 111, 'Apto 11', 'Copacabana', '12345-111', NULL),
('EN0012', 212, 'Casa 22', 'Ipanema', '22222-222', NULL),
('EN0013', 313, 'Bloco C', 'Leblon', '33333-333', NULL),
('EN0014', 414, NULL, 'Botafogo', '44444-444', NULL),
('EN0015', 515, 'Apto 55', 'Gávea', '55555-555', NULL),
('EN0016', 616, 'Casa 66', 'Tijuca', '66666-666', NULL),
('EN0017', 717, 'Apto 77', 'Laranjeiras', '77777-777', NULL),
('EN0018', 818, NULL, 'Santa Teresa', '88888-888', NULL),
('EN0019', 919, 'Casa 99', 'Flamengo', '99999-999', NULL),
('EN0020', 1110, 'Apto 110', 'Barra da Tijuca', '10000-256', NULL),

-- Endereços para clientes compradores
('EN0021', 121, 'Apto 203', 'Cabral', '13245-569', NULL),
('EN0022', 222, 'Casa 32', 'Pinheiros', '21222-523', NULL),
('EN0023', 323, 'Bloco D', 'Marsilac', '33233-301', NULL),
('EN0024', 424, NULL, 'Paraíso', '10700-278', NULL),
('EN0025', 525, 'Apto 57', 'Vila Maria', '44744-478', NULL),
('EN0026', 626, 'Casa 69', 'Jardim São Luís', '55855-859', NULL),
('EN0027', 727, 'Apto 78', 'Moema', '66166-678', NULL),
('EN0028', 828, NULL, 'Anchieta', '17777-789', NULL),
('EN0029', 929, 'Casa 901', 'Alvorada', '28888-879', NULL),
('EN0030', 1210, 'Apto 121', 'Água Branca', '99999-972', NULL),

('EN0031', 131, 'Apto 225', 'Goiabeiras', '21345-560', NULL),
('EN0032', 232, 'Casa 39', 'Bonfim', '12122-523', NULL),
('EN0033', 333, 'Bloco G', 'Castelo Branco', '23233-302', NULL),
('EN0034', 434, NULL, 'Castanheira', '17000-279', NULL),
('EN0035', 535, 'Apto 97', 'Grajaú', '44756-479', NULL),
('EN0036', 636, 'Casa 89', 'Itararé', '55782-986', NULL),
('EN0037', 737, 'Apto 12', 'Cristo Rei', '66178-678', NULL),
('EN0038', 838, NULL, 'Coqueiro', '17789-789', NULL),
('EN0039', 939, 'Casa 31', 'Cidade Nova', '28879-870', NULL),
('EN0040', 1310, 'Apto 19', 'Cidade Jardim', '99789-973', NULL),

-- Endereços para funcionários
('EN0041', 141, 'Apto 263', 'Cabral', '24675-503', NULL),
('EN0042', 242, 'Casa 90', 'Pinheiros', '14675-573', NULL),
('EN0043', 343, 'Bloco E', 'Marsilac', '23958-307', NULL),
('EN0044', 444, NULL, 'Paraíso', '10975-278', NULL),
('EN0045', 545, NULL, 'Vila Maria', '44596-409', NULL),
('EN0046', 646, 'Casa 78', 'Jardim São Luís', '54584-898', NULL),
('EN0047', 747, 'Apto 101', 'Moema', '66594-690', NULL),
('EN0048', 848, NULL, 'Anchieta', '17579-539', NULL),
('EN0049', 949, 'Casa 90', 'Alvorada', '28657-891', NULL),
('EN0050', 1410, 'Apto 10', 'Água Branca', '94569-929', NULL),

-- Endereços para Imóveis
('EN0051', 151, 'Apto 20', 'Cabral', '26575-859', NULL),
('EN0052', 252, 'Casa 1', 'Pinheiros', '15652-523', NULL),
('EN0053', 353, 'Bloco H', 'Marsilac', '23493-302', NULL),
('EN0054', 454, NULL, 'Paraíso', '15680-290', NULL),
('EN0055', 555, 'Apto 23', 'Vila Maria', '45769-490', NULL),
('EN0056', 656, NULL, 'Jardim São Luís', '54752-982', NULL),
('EN0057', 757, 'Apto 17', 'Moema', '66475-772', NULL),
('EN0058', 858, NULL, 'Anchieta', '17775-980', NULL),
('EN0059', 959, 'Casa 26', 'Alvorada', '24675-787', NULL),
('EN0060', 1510, NULL, 'Água Branca', '93759-894', NULL),

('EN0061', 161, 'Apto 76', 'Goiabeiras', '12345-678', NULL),
('EN0062', 262, 'Casa 23', 'Bonfim', '23456-789', NULL),
('EN0063', 363, 'Bloco K', 'Castelo Branco', '34567-890', NULL),
('EN0064', 464, NULL, 'Castanheira', '45678-901', NULL),
('EN0065', 565, NULL, 'Grajaú', '56789-012', NULL),
('EN0066', 666, NULL, 'Itararé', '67890-123', NULL),
('EN0067', 767, 'Apto 15', 'Cristo Rei', '78901-234', NULL),
('EN0068', 868, NULL, 'Coqueiro', '89012-345', NULL),
('EN0069', 969, 'Casa 3', 'Cidade Nova', '90123-456', NULL),
('EN0070', 1610, 'Bloco M', 'Cidade Jardim', '01234-567', NULL),

('EN0071', 171, 'Apto 20', 'Cabral', '12345-111', NULL),
('EN0072', 272, 'Casa 1', 'Pinheiros', '22222-222', NULL),
('EN0073', 373, 'Bloco H', 'Marsilac', '33333-333', NULL),
('EN0074', 474, NULL, 'Paraíso', '44444-444', NULL),
('EN0075', 575, 'Apto 23', 'Vila Maria', '55555-555', NULL),
('EN0076', 676, NULL, 'Jardim São Luís', '66666-666', NULL),
('EN0077', 777, 'Apto 17', 'Moema', '77777-777', NULL),
('EN0078', 878, NULL, 'Anchieta', '88888-888', NULL),
('EN0079', 979, 'Casa 26', 'Alvorada', '99999-999', NULL),
('EN0080', 1710, NULL, 'Água Branca', '10000-256', NULL),

('EN0081', 181, 'Apto 76', 'Goiabeiras', '13245-569', NULL),
('EN0082', 282, 'Casa 23', 'Bonfim', '21222-523', NULL),
('EN0083', 383, 'Bloco K', 'Castelo Branco', '33233-301', NULL),
('EN0084', 484, NULL, 'Castanheira', '10700-278', NULL),
('EN0085', 585, NULL, 'Grajaú', '44744-478', NULL),
('EN0086', 686, NULL, 'Itararé', '55855-859', NULL),
('EN0087', 787, 'Apto 15', 'Cristo Rei', '66166-678', NULL),
('EN0088', 888, NULL, 'Coqueiro', '17777-789', NULL),
('EN0089', 989, 'Casa 3', 'Cidade Nova', '28888-879', NULL),
('EN0090', 1810, 'Bloco M', 'Cidade Jardim', '99999-972', NULL),

('EN0091', 191, 'Apto 20', 'Cabral', '21345-560', NULL),
('EN0092', 292, 'Casa 1', 'Pinheiros', '12122-523', NULL),
('EN0093', 393, 'Bloco H', 'Marsilac', '23233-302', NULL),
('EN0094', 494, NULL, 'Paraíso', '17000-279', NULL),
('EN0095', 595, 'Apto 23', 'Vila Maria', '44756-479', NULL),
('EN0096', 696, NULL, 'Jardim São Luís', '55782-986', NULL),
('EN0097', 797, 'Apto 17', 'Moema', '66178-678', NULL),
('EN0098', 898, NULL, 'Anchieta', '17789-789', NULL),
('EN0099', 999, 'Casa 26', 'Alvorada', '28879-870', NULL),
('EN0100', 1910, NULL, 'Água Branca', '99789-973', NULL),

('EN0101', 1101, 'Apto 76', 'Goiabeiras', '24675-503', NULL),
('EN0102', 2102, 'Casa 23', 'Bonfim', '14675-573', NULL),
('EN0103', 3103, 'Bloco K', 'Castelo Branco', '23958-307', NULL),
('EN0104', 4104, NULL, 'Castanheira', '10975-278', NULL),
('EN0105', 5105, NULL, 'Grajaú', '44596-409', NULL),
('EN0106', 6106, NULL, 'Itararé', '54584-898', NULL),
('EN0107', 7107, 'Apto 15', 'Cristo Rei', '66594-690', NULL),
('EN0108', 8108, NULL, 'Coqueiro', '17579-539', NULL),
('EN0109', 9109, 'Casa 3', 'Cidade Nova', '28657-891', NULL),
('EN0110', 1100, 'Bloco M', 'Cidade Jardim', '94569-929', NULL);

-- Insert into Funcionario
INSERT INTO Funcionario (FuncPrimNome, FuncUltimoNome, FuncCPF, FuncDtNasc, FuncCargo, FuncSalario, EndID) VALUES
('João', 'Silva', '12345678901', '1990-01-01', 'Gerente', 5000.00, 'EN0041'),
('Maria', 'Fernandes', '23456789012', '1992-02-02', 'Analista', 4000.00, 'EN0042'),
('Carlos', 'Machado', '34567890123', '1988-03-03', 'Vendedor', 3500.00, 'EN0043'),
('Ana', 'Barbosa', '45678901234', '1991-04-04', 'Recepcionista', 3000.00, 'EN0044'),
('Lucas', 'Costa', '56789012345', '1985-05-05', 'Diretor', 7000.00, 'EN0045'),
('Patrícia', 'Almeida', '67890123456', '1987-06-06', 'Consultor', 4500.00, 'EN0046'),
('Felipe', 'Teixeira', '78901234567', '1984-07-07', 'Assistente', 2800.00, 'EN0047'),
('Sandra', 'Gomes', '89012345678', '1989-08-08', 'Coordenador', 4800.00, 'EN0048'),
('Rafael', 'Pereira', '90123456789', '1993-09-09', 'Supervisor', 5200.00, 'EN0049'),
('Teresa', 'Nunes', '12345678910', '1994-10-10', 'Operador', 3200.00, 'EN0050');

-- Insert into Corretor
INSERT INTO Corretor (CorretorRegistro, OrcamentoMes, FuncCPF) VALUES
('CR0001', 10000.00, '12345678901'),
('CR0002', 20000.00, '23456789012'),
('CR0003', 15000.00, '34567890123'),
('CR0004', 18000.00, '45678901234'),
('CR0005', 22000.00, '56789012345'),
('CR0006', 16000.00, '67890123456'),
('CR0007', 13000.00, '78901234567'),
('CR0008', 14000.00, '89012345678'),
('CR0009', 19000.00, '90123456789'),
('CR0010', 17000.00, '12345678910');

-- Insert into Regiao
INSERT INTO Regiao (RegiaoID, RegiaoNome, FuncCPF) VALUES
('RE0001', 'Centro SP', '12345678901'),
('RE0002', 'Zona Sul RJ', '23456789012'),
('RE0003', 'Centro BH', '34567890123'),
('RE0004', 'Leste de Vitória', '45678901234'),
('RE0005', 'Oeste de Salvador', '56789012345'),
('RE0006', 'Sul de Curitiba', '67890123456'),
('RE0007', 'Norte de Florianópolis', '78901234567'),
('RE0008', 'Centro de Porto Alegre', '89012345678'),
('RE0009', 'Zona Norte GO', '90123456789'),
('RE0010', 'Leste de Recife', '12345678910'),

('RE0011', 'Centro de Palmas', '12345678901'),
('RE0012', 'Norte de Cuiabá', '23456789012'),
('RE0013', 'Sul de Campo Grande', '34567890123'),
('RE0014', 'Leste de Teresina', '45678901234'),
('RE0015', 'Oeste de Rio Branco', '56789012345'),
('RE0016', 'Sul de Brasília', '67890123456'),
('RE0017', 'Norte de Maceió', '78901234567'),
('RE0018', 'Centro de Porto Velho', '89012345678'),
('RE0019', 'Zona Norte de Boa Vista', '90123456789'),
('RE0020', 'Leste de Belém', '12345678910'),

('RE0021', 'Centro de Juazeiro do Norte', '12345678901'),
('RE0022', 'Sul de Natal', '23456789012'),
('RE0023', 'Norte de Arcoverde', '34567890123'),
('RE0024', 'Sul de Arauá', '45678901234'),
('RE0025', 'Oeste de Iranduba', '56789012345'),
('RE0026', 'Leste de Oiapoque', '67890123456'),
('RE0027', 'Norte de Balsas', '78901234567'),
('RE0028', 'Centro de Santa Maria do Suaçuí', '89012345678'),
('RE0029', 'Zona Norte de Londrina', '90123456789'),
('RE0030', 'Centro de Chapecó', '12345678910');


-- Insert into Cliente
INSERT INTO Cliente (ClientePrimNome, CliUltimoNome, ClienteCPF, ClienteDtNasc, ClienteTelefone, EndID) VALUES
--- ### CLIENTES VENDEDORES
('Roberto', 'Campos', '10293847566', '1985-11-15', '11987654321', 'EN0001'),
('Luciana', 'Prado', '20938475647', '1990-06-25', '21987654321', 'EN0002'),
('Márcio', 'Souza', '30938475648', '1975-02-10', '31987654321', 'EN0003'),
('Fernanda', 'Costa', '40938475649', '1983-08-30', '27987654321', 'EN0004'),
('Ricardo', 'Oliveira', '50938475640', '1969-12-01', '71987654321', 'EN0005'),
('Juliana', 'Martins', '60938475641', '1995-03-20', '41987654321', 'EN0006'),
('Henrique', 'Ferreira', '70938475642', '1978-09-15', '48987654321', 'EN0007'),
('Larissa', 'Garcia', '80938475643', '1992-05-05', '51987654321', 'EN0008'),
('Paulo', 'Nogueira', '90938475644', '1965-07-20', '62987654321', 'EN0009'),
('Aline', 'Barros', '10093847564', '1973-01-30', '81987654321', 'EN0010'),

-- ### CLIENTES COMPRADORES
('Carlos', 'Silva', '11093847561', '1988-01-10', '12987654321', 'EN0021'),
('Ana', 'Pereira', '12093847562', '1991-04-15', '22987654321', 'EN0022'),
('João', 'Santos', '13093847563', '1982-07-22', '32987654321', 'EN0023'),
('Mariana', 'Lima', '14093847564', '1994-12-05', '42987654321', 'EN0024'),
('Pedro', 'Melo', '15093847565', '1976-02-19', '52987654321', 'EN0025'),
('Camila', 'Alves', '16093847566', '1989-06-14', '62987654321', 'EN0026'),
('Eduardo', 'Ribeiro', '17093847567', '1981-11-25', '72987654321', 'EN0027'),
('Patricia', 'Souza', '18093847568', '1993-08-07', '82987654321', 'EN0028'),
('Gustavo', 'Costa', '19093847569', '1978-10-13', '92987654321', 'EN0029'),
('Bianca', 'Fernandes', '20093847560', '1986-03-18', '02987654321', 'EN0030'),

('Luciano', 'Campos', '11293847556', '1986-11-25', '31987654322', 'EN0031'),
('Márcia', 'Prado', '20938475764', '1991-07-25', '21987654123', 'EN0032'),
('Roberta', 'Souza', '30938475864', '1976-07-10', '31987654123', 'EN0033'),
('Fernando', 'Oliveira', '40938475964', '1983-09-30', '27987654123', 'EN0034'),
('Renê', 'Costa', '50938475064', '1969-10-01', '71987654123', 'EN0035'),
('Juliano', 'Ferreira', '60938475146', '1995-04-20', '41987654123', 'EN0036'),
('Herica', 'Martins', '70938475264', '1978-10-15', '48987654123', 'EN0037'),
('Lorenzo', 'Garcia', '80938475364', '1992-06-05', '51987654123', 'EN0038'),
('Paula', 'Barros', '90938475446', '1965-08-20', '62987654123', 'EN0039'),
('Alice', 'Nogueira', '10093847456', '1973-02-27', '81987654123', 'EN0040');


-- Insert into Imovel
INSERT INTO Imovel (ImovelID, ImovelTipo, ImovelQtdQuartos, ImovelQtdBanheiros, ImovelQtdGaragem, ImovelM2, ImovelValor, ImovelVazio, RegiaoID, EndID) VALUES
('IM0001', 'Apartamento', 3, 2, 1, 90, 500000.00, TRUE, 'RE0021', 'EN0051'),
('IM0002', 'Casa', 4, 3, 2, 200, 1200000.00, FALSE, 'RE0022', 'EN0052'),
('IM0003', 'Cobertura', 2, 2, 1, 100, 750000.00, FALSE, 'RE0023', 'EN0053'),
('IM0004', 'Apartamento', 1, 1, 1, 50, 300000.00, TRUE, 'RE0024', 'EN0054'),
('IM0005', 'Casa', 3, 4, 2, 180, 950000.00, TRUE, 'RE0025', 'EN0055'),
('IM0006', 'Apartamento', 2, 1, 1, 70, 350000.00, FALSE, 'RE0026', 'EN0056'),
('IM0007', 'Cobertura', 3, 3, 2, 150, 850000.00, TRUE, 'RE0027', 'EN0057'),
('IM0008', 'Casa', 5, 4, 3, 250, 1500000.00, FALSE, 'RE0028', 'EN0058'),
('IM0009', 'Apartamento', 1, 1, 1, 45, 250000.00, TRUE, 'RE0029', 'EN0059'),
('IM0010', 'Casa', 4, 3, 2, 190, 1100000.00, TRUE, 'RE0030', 'EN0060'),
--Novos imóveis (os proprietários são os mesmos de anteriormente, uma mesma pessoa vendendo mais de um imóvel)

('IM0011', 'Apartamento', 2, 3, 1, 90, 500000.00, TRUE, 'RE0001', 'EN0061'),
('IM0012', 'Casa', 4, 2, 2, 200, 1200000.00, FALSE, 'RE0002', 'EN0062'),
('IM0013', 'Cobertura', 3, 2, 1, 100, 750000.00, FALSE, 'RE0003', 'EN0063'),
('IM0014', 'Apartamento', 2, 1, 1, 50, 300000.00, TRUE, 'RE0004', 'EN0064'),
('IM0015', 'Casa', 3, 1, 2, 180, 950000.00, TRUE, 'RE0015', 'EN0005'),
('IM0016', 'Apartamento', 1, 1, 1, 70, 350000.00, FALSE, 'RE0006', 'EN0066'),
('IM0017', 'Cobertura', 2, 3, 2, 150, 850000.00, TRUE, 'RE0007', 'EN0067'),
('IM0018', 'Casa', 5, 3, 3, 250, 1500000.00, FALSE, 'RE0008', 'EN0068'),
('IM0019', 'Apartamento', 3, 1, 1, 45, 250000.00, TRUE, 'RE0009', 'EN0069'),
('IM0020', 'Casa', 4, 2, 2, 190, 1100000.00, TRUE, 'RE0010', 'EN0070');

-- Insert into Anuncio
INSERT INTO Anuncio (AnuncioID, AnuncioMidia, AnuncioPreco, AnuncioData, ImovelID, FuncCPF) VALUES
('AN0001', 'Jornal', 1500.00, '2023-01-01', 'IM0001', '12345678901'),
('AN0002', 'Revista', 2000.00, '2023-01-15', 'IM0002', '23456789012'),
('AN0003', 'Internet', 1200.00, '2023-02-01', 'IM0003', '34567890123'),
('AN0004', 'TV', 5000.00, '2023-02-15', 'IM0004', '45678901234'),
('AN0005', 'Rádio', 800.00, '2023-03-01', 'IM0005', '56789012345'),
('AN0006', 'Outdoor', 3000.00, '2023-03-15', 'IM0006', '67890123456'),
('AN0007', 'Folheto', 600.00, '2023-04-01', 'IM0007', '78901234567'),
('AN0008', 'Eventos', 2500.00, '2023-04-15', 'IM0008', '89012345678'),
('AN0009', 'Jornal', 1500.00, '2023-05-01', 'IM0009', '90123456789'),
('AN0010', 'Internet', 1200.00, '2023-05-15', 'IM0010', '12345678910'),
--Novos Dados 
('AN0011', 'Jornal', 1500.00, '2023-02-01', 'IM0011', '12345678901'),
('AN0012', 'Revista', 2000.00, '2023-02-15', 'IM0012', '23456789012'),
('AN0013', 'Internet', 1200.00, '2023-03-01', 'IM0013', '34567890123'),
('AN0014', 'TV', 5000.00, '2023-03-15', 'IM0014', '45678901234'),
('AN0015', 'Rádio', 800.00, '2023-04-01', 'IM0015', '56789012345'),
('AN0016', 'Outdoor', 3000.00, '2023-04-15', 'IM0016', '67890123456'),
('AN0017', 'Folheto', 600.00, '2023-05-01', 'IM0017', '78901234567'),
('AN0018', 'Eventos', 2500.00, '2023-05-15', 'IM0018', '89012345678'),
('AN0019', 'Jornal', 1500.00, '2023-06-01', 'IM0019', '90123456789'),
('AN0020', 'Internet', 1200.00, '2023-06-15', 'IM0020', '12345678910');

-- Insert into Contato
INSERT INTO Contato (ContatoID, ContatoMeio, ContatoNatureza, ContatoNome, ContatoTelefone, DtContato, FuncCPF, ClienteCPF, ImovelID) VALUES
('CT0001', 'Telefone', 'Informação', 'Roberto Campos', '11987654321', '2023-01-01', '12345678901', '10293847566', 'IM0001'),
('CT0002', 'Email', 'Interesse', 'Luciana Prado', '21987654321', '2023-01-15', '23456789012', '20938475647', 'IM0002'),
('CT0003', 'Visita', 'Compra', 'Márcio Souza', '31987654321', '2023-02-01', '34567890123', '30938475648', 'IM0003'),
('CT0004', 'Telefone', 'Informação', 'Fernanda Costa', '27987654321', '2023-02-15', '45678901234', '40938475649', 'IM0004'),
('CT0005', 'Email', 'Interesse', 'Ricardo Oliveira', '71987654321', '2023-03-01', '56789012345', '50938475640', 'IM0005'),
('CT0006', 'Visita', 'Compra', 'Juliana Martins', '41987654321', '2023-03-15', '67890123456', '60938475641', 'IM0006'),
('CT0007', 'Telefone', 'Informação', 'Henrique Ferreira', '48987654321', '2023-04-01', '78901234567', '70938475642', 'IM0007'),
('CT0008', 'Email', 'Interesse', 'Larissa Garcia', '51987654321', '2023-04-15', '89012345678', '80938475643', 'IM0008'),
('CT0009', 'Visita', 'Compra', 'Paulo Nogueira', '62987654321', '2023-05-01', '90123456789', '90938475644', 'IM0009'),
('CT0010', 'Telefone', 'Informação', 'Aline Barros', '81987654321', '2023-05-15', '12345678910', '10093847564', 'IM0010');

-- Insert into TransVenda
INSERT INTO TransVenda (TransVendaID, TransVendaValor, TransVendaData, TransComissao, FuncCPF) VALUES
('TV0001', 8790000.00, '2023-06-01', 5000.00, '12345678901'),
('TV0002', 1250000.00, '2023-06-15', 10000.00, '23456789012'),
('TV0003', 7950100.00, '2023-07-01', 7500.00, '34567890123'),
('TV0004', 7500000.00, '2023-07-15', 3000.00, '45678901234'),
('TV0005', 1000000.00, '2023-08-01', 9000.00, '56789012345'),
('TV0006', 9000000.00, '2023-08-15', 3500.00, '67890123456'),
('TV0007', 8560000.00, '2023-09-01', 8000.00, '78901234567'),
('TV0008', 8025300.00, '2023-09-15', 15000.00, '89012345678'),
('TV0009', 300000.00, '2023-10-01', 2500.00, '90123456789'),
('TV0010', 8325100.00, '2023-10-15', 11000.00, '12345678910'),
--Novos Dados
('TV0011', 8978000.00, '2023-08-01', 5000.00, '12345678901'),
('TV0012', 1250000.00, '2023-08-15', 10000.00, '23456789012'),
('TV0013', 7892560.00, '2023-09-01', 7500.00, '34567890123'),
('TV0014', 7468900.00, '2023-09-15', 3000.00, '45678901234'),
('TV0015', 1000000.00, '2023-10-01', 9000.00, '56789012345'),
('TV0016', 8990000.00, '2023-10-15', 3500.00, '67890123456'),
('TV0017', 8469800.00, '2023-11-01', 8000.00, '78901234567'),
('TV0018', 8000580.00, '2023-11-15', 15000.00, '89012345678'),
('TV0019', 300000.00, '2023-12-01', 2500.00, '90123456789'),
('TV0020', 8312100.00, '2023-12-15', 11000.00, '12345678910');

-- Insert into CliPropriedade
INSERT INTO CliPropriedade (ImovelID, ClienteCPF) VALUES
('IM0001', '10293847566'),
('IM0002', '20938475647'),
('IM0003', '30938475648'),
('IM0004', '40938475649'),
('IM0005', '50938475640'),
('IM0006', '60938475641'),
('IM0007', '70938475642'),
('IM0008', '80938475643'),
('IM0009', '90938475644'),
('IM0010', '10093847564'),
--Novos Dados
('IM0011', '10293847566'),
('IM0012', '20938475647'),
('IM0013', '30938475648'),
('IM0014', '40938475649'),
('IM0015', '50938475640'),
('IM0016', '60938475641'),
('IM0017', '70938475642'),
('IM0018', '80938475643'),
('IM0019', '90938475644'),
('IM0020', '10093847564');

-- Insert into ImovelTransacao
INSERT INTO ImovelTransacao (ImovelID, TransVendaID) VALUES
('IM0001', 'TV0001'),
('IM0002', 'TV0002'),
('IM0003', 'TV0003'),
('IM0004', 'TV0004'),
('IM0005', 'TV0005'),
('IM0006', 'TV0006'),
('IM0007', 'TV0007'),
('IM0008', 'TV0008'),
('IM0009', 'TV0009'),
('IM0010', 'TV0010'),
--Novos Dados
('IM0011', 'TV0011'),
('IM0012', 'TV0012'),
('IM0013', 'TV0013'),
('IM0014', 'TV0014'),
('IM0015', 'TV0015'),
('IM0016', 'TV0016'),
('IM0017', 'TV0017'),
('IM0018', 'TV0018'),
('IM0019', 'TV0019'),
('IM0020', 'TV0020');

-- Insert into ClienteCompra
INSERT INTO ClienteCompra (TransVendaID, ClienteCPF) VALUES
('TV0001', '11093847561'),
('TV0002', '12093847562'),
('TV0003', '13093847563'),
('TV0004', '14093847564'),
('TV0005', '50938475064'),
('TV0006', '16093847566'),
('TV0007', '17093847567'),
('TV0008', '18093847568'),
('TV0009', '19093847569'),
('TV0010', '20093847560'),
-- ### NOVOS DADOS
('TV0011', '11293847556'),
('TV0012', '20938475764'),
('TV0013', '30938475864'),
('TV0014', '40938475964'),
('TV0015', '15093847565'),
('TV0016', '60938475146'),
('TV0017', '70938475264'),
('TV0018', '80938475364'),
('TV0019', '90938475446'),
('TV0020', '10093847456');

-- Insert into ClienteVende
INSERT INTO ClienteVende (TransVendaID, ClienteCPF) VALUES
('TV0001', '10293847566'),
('TV0002', '20938475647'),
('TV0003', '30938475648'),
('TV0004', '40938475649'),
('TV0005', '50938475640'),
('TV0006', '60938475641'),
('TV0007', '70938475642'),
('TV0008', '80938475643'),
('TV0009', '90938475644'),
('TV0010', '10093847564');

UPDATE Endereco SET RegiaoID = 'RE0001' WHERE EndID = 'EN0001';
UPDATE Endereco SET RegiaoID = 'RE0002' WHERE EndID = 'EN0002';
UPDATE Endereco SET RegiaoID = 'RE0003' WHERE EndID = 'EN0003';
UPDATE Endereco SET RegiaoID = 'RE0004' WHERE EndID = 'EN0004';
UPDATE Endereco SET RegiaoID = 'RE0005' WHERE EndID = 'EN0005';
UPDATE Endereco SET RegiaoID = 'RE0006' WHERE EndID = 'EN0006';
UPDATE Endereco SET RegiaoID = 'RE0007' WHERE EndID = 'EN0007';
UPDATE Endereco SET RegiaoID = 'RE0008' WHERE EndID = 'EN0008';
UPDATE Endereco SET RegiaoID = 'RE0009' WHERE EndID = 'EN0009';
UPDATE Endereco SET RegiaoID = 'RE0010' WHERE EndID = 'EN0010';

UPDATE Endereco SET RegiaoID = 'RE0001' WHERE EndID = 'EN0011';
UPDATE Endereco SET RegiaoID = 'RE0002' WHERE EndID = 'EN0012';
UPDATE Endereco SET RegiaoID = 'RE0003' WHERE EndID = 'EN0013';
UPDATE Endereco SET RegiaoID = 'RE0004' WHERE EndID = 'EN0014';
UPDATE Endereco SET RegiaoID = 'RE0005' WHERE EndID = 'EN0015';
UPDATE Endereco SET RegiaoID = 'RE0006' WHERE EndID = 'EN0016';
UPDATE Endereco SET RegiaoID = 'RE0007' WHERE EndID = 'EN0017';
UPDATE Endereco SET RegiaoID = 'RE0008' WHERE EndID = 'EN0018';
UPDATE Endereco SET RegiaoID = 'RE0009' WHERE EndID = 'EN0019';
UPDATE Endereco SET RegiaoID = 'RE0010' WHERE EndID = 'EN0020';

UPDATE Endereco SET RegiaoID = 'RE0011' WHERE EndID = 'EN0021';
UPDATE Endereco SET RegiaoID = 'RE0012' WHERE EndID = 'EN0022';
UPDATE Endereco SET RegiaoID = 'RE0013' WHERE EndID = 'EN0023';
UPDATE Endereco SET RegiaoID = 'RE0014' WHERE EndID = 'EN0024';
UPDATE Endereco SET RegiaoID = 'RE0015' WHERE EndID = 'EN0025';
UPDATE Endereco SET RegiaoID = 'RE0016' WHERE EndID = 'EN0026';
UPDATE Endereco SET RegiaoID = 'RE0017' WHERE EndID = 'EN0027';
UPDATE Endereco SET RegiaoID = 'RE0018' WHERE EndID = 'EN0028';
UPDATE Endereco SET RegiaoID = 'RE0019' WHERE EndID = 'EN0029';
UPDATE Endereco SET RegiaoID = 'RE0020' WHERE EndID = 'EN0030';

UPDATE Endereco SET RegiaoID = 'RE0011' WHERE EndID = 'EN0031';
UPDATE Endereco SET RegiaoID = 'RE0012' WHERE EndID = 'EN0032';
UPDATE Endereco SET RegiaoID = 'RE0013' WHERE EndID = 'EN0033';
UPDATE Endereco SET RegiaoID = 'RE0014' WHERE EndID = 'EN0034';
UPDATE Endereco SET RegiaoID = 'RE0015' WHERE EndID = 'EN0035';
UPDATE Endereco SET RegiaoID = 'RE0016' WHERE EndID = 'EN0036';
UPDATE Endereco SET RegiaoID = 'RE0017' WHERE EndID = 'EN0037';
UPDATE Endereco SET RegiaoID = 'RE0018' WHERE EndID = 'EN0038';
UPDATE Endereco SET RegiaoID = 'RE0019' WHERE EndID = 'EN0039';
UPDATE Endereco SET RegiaoID = 'RE0020' WHERE EndID = 'EN0040';

UPDATE Endereco SET RegiaoID = 'RE0021' WHERE EndID = 'EN0041';
UPDATE Endereco SET RegiaoID = 'RE0022' WHERE EndID = 'EN0042';
UPDATE Endereco SET RegiaoID = 'RE0023' WHERE EndID = 'EN0043';
UPDATE Endereco SET RegiaoID = 'RE0024' WHERE EndID = 'EN0044';
UPDATE Endereco SET RegiaoID = 'RE0025' WHERE EndID = 'EN0045';
UPDATE Endereco SET RegiaoID = 'RE0026' WHERE EndID = 'EN0046';
UPDATE Endereco SET RegiaoID = 'RE0027' WHERE EndID = 'EN0047';
UPDATE Endereco SET RegiaoID = 'RE0028' WHERE EndID = 'EN0048';
UPDATE Endereco SET RegiaoID = 'RE0029' WHERE EndID = 'EN0049';
UPDATE Endereco SET RegiaoID = 'RE0030' WHERE EndID = 'EN0050';

UPDATE Endereco SET RegiaoID = 'RE0021' WHERE EndID = 'EN0051';
UPDATE Endereco SET RegiaoID = 'RE0022' WHERE EndID = 'EN0052';
UPDATE Endereco SET RegiaoID = 'RE0023' WHERE EndID = 'EN0053';
UPDATE Endereco SET RegiaoID = 'RE0024' WHERE EndID = 'EN0054';
UPDATE Endereco SET RegiaoID = 'RE0025' WHERE EndID = 'EN0055';
UPDATE Endereco SET RegiaoID = 'RE0026' WHERE EndID = 'EN0056';
UPDATE Endereco SET RegiaoID = 'RE0027' WHERE EndID = 'EN0057';
UPDATE Endereco SET RegiaoID = 'RE0028' WHERE EndID = 'EN0058';
UPDATE Endereco SET RegiaoID = 'RE0029' WHERE EndID = 'EN0059';
UPDATE Endereco SET RegiaoID = 'RE0030' WHERE EndID = 'EN0060';

UPDATE Endereco SET RegiaoID = 'RE0001' WHERE EndID = 'EN0061';
UPDATE Endereco SET RegiaoID = 'RE0002' WHERE EndID = 'EN0062';
UPDATE Endereco SET RegiaoID = 'RE0003' WHERE EndID = 'EN0063';
UPDATE Endereco SET RegiaoID = 'RE0004' WHERE EndID = 'EN0064';
UPDATE Endereco SET RegiaoID = 'RE0005' WHERE EndID = 'EN0065';
UPDATE Endereco SET RegiaoID = 'RE0006' WHERE EndID = 'EN0066';
UPDATE Endereco SET RegiaoID = 'RE0007' WHERE EndID = 'EN0067';
UPDATE Endereco SET RegiaoID = 'RE0008' WHERE EndID = 'EN0068';
UPDATE Endereco SET RegiaoID = 'RE0009' WHERE EndID = 'EN0069';
UPDATE Endereco SET RegiaoID = 'RE0010' WHERE EndID = 'EN0070';

UPDATE Endereco SET RegiaoID = 'RE0001' WHERE EndID = 'EN0071';
UPDATE Endereco SET RegiaoID = 'RE0002' WHERE EndID = 'EN0072';
UPDATE Endereco SET RegiaoID = 'RE0003' WHERE EndID = 'EN0073';
UPDATE Endereco SET RegiaoID = 'RE0004' WHERE EndID = 'EN0074';
UPDATE Endereco SET RegiaoID = 'RE0005' WHERE EndID = 'EN0075';
UPDATE Endereco SET RegiaoID = 'RE0006' WHERE EndID = 'EN0076';
UPDATE Endereco SET RegiaoID = 'RE0007' WHERE EndID = 'EN0077';
UPDATE Endereco SET RegiaoID = 'RE0008' WHERE EndID = 'EN0078';
UPDATE Endereco SET RegiaoID = 'RE0009' WHERE EndID = 'EN0079';
UPDATE Endereco SET RegiaoID = 'RE0010' WHERE EndID = 'EN0080';

UPDATE Endereco SET RegiaoID = 'RE0011' WHERE EndID = 'EN0081';
UPDATE Endereco SET RegiaoID = 'RE0012' WHERE EndID = 'EN0082';
UPDATE Endereco SET RegiaoID = 'RE0013' WHERE EndID = 'EN0083';
UPDATE Endereco SET RegiaoID = 'RE0014' WHERE EndID = 'EN0084';
UPDATE Endereco SET RegiaoID = 'RE0015' WHERE EndID = 'EN0085';
UPDATE Endereco SET RegiaoID = 'RE0016' WHERE EndID = 'EN0086';
UPDATE Endereco SET RegiaoID = 'RE0017' WHERE EndID = 'EN0087';
UPDATE Endereco SET RegiaoID = 'RE0018' WHERE EndID = 'EN0088';
UPDATE Endereco SET RegiaoID = 'RE0019' WHERE EndID = 'EN0089';
UPDATE Endereco SET RegiaoID = 'RE0020' WHERE EndID = 'EN0090';

UPDATE Endereco SET RegiaoID = 'RE0011' WHERE EndID = 'EN0091';
UPDATE Endereco SET RegiaoID = 'RE0012' WHERE EndID = 'EN0092';
UPDATE Endereco SET RegiaoID = 'RE0013' WHERE EndID = 'EN0093';
UPDATE Endereco SET RegiaoID = 'RE0014' WHERE EndID = 'EN0094';
UPDATE Endereco SET RegiaoID = 'RE0015' WHERE EndID = 'EN0095';
UPDATE Endereco SET RegiaoID = 'RE0016' WHERE EndID = 'EN0096';
UPDATE Endereco SET RegiaoID = 'RE0017' WHERE EndID = 'EN0097';
UPDATE Endereco SET RegiaoID = 'RE0018' WHERE EndID = 'EN0098';
UPDATE Endereco SET RegiaoID = 'RE0019' WHERE EndID = 'EN0099';
UPDATE Endereco SET RegiaoID = 'RE0020' WHERE EndID = 'EN0100';

UPDATE Endereco SET RegiaoID = 'RE0021' WHERE EndID = 'EN0101';
UPDATE Endereco SET RegiaoID = 'RE0022' WHERE EndID = 'EN0102';
UPDATE Endereco SET RegiaoID = 'RE0023' WHERE EndID = 'EN0103';
UPDATE Endereco SET RegiaoID = 'RE0024' WHERE EndID = 'EN0104';
UPDATE Endereco SET RegiaoID = 'RE0025' WHERE EndID = 'EN0105';
UPDATE Endereco SET RegiaoID = 'RE0026' WHERE EndID = 'EN0106';
UPDATE Endereco SET RegiaoID = 'RE0027' WHERE EndID = 'EN0107';
UPDATE Endereco SET RegiaoID = 'RE0028' WHERE EndID = 'EN0108';
UPDATE Endereco SET RegiaoID = 'RE0029' WHERE EndID = 'EN0109';
UPDATE Endereco SET RegiaoID = 'RE0030' WHERE EndID = 'EN0110';

ALTER TABLE Endereco ALTER COLUMN RegiaoID SET NOT NULL;
