CREATE TABLE Calendario
(
  CalendarioKey CHAR(9) NOT NULL,
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
  CorretorKey CHAR(9) NOT NULL,
  CorretorNome VARCHAR(40) NOT NULL,
  PRIMARY KEY (CorretorKey)
);

CREATE TABLE Anuncio
(
  AnuncioKey CHAR(9) NOT NULL,
  AnuncioPreco MONEY NOT NULL,
  PRIMARY KEY (AnuncioKey)
);

CREATE TABLE Endereco
(
  EnderecoKey CHAR(9) NOT NULL,
  NmLogradouro VARCHAR(100) NOT NULL,
  EndBairro VARCHAR(100) NOT NULL,
  CEPMunicipio VARCHAR(40) NOT NULL,
  UF CHAR(2) NOT NULL,
  PRIMARY KEY (EnderecoKey)
);

CREATE TABLE Cliente
(
  ClienteKey CHAR(9) NOT NULL,
  CliComNome VARCHAR(50) NOT NULL,
  CliVenNome VARCHAR(50) NOT NULL,
  CliComCPF CHAR(11) NOT NULL,
  CliVenCPF CHAR(11) NOT NULL,
  PRIMARY KEY (ClienteKey)
);

CREATE TABLE Receita
(
  TransComissao MONEY NOT NULL,
  TransVendaID CHAR(7) NOT NULL,
  CalendarioKey CHAR(9) NOT NULL,
  CorretorKey CHAR(9) NOT NULL,
  AnuncioKey CHAR(9) NOT NULL,
  EnderecoKey CHAR(9) NOT NULL,
  ClienteKey CHAR(9) NOT NULL,
  PRIMARY KEY (TransVendaID),
  FOREIGN KEY (CalendarioKey) REFERENCES Calendario(CalendarioKey),
  FOREIGN KEY (CorretorKey) REFERENCES Corretor(CorretorKey),
  FOREIGN KEY (AnuncioKey) REFERENCES Anuncio(AnuncioKey),
  FOREIGN KEY (EnderecoKey) REFERENCES Endereco(EnderecoKey),
  FOREIGN KEY (ClienteKey) REFERENCES Cliente(ClienteKey)
);