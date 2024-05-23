-- listar alunos que já se formaram (foram aprovados em todos os cursos de uma matriz curricular) em um determinado semestre de um ano

with hist as(
select a.nome as "nome", h.codigo as "disc", h.nota as "nota"
from faculdade.aluno a
inner join faculdade.hist_aluno h
on h.id_aluno = a.id_aluno)
select nome, disc, nota from hist
