-- Insert into UF
INSERT INTO UF (UF, UFEstadoNome) VALUES
('SP', 'São Paulo'),
('RJ', 'Rio de Janeiro'),
('MG', 'Minas Gerais'),
('ES', 'Espírito Santo'),
('BA', 'Bahia'),
('PR', 'Paraná'),
('SC', 'Santa Catarina'),
('RS', 'Rio Grande do Sul'),
('GO', 'Goiás'),
('PB', 'Pernambuco');

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
('Via', '01234-567', 'Recife', 'Recife Antigo', 'PB');

-- Insert into Endereco
INSERT INTO Endereco (EndID, EndNumero, EndComplemento, EndBairro, CEP, RegiaoID) VALUES
('EN0001', 101, 'Apto 201', 'Centro', '12345-678', NULL),
('EN0002', 202, 'Bloco B', 'Jardim Oceânico', '23456-789', NULL),
('EN0003', 303, 'Casa', 'Savassi', '34567-890', NULL),
('EN0004', 404, NULL, 'Praia do Canto', '45678-901', NULL),
('EN0005', 505, 'Apto 505', 'Barra', '56789-012', NULL),
('EN0006', 606, 'Apto 601', 'Batel', '67890-123', NULL),
('EN0007', 707, NULL, 'Beira Mar', '78901-234', NULL),
('EN0008', 808, 'Casa 20', 'Moinhos de Vento', '89012-345', NULL),
('EN0009', 909, 'Apto 909', 'Setor Bueno', '90123-456', NULL),
('EN0010', 1010, 'Casa 5', 'Boa Viagem', '01234-567', NULL);

-- Insert into Funcionario
INSERT INTO Funcionario (FuncPrimNome, FuncUltimoNome, FuncCPF, FuncDtNasc, FuncCargo, FuncSalario, EndID) VALUES
('João', 'Silva', '12345678901', '1990-01-01', 'Gerente', 5000.00, 'EN0001'),
('Maria', 'Fernandes', '23456789012', '1992-02-02', 'Analista', 4000.00, 'EN0002'),
('Carlos', 'Machado', '34567890123', '1988-03-03', 'Vendedor', 3500.00, 'EN0003'),
('Ana', 'Barbosa', '45678901234', '1991-04-04', 'Recepcionista', 3000.00, 'EN0004'),
('Lucas', 'Costa', '56789012345', '1985-05-05', 'Diretor', 7000.00, 'EN0005'),
('Patrícia', 'Almeida', '67890123456', '1987-06-06', 'Consultor', 4500.00, 'EN0006'),
('Felipe', 'Teixeira', '78901234567', '1984-07-07', 'Assistente', 2800.00, 'EN0007'),
('Sandra', 'Gomes', '89012345678', '1989-08-08', 'Coordenador', 4800.00, 'EN0008'),
('Rafael', 'Pereira', '90123456789', '1993-09-09', 'Supervisor', 5200.00, 'EN0009'),
('Teresa', 'Nunes', '12345678910', '1994-10-10', 'Operador', 3200.00, 'EN0010');

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
('RE0010', 'Leste de Recife', '12345678910');

-- Insert into Cliente
INSERT INTO Cliente (ClientePrimNome, CliUltimoNome, ClienteCPF, ClienteDtNasc, ClienteTelefone, EndID) VALUES
('Roberto', 'Campos', '10293847566', '1985-11-15', '11987654321', 'EN0001'),
('Luciana', 'Prado', '20938475647', '1990-06-25', '21987654321', 'EN0002'),
('Márcio', 'Souza', '30938475648', '1975-02-10', '31987654321', 'EN0003'),
('Fernanda', 'Costa', '40938475649', '1983-08-30', '27987654321', 'EN0004'),
('Ricardo', 'Oliveira', '50938475640', '1969-12-01', '71987654321', 'EN0005'),
('Juliana', 'Martins', '60938475641', '1995-03-20', '41987654321', 'EN0006'),
('Henrique', 'Ferreira', '70938475642', '1978-09-15', '48987654321', 'EN0007'),
('Larissa', 'Garcia', '80938475643', '1992-05-05', '51987654321', 'EN0008'),
('Paulo', 'Nogueira', '90938475644', '1965-07-20', '62987654321', 'EN0009'),
('Aline', 'Barros', '10093847564', '1973-01-30', '81987654321', 'EN0010');

-- Insert into Imovel
INSERT INTO Imovel (ImovelID, ImovelTipo, ImovelQtdQuartos, ImovelQtdBanheiros, ImovelQtdGaragem, ImovelM2, ImovelValor, ImovelVazio, RegiaoID, EndID) VALUES
('IM0001', 'Apartamento', 3, 2, 1, 90, 500000.00, TRUE, 'RE0001', 'EN0001'),
('IM0002', 'Casa', 4, 3, 2, 200, 1200000.00, FALSE, 'RE0002', 'EN0002'),
('IM0003', 'Cobertura', 2, 2, 1, 100, 750000.00, FALSE, 'RE0003', 'EN0003'),
('IM0004', 'Apartamento', 1, 1, 1, 50, 300000.00, TRUE, 'RE0004', 'EN0004'),
('IM0005', 'Casa', 3, 4, 2, 180, 950000.00, TRUE, 'RE0005', 'EN0005'),
('IM0006', 'Apartamento', 2, 1, 1, 70, 350000.00, FALSE, 'RE0006', 'EN0006'),
('IM0007', 'Cobertura', 3, 3, 2, 150, 850000.00, TRUE, 'RE0007', 'EN0007'),
('IM0008', 'Casa', 5, 4, 3, 250, 1500000.00, FALSE, 'RE0008', 'EN0008'),
('IM0009', 'Apartamento', 1, 1, 1, 45, 250000.00, TRUE, 'RE0009', 'EN0009'),
('IM0010', 'Casa', 4, 3, 2, 190, 1100000.00, TRUE, 'RE0010', 'EN0010');

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
('AN0010', 'Internet', 1200.00, '2023-05-15', 'IM0010', '12345678910');

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
('TV0001', 550000.00, '2023-06-01', 5000.00, '12345678901'),
('TV0002', 1250000.00, '2023-06-15', 10000.00, '23456789012'),
('TV0003', 800000.00, '2023-07-01', 7500.00, '34567890123'),
('TV0004', 320000.00, '2023-07-15', 3000.00, '45678901234'),
('TV0005', 1000000.00, '2023-08-01', 9000.00, '56789012345'),
('TV0006', 400000.00, '2023-08-15', 3500.00, '67890123456'),
('TV0007', 900000.00, '2023-09-01', 8000.00, '78901234567'),
('TV0008', 1600000.00, '2023-09-15', 15000.00, '89012345678'),
('TV0009', 300000.00, '2023-10-01', 2500.00, '90123456789'),
('TV0010', 1200000.00, '2023-10-15', 11000.00, '12345678910');

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
('IM0010', '10093847564');

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
('IM0010', 'TV0010');

-- Insert into ClienteCompra
INSERT INTO ClienteCompra (TransVendaID, ClienteCPF) VALUES
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

ALTER TABLE Endereco ALTER COLUMN RegiaoID SET NOT NULL;