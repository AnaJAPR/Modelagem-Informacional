SET search_path=dw_chaves_imoveis;

-- Insert into Calendario
INSERT INTO Calendario
SELECT 
	gen_random_uuid(),
	a.DataCompleta,
	a.DiaDaSemana,
	a.DiaDoMes,
	a.Mes,
	a.Trimestre,
	a.Ano
FROM (
	SELECT DISTINCT
		cast(t.TransVendaData as date) as DataCompleta,
		to_char(t.TransVendaData, 'DY') as DiaDaSemana,
		extract(day from t.TransVendaData) as DiaDoMes,
		to_char(t.TransVendaData, 'MM') as Mes,
		cast(to_char(t.TransVendaData, 'Q') as int) as Trimestre,
		extract(year from t.TransVendaData) as Ano
	FROM 
		oper_chaves_imoveis.TransVenda t 
	WHERE cast(t.TransVendaData as date) not in (select DataCompleta from Calendario)
	) as a;

-- Insert into Corretor
INSERT INTO Corretor
SELECT 
	gen_random_uuid(),
	f.FuncPrimNome || ' ' || f.FuncUltimoNome,
	c.FuncCPF
FROM oper_chaves_imoveis.Funcionario f
	INNER JOIN oper_chaves_imoveis.Corretor c ON f.FuncCPF = c.FuncCPF;

-- Insert into Anuncio
INSERT INTO Anuncio
SELECT 
	gen_random_uuid(),
	a.AnuncioPreco,
	i.ImovelID
FROM oper_chaves_imoveis.Imovel i
	INNER JOIN oper_chaves_imoveis.Anuncio a ON a.ImovelID = i.ImovelID;

-- Insert into Endereco
INSERT INTO Endereco
SELECT 
	gen_random_uuid(),
	e.EndID,
	c.NmLogradouro,
	e.EndBairro,
	c.CEP,
	c.UF
FROM oper_chaves_imoveis.Imovel i 
	INNER JOIN oper_chaves_imoveis.Endereco e ON i.EndID = e.EndID
	INNER JOIN oper_chaves_imoveis.CEP c ON e.CEP = c.CEP;


-- Insert into Cliente
INSERT INTO Cliente (ClienteKey, CliComNome, CliVenNome, CliComCPF, CliVenCPF)
SELECT 
	gen_random_uuid(),
	cli_compra.ClientePrimNome || ' ' || cli_compra.CliUltimoNome,
	cli_vende.ClientePrimNome || ' ' || cli_vende.CliUltimoNome,
	cli_compra.ClienteCPF,
	cli_vende.ClienteCPF
FROM oper_chaves_imoveis.TransVenda t 
	INNER JOIN oper_chaves_imoveis.ClienteVende cv ON cv.TransVendaID = t.TransVendaID
	INNER JOIN oper_chaves_imoveis.Cliente cli_vende ON cv.ClienteCPF = cli_vende.ClienteCPF
	INNER JOIN oper_chaves_imoveis.ClienteCompra cc ON cc.TransVendaID = t.TransVendaID
	INNER JOIN oper_chaves_imoveis.Cliente cli_compra ON cc.ClienteCPF = cli_compra.ClienteCPF;

-- Insert into Receita
INSERT INTO Receita (TransComissao, TransVendaID, CalendarioKey, CorretorKey, AnuncioKey, EnderecoKey, ClienteKey)
SELECT 
	t.TransComissao,
	t.TransVendaID,
	dwcal.CalendarioKey,
	dwcor.CorretorKey,
	dwan.AnuncioKey,
	dwend.EnderecoKey,
	dwcli.ClienteKey
FROM 
	oper_chaves_imoveis.TransVenda t 
	INNER JOIN oper_chaves_imoveis.ImovelTransacao it ON t.TransVendaID = it.TransVendaID
	INNER JOIN oper_chaves_imoveis.Imovel i ON it.ImovelID = i.ImovelID
	INNER JOIN oper_chaves_imoveis.Regiao r ON i.RegiaoID = r.RegiaoID
	INNER JOIN oper_chaves_imoveis.Corretor c ON t.FuncCPF = c.FuncCPF
	INNER JOIN oper_chaves_imoveis.Funcionario f ON c.FuncCPF = f.FuncCPF
	INNER JOIN oper_chaves_imoveis.Anuncio a ON a.ImovelID = i.ImovelID AND a.FuncCPF = c.FuncCPF
	INNER JOIN oper_chaves_imoveis.Endereco e ON i.EndID = e.EndID
	INNER JOIN oper_chaves_imoveis.ClienteVende cv ON cv.TransVendaID = t.TransVendaID
	INNER JOIN oper_chaves_imoveis.Cliente cli_vende ON cv.ClienteCPF = cli_vende.ClienteCPF
	INNER JOIN oper_chaves_imoveis.ClienteCompra cc ON cc.TransVendaID = t.TransVendaID
	INNER JOIN oper_chaves_imoveis.Cliente cli_compra ON cc.ClienteCPF = cli_compra.ClienteCPF
	INNER JOIN Calendario dwcal ON dwcal.DataCompleta=cast(t.TransVendaData as date)
	INNER JOIN Corretor dwcor ON dwcor.FuncCPF = c.FuncCPF
	INNER JOIN Anuncio dwan ON dwan.ImovelID = a.ImovelID
	INNER JOIN Endereco dwend ON dwend.EndID = e.EndID
	INNER JOIN Cliente dwcli ON dwcli.CliComCPF = cli_compra.ClienteCPF AND dwcli.CliVenCPF = cli_vende.ClienteCPF;

