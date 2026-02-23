create database vendas;
use vendas;
create table Cd
(
Cod_cd int not null,
Cod_grav int not null,
nome_cd char(60),
Preco_venda float(16.2),
Data_lancamento date,
Cd_indicado int,
primary key(Cod_cd),
)
engine innoDB;


create table Gravadora
(
Cod_grav int not null,
nome_grav char(60),
endereco char(60),
telefone char(60),
contato char(60),
url char(60),
primary key(Cod_grav)
)
engine innoDB;

create table Cd_cat
(
Cod_cat int not null,
Menor_preco float(14.2),
Maior_preco float(14.2),
primary key(Cod_cat)
)
engine innoDB;

create table Faixa
(
Cod_musica int not null,
Cod_cd int not null,
Numero_faixa int,
primary key(Cod_musica, Cod_cd),
foreign key(Cod_cd) references Cd(Cod_cd),
foreign key(Cod_musica) references Musica(Cod_musica)
)
engine innoDB;

create table Musica
(
Cod_musica int not null,
Nome_musica char(60),
Duracao char(6.2),
primary key(Cod_musica)
)
engine innoDB;

create table Musica_autor
(
Cod_autor int not null,
Cod_musica int not null,
foreign key(Cod_musica) references Musica(Cod_musica),
foreign key(Cod_autor) references Autor(Cod_autor)
)
engine innoDB;

create table Autor
(
Cod_autor int not null,
Nome_autor char(60),
primary key(Cod_autor)
)
engine innoDB;



alter table Cd add Ano int not null;
alter table Musica_autor add participacao char(40) not null;
alter table Gravadora modify endereco char(100);
alter table musica modify duracao char(8);
alter table Gravadora drop url;
alter table Cd drop Cod_grav;
ALTER TABLE cd ADD CONSTRAINT Cod_grav FOREIGN key reference(Cod_grav) ;