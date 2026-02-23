#drop database if exists rel0411;
create database if not exists rel0711;
use rel0711;

drop table if exists matriculas;
drop table if exists disciplinas;
drop table if exists cursos; 
drop table if exists alunos;


create table alunos(
	id int auto_increment,
    nome varchar(1024) not null,
    email varchar(512) not null,
    telefone varchar(20) not null,
    primary key(id)
)engine=innodb;


create table cursos(
	id int auto_increment,
    nome varchar(256) not null,
    descricao text not null,
    tipo int not null,
    primary key(id)
)engine=innodb;


create table disciplinas(
	id int auto_increment,
    nome varchar(256),
    curso_id int not null,
    fase int not null,
    primary key(id),
    foreign key(curso_id) references cursos(id)
)engine=innodb;


create table matriculas(
	id int auto_increment,
    aluno_id int not null,
    curso_id int not null,
    disciplina_id int not null,
    primary key(id),
    foreign key(aluno_id) references alunos(id),
    foreign key(curso_id) references cursos(id),
    foreign key(disciplina_id) references disciplinas(id)
)engine=innodb;


insert into alunos(nome, email, telefone)
	values	('Ana','ana@email','111-111'), ('Bruno','bruno@email','222-222'), 
			('Claudia','claudia@email','333-333'), ('Daniel','daniel@email','444-444'), 
            ('Elena','elena@email','555-555');
        
insert into cursos(nome, descricao, tipo)
	values	('TDS','Dev. Sistemas','1'), ('GTI','Gestão TI','2'), ('TII','Inf. Internet','1'),
			('GP','Gestão Pub.','3'), ('ME','Mídias Ed.','3');

insert into disciplinas(nome, curso_id, fase)
	values	('BD',1,2), ('LP',1,1), ('POO',2,2), ('LP',3,1), ('PW',1,3);

insert into matriculas(aluno_id, curso_id, disciplina_id)
	values	(1,1,1), (1,1,2), (2,2,2), (2,2,4), (3,1,1);

select * from alunos;
select * from cursos;
select * from disciplinas;
select * from matriculas;

#delete from matriculas where id=3;
#delete from disciplinas where id=1;
#delete from alunos where id=1;
#delete from cursos where id=3;



drop table if exists matriculas;
drop table if exists disciplinas;
drop table if exists cursos; 
drop table if exists alunos;


create table alunos(
	id int auto_increment,
    nome varchar(1024) not null,
    email varchar(512) not null,
    telefone varchar(20) not null,
    primary key(id)
)engine=innodb;


create table cursos(
	id int auto_increment,
    nome varchar(256) not null,
    descricao text not null,
    tipo int not null,
    primary key(id)
)engine=innodb;

create table disciplinas(
	id int auto_increment,
    nome varchar(256),
    curso_id int not null,
    fase int not null,
    primary key(id),
    foreign key(curso_id) references cursos(id) on delete cascade
)engine=innodb;


create table matriculas(
	id int auto_increment,
    aluno_id int not null,
    curso_id int not null,
    disciplina_id int not null,
    primary key(id),
    foreign key(aluno_id) references alunos(id) on delete cascade,
    foreign key(curso_id) references cursos(id) on delete cascade,
    foreign key(disciplina_id) references disciplinas(id) on delete cascade
)engine=innodb;


insert into alunos(nome, email, telefone)
	values	('Ana','ana@email','111-111'), ('Bruno','bruno@email','222-222'), 
			('Claudia','claudia@email','333-333'), ('Daniel','daniel@email','444-444'), 
            ('Elena','elena@email','555-555');
        
insert into cursos(nome, descricao, tipo)
	values	('TDS','Dev. Sistemas','1'), ('GTI','Gestão TI','2'), ('TII','Inf. Internet','1'),
			('GP','Gestão Pub.','3'), ('ME','Mídias Ed.','3');

insert into disciplinas(nome, curso_id, fase)
	values	('BD',1,2), ('LP',1,1), ('POO',2,2), ('LP',3,1), ('PW',1,3);

insert into matriculas(aluno_id, curso_id, disciplina_id)
	values	(1,1,1), (1,1,2), (2,2,2), (2,2,4), (3,1,1);

select * from alunos;
select * from cursos;
select * from disciplinas;
select * from matriculas;

delete from matriculas where id=3;
delete from disciplinas where id=1;
delete from alunos where id=1;
delete from cursos where id=2;