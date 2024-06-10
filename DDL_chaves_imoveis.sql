-- Remove o antigo se existia
drop schema if exists oper_chaves_imoveis cascade;
create schema oper_chaves_imoveis;
SET search_path=oper_chaves_imoveis;

-- Create tables without foreign key dependencies or with resolvable dependencies
CREATE TABLE UF
(
  UF CHAR(2) NOT NULL,
  UFEstadoNome VARCHAR(20) NOT NULL,
  IDH NUMERIC(4,3),
  PRIMARY KEY (UF)
);

CREATE TABLE CEP
(
  TipoLogradouro VARCHAR(50) NOT NULL,
  CEP VARCHAR(9) NOT NULL,
  CEPMunicipio VARCHAR(40) NOT NULL,
  NmLogradouro VARCHAR(100) NOT NULL,
  UF CHAR(2) NOT NULL,
  PRIMARY KEY (CEP),
  FOREIGN KEY (UF) REFERENCES UF(UF)
);

CREATE TABLE Endereco
(
  EndID CHAR(7) NOT NULL,
  EndNumero INT,
  EndComplemento VARCHAR(100),
  EndBairro VARCHAR(100) NOT NULL,
  CEP CHAR(9) NOT NULL,
  RegiaoID CHAR(7),
  PRIMARY KEY (EndID),
  FOREIGN KEY (CEP) REFERENCES CEP(CEP)
);

CREATE TABLE Municipios (
    MunipID INT PRIMARY KEY AUTO_INCREMENT,
    RandID INT NOT NULL,
    MunicipName VARCHAR(255) NOT NULL,
    IDH DECIMAL(3,3) NOT NULL
);

-- Create Funcionario after Endereco
CREATE TABLE Funcionario
(
  FuncPrimNome VARCHAR(100) NOT NULL,
  FuncUltimoNome VARCHAR(100) NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  FuncDtNasc DATE NOT NULL,
  FuncCargo VARCHAR(100) NOT NULL,
  FuncSalario MONEY NOT NULL,
  EndID CHAR(7) NOT NULL,
  PRIMARY KEY (FuncCPF),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

-- Create Corretor after Funcionario
CREATE TABLE Corretor
(
  CorretorRegistro VARCHAR(100) NOT NULL,
  OrcamentoMes MONEY NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  PRIMARY KEY (FuncCPF),
  FOREIGN KEY (FuncCPF) REFERENCES Funcionario(FuncCPF),
  UNIQUE (CorretorRegistro)
);

-- Now create Regiao after Corretor and add missing foreign key
CREATE TABLE Regiao
(
  RegiaoID CHAR(7) NOT NULL,
  RegiaoNome VARCHAR(100) NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  PRIMARY KEY (RegiaoID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_Regiao
    FOREIGN KEY (RegiaoID)
    REFERENCES Regiao(RegiaoID)
;

CREATE TABLE Cliente
(
  ClientePrimNome VARCHAR(20) NOT NULL,
  CliUltimoNome VARCHAR(20) NOT NULL,
  ClienteCPF CHAR(11) NOT NULL,
  ClienteDtNasc DATE NOT NULL,
  ClienteTelefone VARCHAR(15) NOT NULL,
  EndID CHAR(7) NOT NULL,
  PRIMARY KEY (ClienteCPF),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

CREATE TABLE Imovel
(
  ImovelID CHAR(7) NOT NULL,
  ImovelTipo VARCHAR(100) NOT NULL,
  ImovelQtdQuartos INT NOT NULL,
  ImovelQtdBanheiros INT NOT NULL,
  ImovelQtdGaragem INT NOT NULL,
  ImovelM2 INT NOT NULL,
  ImovelValor MONEY NOT NULL,
  ImovelVazio Boolean NOT NULL,
  RegiaoID CHAR(7) NOT NULL,
  EndID CHAR(7) NOT NULL,
  PRIMARY KEY (ImovelID),
  FOREIGN KEY (RegiaoID) REFERENCES Regiao(RegiaoID),
  FOREIGN KEY (EndID) REFERENCES Endereco(EndID)
);

CREATE TABLE Anuncio
(
  AnuncioID CHAR(7) NOT NULL,
  AnuncioMidia VARCHAR(100) NOT NULL,
  AnuncioPreco MONEY NOT NULL,
  AnuncioData DATE NOT NULL,
  ImovelID CHAR(7) NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  PRIMARY KEY (AnuncioID),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

CREATE TABLE Contato
(
  ContatoID CHAR(7) NOT NULL,
  ContatoMeio VARCHAR(100) NOT NULL,
  ContatoNatureza VARCHAR(100) NOT NULL,
  ContatoNome VARCHAR(100) NOT NULL,
  ContatoTelefone VARCHAR(15) NOT NULL,
  DtContato DATE NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  ClienteCPF CHAR(11),
  ImovelID CHAR(7),
  PRIMARY KEY (ContatoID, FuncCPF, ClienteCPF, ImovelID),
  FOREIGN KEY (FuncCPF) REFERENCES Funcionario(FuncCPF),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID)
);

CREATE TABLE TransVenda
(
  TransVendaID CHAR(7) NOT NULL,
  TransVendaValor MONEY NOT NULL,
  TransVendaData DATE NOT NULL,
  TransComissao MONEY NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  PRIMARY KEY (TransVendaID),
  FOREIGN KEY (FuncCPF) REFERENCES Corretor(FuncCPF)
);

CREATE TABLE CliPropriedade
(
  ImovelID CHAR(7) NOT NULL,
  ClienteCPF CHAR(11) NOT NULL,
  PRIMARY KEY (ImovelID, ClienteCPF),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);

CREATE TABLE ImovelTransacao
(
  ImovelID CHAR(7) NOT NULL,
  TransVendaID CHAR(7) NOT NULL,
  PRIMARY KEY (ImovelID, TransVendaID),
  FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID)
);

CREATE TABLE ClienteCompra
(
  TransVendaID CHAR(7) NOT NULL,
  ClienteCPF CHAR(11) NOT NULL,
  PRIMARY KEY (TransVendaID, ClienteCPF),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);

CREATE TABLE ClienteVende
(
  TransVendaID CHAR(7) NOT NULL,
  ClienteCPF CHAR(11) NOT NULL,
  PRIMARY KEY (TransVendaID, ClienteCPF),
  FOREIGN KEY (TransVendaID) REFERENCES TransVenda(TransVendaID),
  FOREIGN KEY (ClienteCPF) REFERENCES Cliente(ClienteCPF)
);
