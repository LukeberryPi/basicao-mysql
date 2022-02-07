# ==== INTENSIVÃO DE SQL ==== #
# =====      AULA 4      ====== #


# ======================== PARTE 1 ===========================#
#===============  CRIAÇÃO e CONFIGURAÇÃO DO BD ===============#
#=============================================================#

-- O primeiro passo é CRIAR e CONFIGURAR o banco de dados 'hashtagidiomas'.

CREATE DATABASE hashtagidiomas;
USE hashtagidiomas;

# ======================== PARTE 2 ===========================#
#===================  CRIAÇÃO DAS TABELAS ====================#
#=============================================================#

-- No nosso projeto, teremos que criar 3 tabelas: cursos, alunos e vendas.

/*
TABELA 1: cursos
•	id_curso
•	nome_curso
•	valor_curso
*/

CREATE TABLE cursos (
	id_curso INT,
        nome_curso VARCHAR(40),
    valor_curso DECIMAL(10, 2)
);


/*
TABELA 2: alunos
•	id_aluno
•	nome_aluno
•	email
*/

CREATE TABLE alunos (
	id_aluno INT,
    nome_aluno VARCHAR(50),
    email VARCHAR(50)
);

/*
TABELA 3: vendas
•	id_venda
•	data_venda
•	id_curso
•	id_aluno
*/

CREATE TABLE vendas (
	id_venda INT,
    data_venda DATE,
    id_curso INT,
    id_aluno INT
);


# ======================== PARTE 3 ===========================#
#==============  ADICIONANDO VALORES NA TABELA ===============#
#=============================================================#

/*
TABELA 1: cursos

Adicione os valores abaixo na tabela de cursos

id_curso | nome_curso | valor_curso |
_____________________________________
1        | Inglês     | 1200        |
2        | Espanhol   | 1000        |
3        | Francês    | 900         |
*/

INSERT INTO cursos
VALUE
	(1, 'Inglês', 1200),
    (2, 'Espanhol', 1000),
    (3, 'Francês', 800);
    
SELECT * FROM cursos;

/*
TABELA 2: alunos

Adicione os valores abaixo na tabela de alunos

id_aluno | nome_aluno | email                  |
________________________________________________
1        | Eliane     | eliane@gmail.com       |
2        | João       | j.123@hotmail.com      |
3        | Pedro      | pedrinho@gmail.com    |
*/

INSERT INTO alunos
VALUES
	(1, 'Eliane', 'eliane@gmail.com'),
    (2, 'João', 'j.123@hotmal.com'),
    (3, 'Pedro', 'pedrinho@gmail.com');
    
SELECT * FROM alunos;

/*
TABELA 3: vendas

Adicione os valores abaixo na tabela de vendas

id_venda | data_venda      | id_curso  | id_aluno |
__________________________________________________
1        | '2022-01-10'    | 1         | 1        |
2        | '2022-01-10'    | 2         | 1        |
3        | '2022-01-10'    | 3         | 1        |
4        | '2022-01-13'    | 1         | 2        |
5        | '2022-01-21'    | 2         | 3        |
*/

INSERT INTO vendas
VALUES
	(1, '2022-01-10', 1, 1),
    (2, '2022-01-10', 2, 1),
    (3, '2022-01-10', 3, 1),
    (4, '2022-01-13', 1, 2),
    (5, '2022-01-21', 2, 3);

SELECT * FROM vendas;


# ======================== PARTE 4 ===========================#
#==============  ATUALIZANDO VALORES NA TABELA ===============#
#=============================================================#

-- O valor do curso de Francês será reajustado de R$900 para R$750. Atualize o valor na tabela de cursos.

UPDATE cursos
SET valor_curso = 750
WHERE id_curso = 3;

SELECT * FROM cursos;

# ======================== PARTE 5 ===========================#
#===============  EXCLUINDO VALORES DA TABELA ================#
#=============================================================#

-- Selecione a tabela de vendas. A compra do cliente 'Pedro' (id_venda = 5) foi reembolsada e por isso ela deve ser excluída do controle de vendas.

SELECT * FROM vendas;

DELETE FROM vendas
WHERE id_venda = 5;

# ======================== PARTE 5 ===========================#
#===========  EXCLUINDO TABELAS E BANCOS DE DADOS ============#
#=============================================================#

-- Exclua a tabela vendas e em seguida o banco de dados hashtagidiomas.

DROP TABLE vendas;

DROP DATABASE hashtagidiomas;
