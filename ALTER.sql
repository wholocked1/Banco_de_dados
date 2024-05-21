ALTER TABLE faculdade.aluno
  ADD CONSTRAINT id_tcc FOREIGN KEY (id_tcc)
      REFERENCES faculdade.tcc
;
ALTER TABLE faculdade.aluno
  ADD CONSTRAINT id_curso FOREIGN KEY (id_curso)
      REFERENCES faculdade.curso
;
ALTER TABLE faculdade.curso
  ADD CONSTRAINT id_departarmento FOREIGN KEY (id_departarmento)
    REFERENCES faculdade.departamento
;
ALTER TABLE faculdade.departamento
  ADD CONSTRAINT id_prof_chefe FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
;
ALTER TABLE faculdade.tcc
  ADD CONSTRAINT id_prof FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
;
ALTER TABLE faculdade.professor
  ADD CONSTRAINT id_departarmento FOREIGN KEY (id_departarmento)
    REFERENCES faculdade.departamento
;
ALTER TABLE faculdade.hist_prof
  ADD CONSTRAINT id_prof FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
;
ALTER TABLE faculdade.hist_prof
  ADD CONSTRAINT id_disc FOREIGN KEY (codigo)
    REFERENCES faculdade.disciplina
;
ALTER TABLE faculdade.hist_aluno
  ADD CONSTRAINT id_aluno FOREIGN KEY (id_aluno)
    REFERENCES faculdade.aluno
;
ALTER TABLE faculdade.hist_aluno
  ADD CONSTRAINT id_disc FOREIGN KEY (codigo)
    REFERENCES faculdade.disciplina
;
ALTER TABLE faculdade.matriz
  ADD CONSTRAINT id_disc FOREIGN KEY (codigo)
    REFERENCES faculdade.disciplina
;
ALTER TABLE faculdade.matriz
  ADD CONSTRAINT id_curso FOREIGN KEY (id_curso)
      REFERENCES faculdade.curso
;
ALTER TABLE faculdade.disciplina
  ADD CONSTRAINT id_departarmento FOREIGN KEY (id_departarmento)
    REFERENCES faculdade.departamento
;
