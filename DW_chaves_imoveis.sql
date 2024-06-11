-- Remove o antigo se existia
drop schema if exists dw_chaves_imoveis cascade;
create schema dw_chaves_imoveis;
SET search_path=dw_chaves_imoveis;

CREATE TABLE Calendario
(
  CalendarioKey VARCHAR NOT NULL,
  DataCompleta DATE NOT NULL,
  DiaDaSemana VARCHAR(10) NOT NULL,
  DiaDoMes INT NOT NULL,
  Mes VARCHAR(10) NOT NULL,
  Trimestre INT NOT NULL,
  Ano INT NOT NULL,
  PRIMARY KEY (CalendarioKey)
);

CREATE TABLE Corretor
(
  CorretorKey VARCHAR NOT NULL,
  CorretorNome VARCHAR(40) NOT NULL,
  FuncCPF CHAR(11) NOT NULL,
  PRIMARY KEY (CorretorKey)
);

CREATE TABLE Anuncio
(
  AnuncioKey VARCHAR NOT NULL,
  AnuncioPreco MONEY NOT NULL,
  ImovelID CHAR(7) NOT NULL,
  PRIMARY KEY (AnuncioKey)
);

CREATE TABLE Endereco
(
  EnderecoKey VARCHAR NOT NULL,
  EndID CHAR(7) NOT NULL,
  NmLogradouro VARCHAR(100) NOT NULL,
  EndBairro VARCHAR(100) NOT NULL,
  CEPMunicipio VARCHAR(40) NOT NULL,
  UF CHAR(2) NOT NULL,
  IDH NUMERIC(4,3) NOT NULL, 
  PRIMARY KEY (EnderecoKey)
);

CREATE TABLE Cliente
(
  ClienteKey VARCHAR NOT NULL,
  CliNome VARCHAR(50) NOT NULL,
  CliCPF CHAR(11) NOT NULL,
  PRIMARY KEY (ClienteKey)
);

CREATE TABLE Receita
(
  TransComissao MONEY NOT NULL,
  TransVendaID CHAR(7) NOT NULL,
  CalendarioKey VARCHAR NOT NULL,
  CorretorKey VARCHAR NOT NULL,
  AnuncioKey VARCHAR NOT NULL,
  EnderecoKey VARCHAR NOT NULL,
  ClienteComKey VARCHAR NOT NULL,
  ClienteVenKey VARCHAR NOT NULL,
  PRIMARY KEY (TransVendaID),
  FOREIGN KEY (CalendarioKey) REFERENCES Calendario(CalendarioKey),
  FOREIGN KEY (CorretorKey) REFERENCES Corretor(CorretorKey),
  FOREIGN KEY (AnuncioKey) REFERENCES Anuncio(AnuncioKey),
  FOREIGN KEY (EnderecoKey) REFERENCES Endereco(EnderecoKey),
  FOREIGN KEY (ClienteComKey) REFERENCES Cliente(ClienteKey),
  FOREIGN KEY (ClienteVenKey) REFERENCES Cliente(ClienteKey)
);