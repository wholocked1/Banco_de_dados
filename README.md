# Banco_de_dados

Nomes:
Ana Carolina Cogo Nami - 22.124.084-9<br>
Enzo Lima Cassin - 22.124.083-1

Estamos usando a plataforma Cockroach DB para construir, colocar as informações e testar o código que estamos implementando.<br><br>
O código no arquivo 'tabelas.sql' está as tabelas criadas para cada uma das partes do diagrama.<br><br>
O código no arquivo 'ALUNO.sql' está as informações criadas aleatoriamente usando a ferramenta [Mockaroo]([url](https://www.mockaroo.com)) para criar as informações para serem carregadas no banco de dados.<br><br>
O código no arquivo 'PROFESSOR.sql' está as informações criadas aleatoriamente usando a ferramenta Mockaroo para criar informações aleatórias para serem carregadas no banco de dados.<br><br>
O código no arquivo 'DISCIPLINAS.sql' está as informações construídas a mão para gerar as disciplinas de cada curso. No sistema terá os cursos de durações diferentes (1 semestre, 2 semestres, 3 semestres e 4 semestres).<br><br>

``` mermaid
erDiagram
    ALUNO {
        string nome
        int id_aluno
        int ciclo
        boolean formado
        int id_tcc
        int id_curso
    }
    PROFESSOR {
        string nome
        int id_departamento
        int id_professor
    }
    DEPARTAMENTO {
        string nome
        int id_departamento
        int id_prof_chefe
    }
    HISTORICO_ALUNO{
        int id_aluno
        int id_disciplina
        int semestre
        int ano
        float nota
    }
    DISCIPLINA{
        string nome
        string codigo
        int id_departamento
        int semestre
    }
    HISTORICO_PROF{
        int id_prof
        int id_disciplina
        int semestre
        int ano
    }
    CURSO{
        int duracao
        int id_departamento
    }
    TCC{
        int id_tcc
        string titulo
        int id_prof
    } 
    MATRIZ{
        int id_disc
        int id_curso
        int semestre
    }
    ALUNO }o--|| CURSO : tem
    ALUNO ||--|| HISTORICO_ALUNO: tem
    PROFESSOR ||--|| HISTORICO_PROF: tem
    DEPARTAMENTO ||--o{ PROFESSOR: tem
    HISTORICO_ALUNO }|--|{ MATRIZ: tem
    HISTORICO_PROF }|--|{ MATRIZ: tem
    TCC }|--|| PROFESSOR: tem
    ALUNO }|--o| TCC: tem
    MATRIZ ||--|{ DISCIPLINA: tem
    MATRIZ ||--|| CURSO: tem
    DEPARTAMENTO ||--o{ DISCIPLINA: tem

  
```

<!-- CURSO ||--|{DEPARTAMENTO: tem  - Departamento não pertence ao cursos específicos mas eles podem ser relacionados pela matriz 
