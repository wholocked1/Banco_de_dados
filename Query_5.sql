-- saber quais alunos formaram um grupo de TCC e qual professor foi o orientador

with tcc as(
select p.nome as "nomep", a.nome as "nomea"
from faculdade.tcc t 
inner join faculdade.aluno a 
on a.id_tcc = t.id_tcc
inner join faculdade.professor p
on t.id_prof = p.id_prof
)
select nomep, nomea from tcc;
