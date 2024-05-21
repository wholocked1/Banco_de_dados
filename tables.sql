CREATE SCHEMA faculdade; --criação do schema
CREATE TABLE faculdade.aluno ( --criação da tabela de aluno
  nome TEXT,
  id_aluno INT PRIMARY KEY,
  ciclo TEXT,
  formado BOOLEAN,
  id_tcc INT,
  id_curso INT
);
CREATE TABLE faculdade.curso ( --criação da tabela de curso
  duracao INT,
  id_departarmento INT,
  id_curso INT PRIMARY KEY,
  nome TEXT
);
CREATE TABLE faculdade.departamento ( --criação da tabela de departamento
  id_departarmento INT PRIMARY KEY,
  id_prof INT,
  nome TEXT
);
CREATE TABLE faculdade.tcc ( --criação da tabela de tcc
  id_tcc INT PRIMARY KEY,
  id_prof INT,
  titulo TEXT
);
CREATE TABLE faculdade.professor ( --criação da tabela de professor
  nome TEXT,
  id_departarmento INT,
  id_prof INT PRIMARY KEY
);
CREATE TABLE faculdade.hist_prof ( --criação da tabela de histórico do professor
  id_prof INT,
  codigo TEXT,
  semestre INT,
  ano INT
);
CREATE TABLE faculdade.hist_aluno ( --criação da tabela de histório de aluno
  id_aluno INT,
  codigo TEXT,
  semestre INT,
  ano INT,
  nota DECIMAL(4,2)
);
CREATE TABLE faculdade.matriz ( --criação da tabela de matriz
  codigo TEXT,
  id_curso INT,
  semestre INT
);
CREATE TABLE faculdade.disciplina ( --criação da tabela de disciplina
  nome TEXT,
  codigo TEXT PRIMARY KEY,
  id_departarmento INT,
  semestre INT
);
