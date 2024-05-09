-- Create tables without foreign key dependencies or with resolvable dependencies
CREATE TABLE UF
(
  UF INT NOT NULL,
  UFEstadoNome VARCHAR(100) NOT NULL,
  PRIMARY KEY (UF)
);

CREATE TABLE CEP
(
  TipoLogradouro VARCHAR(50) NOT NULL,
  CEP VARCHAR(9) NOT NULL,
  CEPMunicipio VARCHAR(100) NOT NULL,
  NmLogradouro VARCHAR(255) NOT NULL,
  UF INT NOT NULL,
  PRIMARY KEY (CEP),
  FOREIGN KEY (UF) REFERENCES UF(UF)
);

-- Temporarily skip tables with unresolved dependencies (Funcionario, Cliente, Regiao)

-- Create Endereco after CEP but initially skip foreign key to Regiao
CREATE TABLE Endereco
(
  EndID INT NOT NULL,
  EndNumero INT,
  EndComplemento VARCHAR(255),
  EndBairro VARCHAR(255) NOT NULL,
  CEP VARCHAR(9) NOT NULL,
  RegiaoID INT NOT NULL,
  PRIMARY KEY (EndID),
  FOREIGN KEY (CEP) REFERENCES CEP(CEP)
);

-- Create Funcionario after Endereco
CREATE TABLE Funcionario
(
  FuncPrimNome VARCHAR(255) NOT NULL,
  FuncUltimoNome VARCHAR(255) NOT NULL,
  FuncCPF INT NOT NULL,
  FuncDtNasc DATE NOT NULL,
  FuncCargo VARCHAR(100) NOT NULL,
  FuncSalario FLOAT NOT NULL,
  EndID INT NOT NULL,
  PRIMARY KEY (FuncCPF),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

-- Create Corretor after Funcionario
CREATE TABLE Corretor
(
  CorretorRegistro VARCHAR(100) NOT NULL,
  OrcamentoMes FLOAT NOT NULL,
  FuncCPF INT NOT NULL,
  PRIMARY KEY (FuncCPF),
  FOREIGN KEY (FuncCPF) REFERENCES Funcionario(FuncCPF),
  UNIQUE (CorretorRegistro)
);

-- Now create Regiao after Corretor and add missing foreign key
CREATE TABLE Regiao
(
  RegiaoID INT NOT NULL,
  RegiaoNome VARCHAR(100) NOT NULL,
  FuncCPF INT NOT NULL,
  PRIMARY KEY (RegiaoID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_Regiao
    FOREIGN KEY (RegiaoID)
    REFERENCES Regiao(RegiaoID)
;

CREATE TABLE Cliente
(
  ClientePrimNome VARCHAR(255) NOT NULL,
  CliUltimoNome VARCHAR(255) NOT NULL,
  ClienteCPF INT NOT NULL,
  ClienteDtNasc DATE NOT NULL,
  ClienteTelefone VARCHAR(50) NOT NULL,
  EndID INT NOT NULL,
  PRIMARY KEY (ClienteCPF),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

CREATE TABLE Imovel
(
  ImovelID INT NOT NULL,
  ImovelTipo VARCHAR(100) NOT NULL,
  ImovelQtdQuartos INT NOT NULL,
  ImovelQtdBanheiros INT NOT NULL,
  ImovelQtdGaragem INT NOT NULL,
  ImovelM2 INT NOT NULL,
  ImovelValor FLOAT NOT NULL,
  ImovelVazio Boolean NOT NULL,
  RegiaoID INT NOT NULL,
  EndID INT NOT NULL,
  PRIMARY KEY (ImovelID),
  FOREIGN KEY (RegiaoID) REFERENCES Regiao(RegiaoID),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

CREATE TABLE Anuncio
(
  AnuncioID INT NOT NULL,
  AnuncioMidia VARCHAR(100) NOT NULL,
  AnuncioPreco FLOAT NOT NULL,
  AnuncioData DATE NOT NULL,
  ImovelID INT NOT NULL,
  FuncCPF INT NOT NULL,
  PRIMARY KEY (AnuncioID),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

CREATE TABLE Contato
(
  ContatoID INT NOT NULL,
  ContatoMeio VARCHAR(255) NOT NULL,
  ContatoNatureza VARCHAR(255) NOT NULL,
  ContatoNome VARCHAR(255) NOT NULL,
  ContatoTelefone VARCHAR(100) NOT NULL,
  DtContato DATE NOT NULL,
  FuncCPF INT NOT NULL,
  ClienteCPF INT,
  ImovelID INT,
  PRIMARY KEY (ContatoID, FuncCPF, ClienteCPF, ImovelID),
  FOREIGN KEY (FuncCPF) REFERENCES Funcionario(FuncCPF),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID)
);

CREATE TABLE TransVenda
(
  TransVendaID INT NOT NULL,
  TransVendaValor FLOAT NOT NULL,
  TransVendaData DATE NOT NULL,
  TransComissao FLOAT NOT NULL,
  FuncCPF INT NOT NULL,
  PRIMARY KEY (TransVendaID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

CREATE TABLE CliPropriedade
(
  ImovelID INT NOT NULL,
  ClienteCPF INT NOT NULL,
  PRIMARY KEY (ImovelID, ClienteCPF),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);

CREATE TABLE ImovelTransacao
(
  ImovelID INT NOT NULL,
  TransVendaID INT NOT NULL,
  PRIMARY KEY (ImovelID, TransVendaID),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID)
);

CREATE TABLE ClienteCompra
(
  TransVendaID INT NOT NULL,
  ClienteCPF INT NOT NULL,
  PRIMARY KEY (TransVendaID, ClienteCPF),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);

CREATE TABLE ClienteVende
(
  TransVendaID INT NOT NULL,
  ClienteCPF INT NOT NULL,
  PRIMARY KEY (TransVendaID, ClienteCPF),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);
