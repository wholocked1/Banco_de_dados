Aluno
VARCHAR [255] nome;
VARCHAR [255] curso;
int semestre;
int matrícula; *
int data_de_conclusão;

Professor
VARCHAR [255] nome;
VARCHAR [255] departamento;
int matrícula; (?)*
boolean chefe_departamento;

Curso
int duração;
VARCHAR [255] curso;

Departamento
VARCHAR [255] curso;
VARCHAR [255] departamento;

Disciplina
VARCHAR [255] departamento;
professor professor;
VARCHAR [6] código; *
