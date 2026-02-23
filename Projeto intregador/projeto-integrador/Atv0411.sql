
drop database atv0411;
#criação do banco de dados
Create database atv0411;
use atv0411;

#criação das tabelas
CREATE TABLE alunos 
(
    id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(512) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    PRIMARY KEY (id)
)  ENGINE INNODB;

CREATE TABLE cursos 
(
    id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(256) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
)  ENGINE INNODB;

CREATE TABLE disciplinas 
(
    id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(256),
    fk_curso INT NOT NULL,
    fase INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_curso)
        REFERENCES cursos (id) on delete cascade
)  ENGINE INNODB;

CREATE TABLE matriculas 
(
    id INT AUTO_INCREMENT NOT NULL,
    fk_curso INT NOT NULL,
    fk_disciplina INT NOT NULL,
    fk_aluno INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_curso) REFERENCES cursos (id) on delete cascade,
    FOREIGN KEY (fk_disciplina) REFERENCES disciplinas (id) on delete cascade,
    FOREIGN KEY (fk_aluno) REFERENCES alunos (id) on delete cascade
)  ENGINE INNODB;

#inserção de dados das tabelas
insert into alunos(nome, email, telefone)
values
('Leonardo','Leonardo@gmail.com',111111),
('Renato','Renato@gmail.com',111222),
('Barbara','Barbara@gmail.com',222222),
('Ana','Ana@gmail.com',333111),
('Gabriel','Gabriel@gmail.com',333222);

insert into cursos(nome, descricao)
values
('Analise e desenvolvimento de sistemas','Seja um desenvolvedor'),
('Engenharia','Seja um engenheiro'),
('Eletrotecnica','Seja um tecnico de eletronica'),
('Fisica aplicada','Seja um fisico'),
('Quimica','Seja um quimico');

insert into disciplinas(nome, fk_curso, fase)
values
('LP',1,1),('AS',1,2),
('CAL',2,1),('ME',2,2),
('CAL',3,1),('EL',3,2),
('CAL',4,1),('FI',4,2),
('QB',5,1),('QA',5,2);

insert into matriculas(fk_aluno, fk_curso, fk_disciplina)
values
(1,1,2),
(2,3,6),
(3,2,4),
(4,5,10),
(5,4,7);

#visualização das tabelas
select * from matriculas;
select * from alunos;
select * from disciplinas;
select * from cursos;

#deletes
delete from matriculas where id=3;
delete from disciplinas where id=2;
delete from alunos where id=1;
delete from cursos where id=3;

#deletes com cascade
delete from matriculas where id=3;
delete from disciplinas where id=2;
delete from alunos where id=1;
delete from cursos where id=3;
drop table matriculas;
drop table disciplinas;

CREATE TABLE disciplinas 
(
    id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(256),
    fk_curso INT NOT NULL,
    fase INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_curso) REFERENCES cursos (id)
)  ENGINE INNODB;

CREATE TABLE matriculas 
(
    id INT AUTO_INCREMENT NOT NULL,
    fk_curso INT NOT NULL,
    fk_disciplina INT NOT NULL,
    fk_aluno INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_curso) REFERENCES cursos (id),
    FOREIGN KEY (fk_disciplina) REFERENCES disciplinas (id),
    FOREIGN KEY (fk_aluno) REFERENCES alunos (id)
)  ENGINE INNODB;
