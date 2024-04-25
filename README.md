# Banco_de_dados

Nomes:
Ana Carolina Cogo Nami - 22.124.084-9<br>
Enzo Lima Cassin - 22.124.083-1

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
        int id_departamento
        int id_prof
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

  
```
