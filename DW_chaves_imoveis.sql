CREATE TABLE Calendario
(
  CalendarioKey INT NOT NULL,
  DataCompleta INT NOT NULL,
  DiaDaSemana INT NOT NULL,
  DiaDoMes INT NOT NULL,
  Mes INT NOT NULL,
  Trimestre INT NOT NULL,
  Ano INT NOT NULL,
  PRIMARY KEY (CalendarioKey)
);

CREATE TABLE Corretor
(
  CorretorKey INT NOT NULL,
  CorretorNome INT NOT NULL,
  PRIMARY KEY (CorretorKey)
);

CREATE TABLE Anuncio
(
  AnuncioKey INT NOT NULL,
  AnuncioPreco INT NOT NULL,
  PRIMARY KEY (AnuncioKey)
);

CREATE TABLE Endereco
(
  EnderecoKey INT NOT NULL,
  NmLogradouro INT NOT NULL,
  EndBairro INT NOT NULL,
  CEPMunicipio INT NOT NULL,
  UF INT NOT NULL,
  PRIMARY KEY (EnderecoKey)
);

CREATE TABLE Cliente
(
  ClienteKey INT NOT NULL,
  CliComNome INT NOT NULL,
  CliVenNome INT NOT NULL,
  CliComCPF INT NOT NULL,
  CliVenCPF INT NOT NULL,
  PRIMARY KEY (ClienteKey)
);

CREATE TABLE Receita
(
  TransComissao INT NOT NULL,
  TransVendaID INT NOT NULL,
  CalendarioKey INT NOT NULL,
  CorretorKey INT NOT NULL,
  AnuncioKey INT NOT NULL,
  EnderecoKey INT NOT NULL,
  ClienteKey INT NOT NULL,
  PRIMARY KEY (TransVendaID),
  FOREIGN KEY (CalendarioKey) REFERENCES Calendario(CalendarioKey),
  FOREIGN KEY (CorretorKey) REFERENCES Corretor(CorretorKey),
  FOREIGN KEY (AnuncioKey) REFERENCES Anuncio(AnuncioKey),
  FOREIGN KEY (EnderecoKey) REFERENCES Endereco(EnderecoKey),
  FOREIGN KEY (ClienteKey) REFERENCES Cliente(ClienteKey)
);