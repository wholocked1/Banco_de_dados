Aluno
VARCHAR [255] nome;
int id_curso;
int semestre;
int matrícula; *
int data_de_conclusão;

Professor
VARCHAR [255] nome;
int id_departamento;
int id_prof;

Curso
int duração;
VARCHAR [255] curso;

Departamento
int id_departamento;
int id_prof;
int id_prof_chefe;

Disciplina
VARCHAR [255] departamento;
professor professor;
VARCHAR [6] código; *

Histórico
int id_aluno
int id_disc
int ano
int semestre
float nota

matriz

