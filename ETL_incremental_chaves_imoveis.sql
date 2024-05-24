DROP SCHEMA IF EXISTS audit CASCADE;
CREATE SCHEMA audit;

SET search_path=audit;

CREATE TABLE audit.historico_mudancas_zagi (
    schema_name TEXT NOT NULL,
    table_name TEXT NOT NULL,
    user_name TEXT,
    action_tstamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT current_timestamp,
    action TEXT NOT NULL CHECK (action IN ('I','D','U')),
    original_data TEXT,
    new_data TEXT,
    query TEXT
) WITH (fillfactor=100);




CREATE OR REPLACE FUNCTION audit.if_modified_func() RETURNS trigger AS $body$
DECLARE
    v_old_data TEXT;
    v_new_data TEXT;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        v_old_data := ROW(OLD.*);
        v_new_data := ROW(NEW.*);
        INSERT INTO audit.historico_mudancas_zagi (
            schema_name,
            table_name,
            user_name,
            action,
            original_data,
            new_data,
            query
        )
        VALUES (
            TG_TABLE_SCHEMA::TEXT,
            TG_TABLE_NAME::TEXT,
            session_user::TEXT,
            substring(TG_OP, 1, 1),
            v_old_data,
            v_new_data,
            current_query()
        );
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        v_old_data := ROW(OLD.*);
        INSERT INTO audit.historico_mudancas_zagi (
            schema_name,
            table_name,
            user_name,
            action,
            original_data,
            query
        )
        VALUES (
            TG_TABLE_SCHEMA::TEXT,
            TG_TABLE_NAME::TEXT,
            session_user::TEXT,
            substring(TG_OP, 1, 1),
            v_old_data,
            current_query()
        );
        RETURN OLD;
    ELSIF (TG_OP = 'INSERT') THEN
        v_new_data := ROW(NEW.*);
        INSERT INTO audit.historico_mudancas_zagi (
            schema_name,
            table_name,
            user_name,
            action,
            new_data,
            query
        )
        VALUES (
            TG_TABLE_SCHEMA::TEXT,
            TG_TABLE_NAME::TEXT,
            session_user::TEXT,
            substring(TG_OP, 1, 1),
            v_new_data,
            current_query()
        );
        RETURN NEW;
    ELSE
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - Other action occurred: %, at %', TG_OP, now();
        RETURN NULL;
    END IF;

EXCEPTION
    WHEN data_exception THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN unique_violation THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN others THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
END;
$body$
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, audit;



CREATE TRIGGER TransVenda_if_modified_trg
AFTER INSERT OR UPDATE OR DELETE ON oper_chaves_imoveis.TransVenda
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();

CREATE TRIGGER ImovelTransacao_if_modified_trg
AFTER INSERT OR UPDATE OR DELETE ON oper_chaves_imoveis.ImovelTransacao
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();

CREATE TRIGGER ClienteCompra_if_modified_trg
AFTER INSERT OR UPDATE OR DELETE ON oper_chaves_imoveis.ClienteCompra
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();

CREATE TRIGGER ClienteVende_if_modified_trg
AFTER INSERT OR UPDATE OR DELETE ON oper_chaves_imoveis.ClienteVende
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();


-----------------------------------------------------
Create table audit.ins_TransVenda as select * from oper_chaves_imoveis.TransVenda where 1=0; 


CREATE OR REPLACE FUNCTION audit.ins_TransVenda_func() RETURNS trigger AS $body$
/* ### BLOCO REMOVIDO 
DECLARE
    v_old_data TEXT;
    v_new_data TEXT;
*/
BEGIN
    IF (TG_OP = 'INSERT') THEN
        -- Se for uma operação de inserção
        -- v_new_data := ROW(NEW.*); ### LINHA REMOVIDA
        
        -- Inserir os dados na tabela de auditoria
        INSERT INTO audit.ins_TransVenda (TransVendaID, TransVendaValor, TransVendaData, TransComissao, FuncCPF)
        VALUES (NEW.TransVendaID, NEW.TransVendaValor, NEW.TransVendaData, NEW.TransComissao, NEW.FuncCPF);
        
        -- Retornar a linha inserida
        RETURN NEW;
    ELSE
        -- Se a operação não for uma inserção, emitir um aviso
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - Other action occurred: %, at %',TG_OP,now();
        RETURN NULL;
    END IF;

EXCEPTION
    WHEN data_exception THEN
        -- Tratamento de exceção para exceções de dados
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
    WHEN unique_violation THEN
        -- Tratamento de exceção para violação de restrição de unicidade
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
    WHEN others THEN
        -- Tratamento de exceção para outras exceções
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %',SQLSTATE,SQLERRM;
        RETURN NULL;
END;
$body$
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, audit;


CREATE TRIGGER TransVenda_insert_trg
AFTER INSERT ON oper_chaves_imoveis.TransVenda
FOR EACH ROW EXECUTE PROCEDURE audit.ins_TransVenda_func();
-----------------------------------------------------

Create table audit.ins_ImovelTransacao as select * from oper_chaves_imoveis.ImovelTransacao where 1=0; 


CREATE OR REPLACE FUNCTION audit.ins_ImovelTransacao() RETURNS trigger AS $body$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        -- Se for uma operação de inserção
        INSERT INTO audit.ins_ImovelTransacao (ImovelID, TransVendaID)
        VALUES (NEW.ImovelID, NEW.TransVendaID);
        
        -- Retornar a linha inserida
        RETURN NEW;
    ELSE
        -- Se a operação não for uma inserção, emitir um aviso
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - Other action occurred: %, at %', TG_OP, now();
        RETURN NULL;
    END IF;

EXCEPTION
    WHEN data_exception THEN
        -- Tratamento de exceção para exceções de dados
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN unique_violation THEN
        -- Tratamento de exceção para violação de restrição de unicidade
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN others THEN
        -- Tratamento de exceção para outras exceções
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
END;
$body$
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, audit;


CREATE TRIGGER ImovelTransacao_insert_trg
AFTER INSERT ON oper_chaves_imoveis.ImovelTransacao
FOR EACH ROW EXECUTE PROCEDURE audit.ins_ImovelTransacao();

-----------------------------------------------------

-- ### fazer o mesmo para ClienteCompra e ClienteVende depois ????

-----------------------------------------------------


CREATE TRIGGER Cliente_if_modified_trg
AFTER INSERT OR UPDATE OR DELETE ON oper_chaves_imoveis.Cliente
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();


Create table audit.ins_Cliente as select * from oper_chaves_imoveis.Cliente where 1=0;

CREATE OR REPLACE FUNCTION audit.ins_Cliente_func() RETURNS trigger AS $body$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        -- Se for uma operação de inserção
        INSERT INTO audit.ins_Cliente (ClientePrimNome, CliUltimoNome, ClienteCPF, ClienteDtNasc, ClienteTelefone, EndID)
        VALUES (NEW.ClientePrimNome, NEW.CliUltimoNome, NEW.ClienteCPF, NEW.ClienteDtNasc, NEW.ClienteTelefone, NEW.EndID);
        
        -- Retornar a linha inserida
        RETURN NEW;
    ELSE
        -- Se a operação não for uma inserção, emitir um aviso
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - Other action occurred: %, at %', TG_OP, now();
        RETURN NULL;
    END IF;

    EXCEPTION
        WHEN data_exception THEN
            -- Tratamento de exceção para exceções de dados
            RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
            RETURN NULL;
        WHEN unique_violation THEN
            -- Tratamento de exceção para violação de restrição de unicidade
            RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
            RETURN NULL;
        WHEN others THEN
            -- Tratamento de exceção para outras exceções
            RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
            RETURN NULL;
END;
$body$
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, audit;


-- salvando exatamente a linha recém inserida como uma nova linha em uma tabela "espelho"
CREATE TRIGGER Cliente_insert_trg
AFTER INSERT ON oper_chaves_imoveis.Cliente
FOR EACH ROW EXECUTE PROCEDURE audit.ins_Cliente_func();

-- ### parei na linha 241 do zagi-ETL_incremental.sql

