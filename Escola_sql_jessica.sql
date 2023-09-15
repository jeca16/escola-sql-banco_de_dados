create database escola_SQL_Jessica;

use escola_SQL_Jessica;

create table Alunos
(
Aluno_id integer primary key,
Nome_aluno varchar (255),
Data_de_nascimento date,
Endereco varchar (255),
Telefone varchar (15)
);

create table Professores
(
Professor_id integer primary key,
Nome_professor varchar(255),
Data_de_contratacao date
);

create table Disciplinas
(
Disciplina_id integer primary key,
Nome_disciplina varchar(255),
Codigo_disciplina varchar (10),
Carga_horaria integer 
);

create table Turmas
(
Turma_id integer primary key,
Ano_escolar integer,
Id_disciplina integer,
Id_professor integer,

foreign key (Id_disciplina) references Disciplinas(Disciplina_id),
foreign key (Id_professor) references Professores(Professor_id)
);

create table Notas
(
Nota_id integer primary key,
id_aluno integer,
Id_disciplina integer,
Data_da_avaliacao date,
Nota float,

foreign key (id_aluno) references Alunos(Aluno_id),
foreign key (Id_disciplina) references Disciplinas(Disciplina_id)
);

create table Presenca
(
Presenca_id integer primary key,
Id_aluno integer,
Id_turma integer,
Data_da_aula date,
Presenca varchar(8),

foreign key (Id_aluno) references Alunos(Aluno_id),
foreign key (Id_turma) references Turmas (Turma_id)
);
