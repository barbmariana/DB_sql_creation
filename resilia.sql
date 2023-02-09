CREATE table alunos (
    id int auto_increment primary key,
    nome varchar(100),
    email_aluno varchar(100),
    turma_id int
);

CREATE TABLE cursos (
    id int auto_increment primary key,
    nome_curso varchar(100)
);

CREATE TABLE professor(
  id int auto_increment primary key,
  nome_professor varchar (100),
  email_professor varchar(100)
);

CREATE TABLE turmas(
    id int auto_increment primary key,
    semestre varchar(50),
    curso_id int,
    professor_id int
);

ALTER TABLE `alunos` ADD FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`);

INSERT INTO alunos (nome, email_aluno) values
("Mariana Barbosa", "exemploemail1@gmail.com"),
("Aluno2", "exemploemail2@gmail.com");

INSERT INTO cursos (nome_curso) values
("desenvolvimento front end"),
("desenvolvimento back end");

INSERT INTO professor (nome_professor, email_professor) values
("professor1", "emailprofessor1@gmail.com"),
("professor2", "emailprofessor2@gmail.com");

INSERT INTO turmas (semestre) values
("2022.1"),
("2022.2");

select turmas.id, turmas.semestre, turmas.curso_id, turmas.professor_id, professor.id, cursos.id
from ((turmas
inner join professor on turmas.professor_id=professor.id)
inner join cursos on turmas.curso_id=cursos.id)

