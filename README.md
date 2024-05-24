# Banco_de_dados

**Nomes:**<br>
- Ana Carolina Cogo Nami - 22.124.084-9<br>
- Enzo Lima Cassin - 22.124.083-1
<br><br>
Estamos usando a plataforma Cockroach labs para construir o banco de dados de forma gratuita e para colocar as informações e testar o código que estamos implementando estamos usando a ferramenta DBeaver.<br><br>
O código no arquivo 'tabelas.sql' está as tabelas criadas para cada uma das partes do diagrama.<br><br>
O código no arquivo 'ALTER.sql' está as alter tables que são usadas para poder pegar chave estrangeira das outras tabelas. <br><br>
O código no arquivo 'ALUNO.sql' está as informações criadas aleatoriamente usando a ferramenta [Mockaroo]([url](https://www.mockaroo.com)) para criar as informações para serem carregadas no banco de dados.<br><br>
O código no arquivo 'PROFESSOR.sql' está as informações criadas aleatoriamente usando a ferramenta Mockaroo para criar informações aleatórias para serem carregadas no banco de dados.<br><br>
O código no arquivo 'DISCIPLINAS.sql' está as informações construídas a mão para gerar as disciplinas de cada curso para serem carregadas no banco de dados. No sistema terá os cursos de durações diferentes (1 semestre, 2 semestres, 3 semestres e 4 semestres).<br><br>
O código no arquivo 'CURSO.sql' está as informações criadas manualmente dos cursos que estarão disponíveis nessa faculdade ficticia para serem carregadas no banco de dados. <br><br>
O código no arquivo 'DEPARTAMENTO.sql' está as informações que foram construídas a mão para gerar os departamentos que dará cada aula para serem carregados no banco de dados. <br><br>
O código no arquivo 'HIST_PROF.sql' está as informações referentes ao histórico de aulas dada pelos professores de um departamento gerados aleatoriamento usando a ferramenta Mockaroo para criar as informações de forma controlada e aleatória para serem carregadas no banco de dados. <br><br>
O código no arquivo 'MATRIZ.sql' está as informações que linkam as informações presentes no curso com as informações das disciplinas para serem carregados no banco de dados. Esse código foi criado a mão para melhor controle.<br><br>
O código no arquivo 'TCC.sql' está as informações que dos TCCs, como título, id e id do professor para carregar no banco de dados. Ela foi criada de forma controlada pela plataforma Mockaroo.<br><br>
O código no arquivo 'HIST_ALUNO.sql' está as informações de histórico do aluno com as notas, semestre, ano, id do aluno e código da disciplina. Esse arquivo foi criado a mão.<br><br>
Os arquivos 'Query_x.sql' são arquivos de querys que foram criados para os propósitos que estão comentados no começo do arquivo. Todo os arquivos foram escritos a mão.<br><br>


**Diagrama relacional:**
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
        string nome
        int duracao
        int id_departamento
        int id_curso
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

**Referência:**
Mockaroo: https://www.mockaroo.com
dbeaver: https://dbeaver.io
cockroach labs: https://www.cockroachlabs.com
