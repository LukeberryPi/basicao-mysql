# --- AULA 3: ANÁLISES DE DADOS COM SQL --- #

-- Agrupamentos
-- Filtragem avançada
-- Joins
-- Subqueries
-- Criação de Views

-- Lembrando das tabelas do banco de dados...

SELECT * FROM alugueis;
SELECT * FROM atores;
SELECT * FROM atuacoes;
SELECT * FROM clientes;
SELECT * FROM filmes;

# =======        PARTE 1:        =======#
# =======  CRIANDO AGRUPAMENTOS  =======#

-- CASE 1. Você deverá começar fazendo uma análise para descobrir o preço médio de aluguel dos filmes.

SELECT AVG(preco_aluguel) FROM filmes;

-- Agora que você sabe o preço médio para se alugar filmes na hashtagmovie, você deverá ir além na sua análise e descobrir qual é o preço médio para cada gênero de filme.

/*
genero                   | preco_medio
______________________________________
Comédia                  | X
Drama                    | Y
Ficção e Fantasia        | Z
Mistério e Suspense      | A
Arte                     | B
Animação                 | C
Ação e Aventura          | D
*/

-- Você seria capaz de mostrar os gêneros de forma ordenada, de acordo com a média?

SELECT
	genero,
    AVG(preco_aluguel) AS 'Preço Médio'
FROM filmes
GROUP BY genero;
 
-- Altere a consulta anterior para mostrar na nossa análise também a quantidade de filmes para cada gênero, conforme exemplo abaixo.

/*
genero                   | preco_medio      | qtd_filmes
_______________________________________________________
Comédia                  | X                | .
Drama                    | Y                | ..
Ficção e Fantasia        | Z                | ...
Mistério e Suspense      | A                | ....
Arte                     | B                | .....
Animação                 | C                | ......
Ação e Aventura          | D                | .......
*/

SELECT
	genero,
    AVG(preco_aluguel) AS preco_medio,
    COUNT(*) AS qtde_filmes
FROM filmes
GROUP BY genero;

-- CASE 2. Para cada filme, descubra a classificação média, o número de avaliações e a quantidade de vezes que cada filme foi alugado. Ordene essa consulta a partir da avaliacao_media, em ordem decrescente.

/*
id_filme  | avaliacao_media   | num_avaliacoes  | num_alugueis
_______________________________________________________
1         | X                 | .               | .
2         | Y                 | ..              | ..
3         | Z                 | ...             | ...
4         | A                 | ....            | ....
5         | B                 | .....           | .....
...
*/

SELECT 
	id_filme,
	AVG(nota) AS nota_media,
    COUNT(nota) AS qtde_notas,
    COUNT(id_aluguel) AS qtde_alugueis
FROM alugueis
GROUP BY id_filme
ORDER BY nota_media DESC;


# =======              PARTE 2:               =======#
# =======  FILTROS AVANÇADOS EM AGRUPAMENTOS  =======#

-- CASE 3. Você deve alterar a consulta DO CASE 1 e considerar os 2 cenários abaixo:

-- Cenário 1: Fazer a mesma análise, mas considerando apenas os filmes com ANO_LANCAMENTO igual a 2011.

SELECT
	genero,
    AVG(preco_aluguel) AS preco_medio,
    COUNT(*) AS qtde_filmes
FROM filmes
WHERE ano_lancamento = 2011
GROUP BY genero;

-- Cenário 2: Fazer a mesma análise, mas considerando apenas os filmes dos gêneros com mais de 10 filmes.

SELECT
	genero,
    AVG(preco_aluguel) AS preco_medio,
    COUNT(*) AS qtde_filmes
FROM filmes
GROUP BY genero
HAVING qtde_filmes >= 10;

 
# =======              PARTE 3:              =======#
# =======  RELACIONANDO TABELAS COM O JOIN   =======#


-- CASE 4. Selecione a tabela de Atuações. Observe que nela, existem apenas os ids dos filmes e ids dos atores. Você seria capaz de completar essa tabela com as informações de títulos dos filmes e nomes dos atores?

SELECT *
FROM atuacoes;

SELECT *
FROM atores; -- daqui virá o nome dos atores: atores.nome_ator

SELECT *
FROM filmes; -- daqui virá o nome do filme: filmes.titulo

SELECT
	atuacoes.*,
    atores.nome_ator,
    filmes.titulo
FROM atuacoes
LEFT JOIN atores
ON atuacoes.id_ator = atores.id_ator
LEFT JOIN filmes
ON atuacoes.id_filme = filmes.id_filme;

-- CASE 5. Média de avaliações dos clientes

SELECT 
    clientes.nome_cliente,
    AVG(alugueis.nota) AS avaliacao_media
FROM alugueis
LEFT JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente
GROUP BY clientes.nome_cliente;





# =======                         PARTE 4:                           =======#
# =======  SUBQUERIES: UTILIZANDO UM SELECT DENTRO DE OUTRO SELECT   =======#

-- CASE 6. Você precisará fazer uma análise de desempenho dos filmes. Para isso, uma análise comum é identificar quais filmes têm uma nota acima da média. Você seria capaz de fazer isso?

SELECT AVG(nota) FROM alugueis; -- nota média = 7.94

SELECT
	alugueis.id_filme,
    filmes.titulo,
	AVG(nota) as media_nota
FROM alugueis
LEFT JOIN filmes
ON alugueis.id_filme = filmes.id_filme
GROUP BY id_filme
HAVING media_nota > (SELECT AVG(nota) FROM alugueis) -- tem que ser dinâmico !!! usar fórmula ao invés de int
ORDER BY media_nota DESC;

-- CASE 7. A administração da MovieNow quer relatar os principais indicadores de desempenho (KPIs) para o desempenho da empresa em 2018. Eles estão interessados em medir os sucessos financeiros, bem como o envolvimento do usuário. Os KPIs importantes são, portanto, a receita proveniente da locação de filmes, o número de locações de filmes e o número de clientes ativos (descubra também quantos clientes não estão ativos).




# =======   PARTE 5:     =======#
# =======  CREATE VIEW   =======#


-- CREATE/DROP VIEW: Guardando o resultado de uma consulta no nosso banco de dados


-- CASE 8. Crie uma view para guardar o resultado do SELECT abaixo.

CREATE VIEW resultados AS -- Salvar nova TABELA
SELECT
	titulo,
    COUNT(*) AS num_alugueis,
    AVG(nota) AS media_nota,
    SUM(preco_aluguel) AS receita_total
FROM alugueis
LEFT JOIN filmes
ON alugueis.id_filme = filmes.id_filme
GROUP BY titulo
ORDER BY num_alugueis DESC;

SELECT * FROM resultados;