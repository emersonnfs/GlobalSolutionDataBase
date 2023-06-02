----PARTICIPANTES------------------------------

--- Abner Rodrigues Ferreira - RM: 93576
--- Davi Oliveira Da Silva - RM: 95535
--- Emerson Nascimento Figueredo Silva - RM:95199
--- Guilherme De Jesus Ferreira - RM: 95542
--- João Victor Oliveira Da Silva - RM: 94231

-----------------------------------------------

----CRIANDO TABELA DE LOGS --------------------

CREATE TABLE tabela_de_logs (
  id_log NUMBER,
  nome_usuario VARCHAR2(255),
  data_ocorrencia DATE,
  codigo_erro NUMBER,
  mensagem_erro VARCHAR2(4000)
);

-------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_RESPONSAVEL---------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- INSERT 1
  BEGIN
    v_nome_usuario := 'James Cameron';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (1, 'james@email.com', v_nome_usuario, 'senha123', 988776655);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 2
  BEGIN
    v_nome_usuario := 'Quentin Tarantino';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (2, 'quentin@email.com', v_nome_usuario, 'senha123', 911223344);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 3
  BEGIN
    v_nome_usuario := 'Jonathan Nolan';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (3, 'jonathan@email.com', v_nome_usuario, 'senha123', 966332255);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 4
  BEGIN
    v_nome_usuario := 'Steven Spielberg';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (4, 'steven@email.com', v_nome_usuario, 'senha123', 988552211);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 5
  BEGIN
    v_nome_usuario := 'Stanley Kubrick';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (5, 'stanley@email.com', v_nome_usuario, 'senha123', 977441122);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 6
  BEGIN
    v_nome_usuario := 'Christopher Nolan';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (6, 'chris@email.com', v_nome_usuario, 'senha123', 955667788);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 7
  BEGIN
    v_nome_usuario := 'Martin Scorsese';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (7, 'martin@email.com', v_nome_usuario, 'senha123', 922334455);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 8
  BEGIN
    v_nome_usuario := 'Alfred Hitchcock';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (8, 'alfred@email.com', v_nome_usuario, 'senha123', 911445566);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 9
  BEGIN
    v_nome_usuario := 'David Fincher';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (9, 'david@email.com', v_nome_usuario, 'senha123', 988776611);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 10
  BEGIN
    v_nome_usuario := 'Ridley Scott';

    INSERT INTO rm95199.tb_ar_responsavel (id_responsavel, ds_email, nm_responsavel, ds_senha, nr_telefone)
    VALUES (10, 'ridley@email.com', v_nome_usuario, 'senha123', 966553344);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    
    INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

------------------------------------------------------------------------------------------------------

----INSERT TB_AR_PESSOA_FISICA------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- Inserção 1
  BEGIN
	v_nome_usuario := 'James Cameron';
    INSERT INTO rm95199.tb_ar_pessoa_fisica (id_pessoa_fisica, nr_cpf, dt_nascimento, nr_rg, id_responsavel)
    VALUES (1, 12345678901, TO_DATE('1954-08-16', 'YYYY-MM-DD'), 123456789, 1);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 2
  BEGIN
    v_nome_usuario := 'Quentin Tarantino';
    INSERT INTO rm95199.tb_ar_pessoa_fisica (id_pessoa_fisica, nr_cpf, dt_nascimento, nr_rg, id_responsavel)
    VALUES (2, 23456789012, TO_DATE('1963-03-27', 'YYYY-MM-DD'), 987654321, 2);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 3
  BEGIN
	v_nome_usuario := 'Jonathan Nolan';
    INSERT INTO rm95199.tb_ar_pessoa_fisica (id_pessoa_fisica, nr_cpf, dt_nascimento, nr_rg, id_responsavel)
    VALUES (3, 34567890123, TO_DATE('1976-06-06', 'YYYY-MM-DD'), 123123123, 3);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;  

  -- Inserção 4
  BEGIN
	v_nome_usuario := 'Steven Spielberg';
    INSERT INTO rm95199.tb_ar_pessoa_fisica (id_pessoa_fisica, nr_cpf, dt_nascimento, nr_rg, id_responsavel)
    VALUES (4, 45678901234, TO_DATE('1946-12-18', 'YYYY-MM-DD'), 987987987, 4);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 5
  BEGIN
	v_nome_usuario := 'Stanley Kubrick';
    INSERT INTO rm95199.tb_ar_pessoa_fisica (id_pessoa_fisica, nr_cpf, dt_nascimento, nr_rg, id_responsavel)
    VALUES (5, 56789012345, TO_DATE('1928-07-26', 'YYYY-MM-DD'), 456456456, 5);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

-----------------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_PESSOA_JURIDICA---------------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- Inserção 1
  BEGIN
	v_nome_usuario := 'Christopher Nolan';
    INSERT INTO rm95199.tb_ar_pessoa_juridica (id_pessoa_juridica, nr_cnpj, nr_insc_estadual, nm_fantasia, ds_ramo_atividade, id_responsavel)
    VALUES (1, 12345678901234, 12345678901234, 'Oppenheimer', 'Indústria Química', 6);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 2
  BEGIN
	v_nome_usuario := 'Martin Scorsese';
    INSERT INTO rm95199.tb_ar_pessoa_juridica (id_pessoa_juridica, nr_cnpj, nr_insc_estadual, nm_fantasia, ds_ramo_atividade, id_responsavel)
    VALUES (2, 23456789012345, 23456789012345, 'Taxi Driver', 'Transportes', 7);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 3
  BEGIN
	v_nome_usuario := 'Alfred Hitchcock';
    INSERT INTO rm95199.tb_ar_pessoa_juridica (id_pessoa_juridica, nr_cnpj, nr_insc_estadual, nm_fantasia, ds_ramo_atividade, id_responsavel)
    VALUES (3, 34567890123456, 34567890123456, 'Psicose', 'Hotelaria', 8);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 4
  BEGIN
	v_nome_usuario := 'David Fincher';
    INSERT INTO rm95199.tb_ar_pessoa_juridica (id_pessoa_juridica, nr_cnpj, nr_insc_estadual, nm_fantasia, ds_ramo_atividade, id_responsavel)
    VALUES (4, 45678901234567, 45678901234567, 'Clube da Luta', 'Esportes', 9);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- Inserção 5
  BEGIN
	v_nome_usuario := 'Ridley Scott';
    INSERT INTO rm95199.tb_ar_pessoa_juridica (id_pessoa_juridica, nr_cnpj, nr_insc_estadual, nm_fantasia, ds_ramo_atividade, id_responsavel)
    VALUES (5, 56789012345678, 56789012345678, 'Hannibal', 'Alimenticio', 10);
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

---------------------------------------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_LOCAL-----------------------------------------------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- Inserção 1
  BEGIN
	v_nome_usuario := 'Quentin Tarantino';
    INSERT INTO rm95199.tb_ar_local (id_local, nr_latitude, nr_longitude, nm_local)
    VALUES (1, -23.648287, -46.675427, 'Jardim Botânico');
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 2
  BEGIN
	v_nome_usuario := 'Stanley Kubrick';
    INSERT INTO rm95199.tb_ar_local (id_local, nr_latitude, nr_longitude, nm_local)
    VALUES (2, -23.561656, -46.656689, 'Avenida Paulista');
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 3
  BEGIN
	v_nome_usuario := 'Christopher Nolan';
    INSERT INTO rm95199.tb_ar_local (id_local, nr_latitude, nr_longitude, nm_local)
    VALUES (3, -23.587980, -46.657270, 'Parque Ibirapuera');
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 4
  BEGIN
	v_nome_usuario := 'Alfred Hitchcock';
    INSERT INTO rm95199.tb_ar_local (id_local, nr_latitude, nr_longitude, nm_local)
    VALUES (4, -23.542750, -46.630480, 'Mercado Municipal');
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- Inserção 5
  BEGIN
	v_nome_usuario := 'Ridley Scott';
    INSERT INTO rm95199.tb_ar_local (id_local, nr_latitude, nr_longitude, nm_local)
    VALUES (5, -23.561469, -46.655446, 'Museu de Arte de São Paulo (MASP)');
    
    COMMIT;
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := 'Erro: Chave primária duplicada.';
      
      INSERT INTO tabela_de_logs (nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;


  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

--------------------------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_EVENTO---------------------------------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- INSERT 1
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_evento (id_evento, hora_fim, hora_inicio, nm_evento, tp_evento, id_local, id_responsavel)
    VALUES (1, TIMESTAMP '2023-06-02 16:00:00', TIMESTAMP '2023-06-02 10:00:00', 'Rango Brabo', 1, 1, 1);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 2
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_evento (id_evento, hora_fim, hora_inicio, nm_evento, tp_evento, id_local, id_responsavel)
    VALUES (2, TIMESTAMP '2023-06-10 18:00:00', TIMESTAMP '2023-06-10 12:00:00', 'Sexta de Cesta', 0, 2, 3);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 3
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_evento (id_evento, hora_fim, hora_inicio, nm_evento, tp_evento, id_local, id_responsavel)
    VALUES (3, TIMESTAMP '2023-06-08 14:00:00', TIMESTAMP '2023-06-08 06:30:00', 'Workshop da Fome', 2, 3, 5);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 4
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_evento (id_evento, hora_fim, hora_inicio, nm_evento, tp_evento, id_local, id_responsavel)
    VALUES (4, TIMESTAMP '2023-06-22 15:00:00', TIMESTAMP '2023-06-22 10:00:00', 'Tchau Fome', 1, 4, 7);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 5
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_evento (id_evento, hora_fim, hora_inicio, nm_evento, tp_evento, id_local, id_responsavel)
    VALUES (5, TIMESTAMP '2023-06-28 17:30:00', TIMESTAMP '2023-06-28 11:15:00', 'Inverno Mais Quente', 2, 5, 9);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

----------------------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_PATROCINADOR-----------------------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255);
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- INSERT 1
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_patrocinador (id_patrocinador, nm_patrocinador, tp_patrocinador)
    VALUES (1, 'Camil', 0);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 2
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_patrocinador (id_patrocinador, nm_patrocinador, tp_patrocinador)
    VALUES (2, 'Dove', 1);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 3
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_patrocinador (id_patrocinador, nm_patrocinador, tp_patrocinador)
    VALUES (3, 'Casas Bahia', 2);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 4
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_patrocinador (id_patrocinador, nm_patrocinador, tp_patrocinador)
    VALUES (4, 'Veja', 1);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 5
  BEGIN
    v_nome_usuario := USER;
    INSERT INTO rm95199.tb_ar_patrocinador (id_patrocinador, nm_patrocinador, tp_patrocinador)
    VALUES (5, 'Pantera', 0);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
    ROLLBACK;
END;
/

------------------------------------------------------------------------------------------------------------------

----INSERT TB_AR_PARCERIA-----------------------------------------------------------------------------------------

DECLARE
  v_nome_usuario VARCHAR2(255) := USER;
  v_data_ocorrencia DATE := SYSDATE;
  v_codigo_erro NUMBER;
  v_mensagem_erro VARCHAR2(4000);
BEGIN
  -- INSERT 1
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (1, 1, 1);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 2
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (2, 2, 2);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 3
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (3, 3, 3);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 4
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (4, 4, 4);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 5
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (5, 5, 5);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 6
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (6, 1, 2);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 7
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (7, 2, 3);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;

  -- INSERT 8
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (8, 3, 4);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 9
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (9, 4, 5);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  -- INSERT 10
  BEGIN
    INSERT INTO rm95199.tb_ar_parceria (id_parceria, id_evento, id_patrocinador)
    VALUES (10, 5, 1);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      v_codigo_erro := SQLCODE;
      v_mensagem_erro := SQLERRM;
      INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
      VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
  END;
  
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    v_codigo_erro := SQLCODE;
    v_mensagem_erro := SQLERRM;
    INSERT INTO tabela_de_logs (id_log, nome_usuario, data_ocorrencia, codigo_erro, mensagem_erro)
    VALUES (NULL, v_nome_usuario, v_data_ocorrencia, v_codigo_erro, v_mensagem_erro);
END;

-----------------------------------------------------------------------------------------------------------------