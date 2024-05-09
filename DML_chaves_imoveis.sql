INSERT INTO UF (UF, UFEstadoNome) VALUES
(1, 'São Paulo'),
(2, 'Rio de Janeiro'),
(3, 'Minas Gerais'),
(4, 'Espírito Santo'),
(5, 'Bahia'),
(6, 'Paraná'),
(7, 'Santa Catarina'),
(8, 'Rio Grande do Sul'),
(9, 'Goiás'),
(10, 'Pernambuco');

INSERT INTO CEP (TipoLogradouro, CEP, CEPMunicipio, NmLogradouro, UF) VALUES
('Rua', '12345-678', 'São Paulo', 'Paulista', 1),
('Avenida', '23456-789', 'Rio de Janeiro', 'Atlântica', 2),
('Travessa', '34567-890', 'Belo Horizonte', 'Amazonas', 3),
('Praça', '45678-901', 'Vitória', 'Mestre Álvaro', 4),
('Alameda', '56789-012', 'Salvador', 'Oceânica', 5),
('Estrada', '67890-123', 'Curitiba', 'Flores', 6),
('Viela', '78901-234', 'Florianópolis', 'Lua Nova', 7),
('Rodovia', '89012-345', 'Porto Alegre', 'Sol Poente', 8),
('Largo', '90123-456', 'Goiânia', 'Goiás Central', 9),
('Via', '01234-567', 'Recife', 'Recife Antigo', 10);

-- Vamos supor que o campo FuncCPF é um INT com a capacidade de armazenar CPF como números grandes
INSERT INTO Funcionario (FuncPrimNome, FuncUltimoNome, FuncCPF, FuncDtNasc, FuncCargo, FuncSalario, EndID) VALUES
('João', 'Silva', 12345678901, '1990-01-01', 'Gerente', 5000.00, 1),
('Maria', 'Fernandes', 23456789012, '1992-02-02', 'Analista', 4000.00, 2),
('Carlos', 'Machado', 34567890123, '1988-03-03', 'Vendedor', 3500.00, 3),
('Ana', 'Barbosa', 45678901234, '1991-04-04', 'Recepcionista', 3000.00, 4),
('Lucas', 'Costa', 56789012345, '1985-05-05', 'Diretor', 7000.00, 5),
('Patrícia', 'Almeida', 67890123456, '1987-06-06', 'Consultor', 4500.00, 6),
('Felipe', 'Teixeira', 78901234567, '1984-07-07', 'Assistente', 2800.00, 7),
('Sandra', 'Gomes', 89012345678, '1989-08-08', 'Coordenador', 4800.00, 8),
('Rafael', 'Pereira', 90123456789, '1993-09-09', 'Supervisor', 5200.00, 9),
('Teresa', 'Nunes', 12345678910, '1994-10-10', 'Operador', 3200.00, 10);

INSERT INTO Corretor (CorretorRegistro, OrcamentoMes, FuncCPF) VALUES
('CR1001', 10000.00, 12345678901),
('CR1002', 20000.00, 23456789012),
('CR1003', 15000.00, 34567890123),
('CR1004', 18000.00, 45678901234),
('CR1005', 22000.00, 56789012345),
('CR1006', 16000.00, 67890123456),
('CR1007', 13000.00, 78901234567),
('CR1008', 14000.00, 89012345678),
('CR1009', 19000.00, 90123456789),
('CR1010', 17000.00, 12345678910);

INSERT INTO Endereco (EndID, EndNumero, EndComplemento, EndBairro, CEP, RegiaoID) VALUES
(1, 101, 'Apto 201', 'Centro', '12345-678', 1),
(2, 202, 'Bloco B', 'Jardim Oceânico', '23456-789', 2),
(3, 303, 'Casa', 'Savassi', '34567-890', 3),
(4, 404, null, 'Praia do Canto', '45678-901', 4),
(5, 505, 'Apto 505', 'Barra', '56789-012', 5),
(6, 606, 'Apto 601', 'Batel', '67890-123', 6),
(7, 707, null, 'Beira Mar', '78901-234', 7),
(8, 808, 'Casa 20', 'Moinhos de Vento', '89012-345', 8),
(9, 909, 'Apto 909', 'Setor Bueno', '90123-456', 9),
(10, 1010, 'Casa 5', 'Boa Viagem', '01234-567', 10);

INSERT INTO Regiao (RegiaoID, RegiaoNome, FuncCPF) VALUES
(1, 'Centro SP', 12345678901),
(2, 'Zona Sul RJ', 23456789012),
(3, 'Centro BH', 34567890123),
(4, 'Leste de Vitória', 45678901234),
(5, 'Oeste de Salvador', 56789012345),
(6, 'Sul de Curitiba', 67890123456),
(7, 'Norte de Florianópolis', 78901234567),
(8, 'Centro de Porto Alegre', 89012345678),
(9, 'Zona Norte GO', 90123456789),
(10, 'Leste de Recife', 12345678910);

INSERT INTO Imovel (ImovelID, ImovelTipo, ImovelQtdQuartos, ImovelQtdBanheiros, ImovelQtdGaragem, ImovelM2, ImovelValor, ImovelVazio, RegiaoID, EndID) VALUES
(1, 'Apartamento', 3, 2, 1, 90, 500000.00, true, 1, 1),
(2, 'Casa', 4, 3, 2, 200, 1200000.00, false, 2, 2),
(3, 'Cobertura', 2, 2, 1, 100, 750000.00, false, 3, 3),
(4, 'Apartamento', 1, 1, 1, 50, 300000.00, true, 4, 4),
(5, 'Casa', 3, 4, 2, 180, 950000.00, true, 5, 5),
(6, 'Apartamento', 2, 1, 1, 70, 350000.00, false, 6, 6),
(7, 'Cobertura', 3, 3, 2, 150, 850000.00, true, 7, 7),
(8, 'Casa', 5, 4, 3, 250, 1500000.00, false, 8, 8),
(9, 'Apartamento', 1, 1, 1, 45, 250000.00, true, 9, 9),
(10, 'Casa', 4, 3, 2, 190, 1100000.00, true, 10, 10);

INSERT INTO Cliente (ClientePrimNome, CliUltimoNome, ClienteCPF, ClienteDtNasc, ClienteTelefone, EndID) VALUES
('Roberto', 'Campos', 10293847566, '1985-11-15', '11987654321', 1),
('Luciana', 'Prado', 20938475647, '1990-06-25', '21987654321', 2),
('Márcio', 'Souza', 30938475648, '1975-02-10', '31987654321', 3),
('Fernanda', 'Costa', 40938475649, '1983-08-30', '27987654321', 4),
('Ricardo', 'Oliveira', 50938475640, '1969-12-01', '71987654321', 5),
('Juliana', 'Martins', 60938475641, '1995-03-20', '41987654321', 6),
('Henrique', 'Ferreira', 70938475642, '1978-09-15', '48987654321', 7),
('Larissa', 'Garcia', 80938475643, '1992-05-05', '51987654321', 8),
('Paulo', 'Nogueira', 90938475644, '1965-07-20', '62987654321', 9),
('Aline', 'Barros', 100938475645, '1973-01-30', '81987654321', 10);
