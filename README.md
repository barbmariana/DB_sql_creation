# Banco_de_Dados_M4_resilia

Creating a database for a web development class (Resilia) project. 

(PT-BR)

Criando um banco de dados para o projeto do curso de Desenvolvimento Web da Resilia. 


## The project / O projeto 💻

For this project we had to start creating a database for a school. We had to answer the questions, discover the database entities and insert some data.

(PT-BR)
Para o projeto, tivemos que criar um banco de dados para um curso. Tivemos que responder as questões do trabalho, descobrir as entidades e inserir alguns dados. 


## Goal / Objetivo 📍

Resilia is thinking about launching a new system of follow-up, for that they need help to model a database that will store your courses, classes and students

(PT-BR)
A Resilia está pensando em lançar um novo sistema de acompanhamento e para isso precisa de ajuda para modelar um banco de dados que vai armazenar seus cursos, turmas e alunos.


## Questions / As perguntas 💬

⇨ Existem outras entidades além dessas três? 
Pensando em um modelo de curso, é possível pensar em outras entidades importantes para um banco de dados. Para esse trabalho, criei a entidade de "Alunos"

⇨ Quais são os principais campos e tipos?
Para alunos, os atributos definidos foram nome e email como varchar e id como int. Para cursos, os atributos definidos foram id como inteiro e nome como varchar. Para professores foram definidos os atributos de nome e email como varchar e id como int. Para turma, foram definidos id como int, semestre/professor/curso como varchar.

⇨ Como essas entidades estão relacionadas? 
Foram definidas três chaves estrangeiras que fazem as ligações entre entidades. Aluno recebe uma FK turma_id que se relaciona com o id de turmas. Turmas recebe curso_id e professor_id que se relaciona com os ids das entidades cursos e professor. 

<div>
  <h1 style='text-align:center'> Meu Diagrama </h1>
</img src='./fotoDiagrama.png'>
</div>



