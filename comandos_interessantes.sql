use escola;

-- Esse comando vai olhar a estrutura da tabela
describe disciplinas;
-- ou 
desc disciplinas;

-- Esse comando vai adicionar um campo e seu tipo a tabela , sem precisar dropar ela
alter table disciplinas add cod_curso smallint;
-- ou
alter table disciplinas add cod_curso smallint;

-- Esse comando nos permite colocar a posicao que este campo vai ser inserido
-- atualmente é algo incomum, o normal são campos novos serem adicionandos por
-- ultimo, mas caso precise esse comando consegue
alter table disciplinas add teste tinyint after nome;

-- Esse comando deixa um campo em primeiro na tabela, muito incomum, mas é possivel
alter table disciplinas add teste1 tinyint first;

-- Esse comando vai derrubar a estrutura da coluna teste, sendo assim apagando ela do banco
alter table disciplinas drop teste;

-- Esse comando nos fornece a possibilidade de mudar o nome do campo ou seu tipo de dados
alter table disciplinas change cod_curso cod_curso tinyint;

-- Esse comando muda apenas o tipo do dado, não sendo possivel mudar o nome da coluna
alter table disciplinas modify cod_curso smallint;

-- Esse comando vai alterar o nome da tabela 
rename table disciplinas to materias;

-- Esse comando vai derrubar uma tabela dentro do banco caso ela já exista
drop table if exists disciplinas;