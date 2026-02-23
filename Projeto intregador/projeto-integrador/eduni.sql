create database eduni;

create table usarios
(
    id int not null,
    nome varchar(100) not null,
    email varchar(70),
    senha varchar(30),
    idade int not null,
    primary key (id)
);

create table posts
(
    id int not null,
    titulo char(100) not null,
    conteudo varchar(300),
    userFK int not null,
    primary key (id),
    foreign key (userFK) references usuarios(id)
);

create table comentarios
(
    id int not null,
    conteudo varchar(200),


)


create table comunidades
(
    id int not null,
    nome varchar(100) not null,
    imagem varchar(1000),
    primary key (id)
);

create table coneccoes
(
    userFK int not null,
    ComuFK int not null,
    foreign key (userFK) references usuarios(id),
    foreign key (comuFK) references comunidades(id)
);



