SELECT * FROM cap03.tb_dados;

SELECT distinct classe from cap03.tb_dados;

#1 BINARIZAÇÃO DA VARIÁVEL CLASSE

SELECT 
	CASE
		WHEN classe = 'no-recurrence-events' THEN 0
        WHEN classe = 'recurrence-events' THEN 1
	END AS classe
    FROM cap03.tb_dados;

# END AS é o apelido da Coluna

# Binarização da variável Irradiando

select distinct irradiando from cap03.tb_dados;

SELECT 
CASE
	WHEN irradiando = 'no' THEN 0
    WHEN irradiando = 'yes' THEN 1
    END AS irradiando
    from cap03.tb_dados;
    
    # BINARIZAR A VARIÁVEL node_caps
    
select distinct node_caps from cap03.tb_dados;

SELECT
	CASE
		WHEN node_caps = 'no' THEN 0
		WHEN node_caps = 'yes' THEN 1
		ELSE 2
	END AS node_caps
	FROM cap03.tb_dados;
        
# CATEGORIZAR A VARIÁVEL SEIO COMO (E/D)

SELECT distinct seio FROM cap_03.tb_dados;

SELECT
	CASE
		WHEN seio = 'left' THEN 'E'
        WHEN seio = 'right' THEN 'D'
	END AS seio
    FROM cap03.tb_dados;
    
    # CATEGORIZAR A VARIÁVEL TUMOR EM 6 CATEGORIAS
    
SELECT distinct tamanho_tumor FROM cap_03.tb_dados;


SELECT
	CASE
		WHEN tamanho_tumor = '0-4' OR tamanho_tumor = '5-9' THEN 'Muito pequeno'
        WHEN tamanho_tumor = '10-14' OR tamanho_tumor = '15-19' THEN 'Pequeno'
        WHEN tamanho_tumor = '20-24' OR tamanho_tumor = '25-29' THEN 'Médio'
		WHEN tamanho_tumor = '30-34' OR tamanho_tumor = '35-39' THEN 'Grande'
        WHEN tamanho_tumor = '40-44' OR tamanho_tumor = '45-49' THEN 'Muito Grande'
        WHEN tamanho_tumor = '45-49' OR tamanho_tumor= '50-54' THEN 'Tratamento Urgente'
       	END AS tamanho_tumor
    FROM cap03.tb_dados;

# Label Encoding da variável quadrante (1,2,3,4,5)

SELECT * FROM cap_03.tb_dados;      
select distinct quadrante from cap_03.tb_dados;
select
	case
		when quadrante = 'left_low' then 1
        when quadrante = 'right_up' then 2
        when quadrante = 'left_up' then 3
        when quadrante = 'right_low' then 4
        when quadrante = 'central' then 5
        else 0
        end as quadrante
        from cap03.tb_dados;
        
	
