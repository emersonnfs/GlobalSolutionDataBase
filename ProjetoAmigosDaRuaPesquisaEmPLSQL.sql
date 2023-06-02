----PARTICIPANTES------------------------------

--- Abner Rodrigues Ferreira - RM: 93576
--- Davi Oliveira Da Silva - RM: 95535
--- Emerson Nascimento Figueredo Silva - RM:95199
--- Guilherme De Jesus Ferreira - RM: 95542
--- João Victor Oliveira Da Silva - RM: 94231

-----------------------------------------------

----PESQUISA PARA SABER QUAIS OS NOMES DOS USUÁRIOS QUE USARAM DETERMINADO PATROCINADOR EM UM EVENTO----------
---NO EXEMPLO 'Dove'------------------------------------------------------------------------------------------ 
DECLARE
  v_nm_responsavel tb_ar_responsavel.nm_responsavel%TYPE;
  v_nm_patrocinador tb_ar_patrocinador.nm_patrocinador%TYPE := 'Dove';
  v_patrocinador_encontrado BOOLEAN := FALSE;

  CURSOR c_evento_patrocinador IS
    SELECT r.nm_responsavel
    FROM tb_ar_evento e
    JOIN tb_ar_responsavel r ON e.id_responsavel = r.id_responsavel
    JOIN tb_ar_parceria p ON e.id_evento = p.id_evento
    JOIN tb_ar_patrocinador pt ON p.id_patrocinador = pt.id_patrocinador
    WHERE pt.nm_patrocinador = v_nm_patrocinador;

BEGIN
  OPEN c_evento_patrocinador;

  LOOP
    FETCH c_evento_patrocinador INTO v_nm_responsavel;

    EXIT WHEN c_evento_patrocinador%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Responsável pelo evento: ' || v_nm_responsavel);

    v_patrocinador_encontrado := TRUE;
  END LOOP;

  CLOSE c_evento_patrocinador;

  IF v_patrocinador_encontrado THEN
    DBMS_OUTPUT.PUT_LINE('Patrocinador encontrado.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Patrocinador não encontrado.');
  END IF;
END;
/

----SAÍDA DO SCRIPT------------------------------------------------------------------------------------------

Responsável pelo evento: Jonathan Nolan
Responsável pelo evento: James Cameron
Patrocinador encontrado.


Procedimento PL/SQL concluído com sucesso.

-------------------------------------------------------------------------------------------------------------

----PESQUISA PARA SABER OS DADOS DOS EVENTOS, LOCAIS, PARCERIAS, PATROCINADORES E RESPONSÁVEIS EM QUE DETERMINADA EMPRESA PATROCINOU----
---NO EXEMPLO 'Casas Bahia'--------------------------------------------------------------------------------------------------------------

DECLARE
  v_nm_evento  tb_ar_evento.nm_evento%TYPE;
  v_nm_local   tb_ar_local.nm_local%TYPE;
  v_nr_latitude tb_ar_local.nr_latitude%TYPE;
  v_nr_longitude tb_ar_local.nr_longitude%TYPE;
  v_nm_patrocinador tb_ar_patrocinador.nm_patrocinador%TYPE;
  v_nm_responsavel tb_ar_responsavel.nm_responsavel%TYPE;
BEGIN
  FOR c IN (SELECT e.nm_evento, l.nm_local, l.nr_latitude, l.nr_longitude, p.nm_patrocinador, r.nm_responsavel
            FROM tb_ar_evento e
            JOIN tb_ar_local l ON e.id_local = l.id_local
            JOIN tb_ar_parceria pr ON e.id_evento = pr.id_evento
            JOIN tb_ar_patrocinador p ON pr.id_patrocinador = p.id_patrocinador
            JOIN tb_ar_responsavel r ON e.id_responsavel = r.id_responsavel)
  LOOP
    v_nm_evento := c.nm_evento;
    v_nm_local := c.nm_local;
    v_nr_latitude := c.nr_latitude;
    v_nr_longitude := c.nr_longitude;
    v_nm_patrocinador := c.nm_patrocinador;
    v_nm_responsavel := c.nm_responsavel;
    
    IF v_nm_patrocinador = 'Casas Bahia' THEN
      DBMS_OUTPUT.PUT_LINE('Evento: ' || v_nm_evento);
      DBMS_OUTPUT.PUT_LINE('Local: ' || v_nm_local);
      DBMS_OUTPUT.PUT_LINE('Latitude: ' || v_nr_latitude);
      DBMS_OUTPUT.PUT_LINE('Longitude: ' || v_nr_longitude);
      DBMS_OUTPUT.PUT_LINE('Patrocinador: ' || v_nm_patrocinador);
      DBMS_OUTPUT.PUT_LINE('Responsável: ' || v_nm_responsavel);
      DBMS_OUTPUT.PUT_LINE('---');
    END IF;
  END LOOP;
END;

----SAÍDA DO SCRIPT------------------------------------------------------------------------------------------

Evento: Workshop da Fome
Local: Parque Ibirapuera
Latitude: -23,58798
Longitude: -46,65727
Patrocinador: Casas Bahia
Responsável: Stanley Kubrick
---
Evento: Sexta de Cesta
Local: Avenida Paulista
Latitude: -23,561656
Longitude: -46,656689
Patrocinador: Casas Bahia
Responsável: Jonathan Nolan
---


Procedimento PL/SQL concluído com sucesso.

--------------------------------------------------------------------------------------------------------------
