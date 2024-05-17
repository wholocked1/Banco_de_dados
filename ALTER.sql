ALTER TABLE faculdade.aluno
  ADD id_tcc FOREIGN KEY (id_tcc)
      REFERENCES faculdade.tcc
  ADD id_curso FOREIGN KEY (id_curso)
      REFERENCES faculdade.curso
;
ALTER TABLE faculdade.curso
  ADD id_depart FOREIGN KEY (id_depart)
    REFERENCES faculdade.departamento
;
ALTER TABLE faculdade.departamento
  ADD id_prof_chefe FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
;
ALTER TABLE faculdade.tcc
  ADD id_prof FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
;
ALTER TABLE faculdade.professor
  ADD id_depart FOREIGN KEY (id_depart)
    REFERENCES faculdade.departamento
;
ALTER TABLE faculdade.hist_prof
  ADD id_prof FOREIGN KEY (id_prof)
    REFERENCES faculdade.professor
  ADD id_disc FOREIGN KEY (id_disc)
    REFERENCES faculdade.disciplina
;
ALTER TABLE faculdade.hist_aluno
  ADD id_aluno FOREIGN KEY (id_aluno)
    REFERENCES faculdade.aluno
  ADD id_disc FOREIGN KEY (id_disc)
    REFERENCES faculdade.disciplina
;
ALTER TABLE faculdade.matriz
  ADD id_disc FOREIGN KEY (id_disc)
    REFERENCES faculdade.disciplina
  ADD id_curso FOREIGN KEY (id_curso)
      REFERENCES faculdade.curso
;
ALTER TABLE faculdade.disciplina
  ADD id_depart FOREIGN KEY (id_depart)
    REFERENCES faculdade.departamento
;
