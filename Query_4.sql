-- listar todos os professores que são chefes de departamento, junto com o nome do departamento

with chefe as(
select p.nome as "nome", d.nome as "nomed" from faculdade.professor p 
inner join faculdade.departamento d 
on p.id_prof = d.id_prof
)
select nome, nomed from chefe;
