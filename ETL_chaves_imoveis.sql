-- Insert into Calendario
INSERT INTO oper_chaves_imoveis.Calendario
SELECT 
	gen_random_uuid(),
	c.CalendarioKey,
	c.DataCompleta,
	c.DiaDaSemana,
	c.DiaDoMes,
	c.Mes,
	c.Trimestre,
	c.Ano
FROM dw_chaves_imoveis.Calendario c;

-- Insert into Corretor
INSERT INTO oper_chaves_imoveis.Corretor
SELECT 
	gen_random_uuid(),
	c.FuncCPF,
	c.CorretorNome
FROM dw_chaves_imoveis.Corretor c;

-- Insert into Anuncio
INSERT INTO oper_chaves_imoveis.Anuncio
SELECT 
	gen_random_uuid(),
	a.AnuncioPreco
FROM dw_chaves_imoveis.Anuncio a;

-- Insert into Endereco
INSERT INTO oper_chaves_imoveis.Endereco
SELECT 
	gen_random_uuid(),
	e.EndID,
	c.NmLogradouro,
	e.EndBairro,
	c.CEP,
	c.UF
FROM dw_chaves_imoveis.CEP c full join dw_chaves_imoveis.Endereco e on e.CEP = c.CEP;

-- Insert into Cliente
INSERT INTO oper_chaves_imoveis.Cliente
SELECT 
	gen_random_uuid(),
	c.ClienteCPF,
	c.ClientePrimNome,
	c.CliUltimoNome,
	c.EndID,
	NULL,
	NULL,
	NULL,
	NULL
FROM dw_chaves_imoveis.Cliente c;

-- Insert into Receita
INSERT INTO oper_chaves_imoveis.Receita
SELECT 
	r.TransComissao,
	r.TransVendaID,
	r.CalendarioKey,
	r.FuncCPF,
	r.AnuncioKey,
	r.EnderecoKey,
	r.ClienteKey
FROM dw_chaves_imoveis.TransVenda r;
