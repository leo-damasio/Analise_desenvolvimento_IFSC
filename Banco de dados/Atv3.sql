create database Banco;

create table Comprador
(
cdcomprador int,
nmcomprador CHAR(40),
nmendereco CHAR(40),
nrcpf int,
nmcidade CHAR(20),
nmbairro CHAR(20),
sgestado CHAR(2),
telefone CHAR(20),
email CHAR(80),
Primary key(cdcomprador)
);

create table Imovel
(
cdimovel int,
cdvendedor int,
cdbairro int,
cdcidade int,
sgestado CHAR(2),
nmendereco CHAR(40),
nrareautil int,
nrareatotal int,
dsimovel CHAR(250),
vlpreco int,
nrofertas int,
stvendido CHAR(1),
dtlancto DATE,
imovel_indicado int,
Primary key(cdimovel),
FOREIGN KEY (cdbairro) REFERENCES bairro(cdbairro),
foreign key(cdcidade) REFERENCES cidade(cdcidade),
foreign key(cdvendedor) REFERENCES vendedor(cdvendedor)
);


create table oferta
(
cdcomprador float(16,2),
cdimovel int,
vloferta int,
dtoferta DATE,
primary key(cdcomprador),
foreign key(cdimovel) REFERENCES imovel(cdimovel)
);


create table Bairro
(
cdbairro int,
nmbairro CHAR(20),
cdcidade int,
sgestado CHAR(2),
primary key(cdbairro),
foreign key(cdcidade) REFERENCES cidade(cdcidade)
);

create table Vendedor
(
cdvendedor int,
nmvendedor CHAR(40),
nmendereco CHAR(40),
nrcpf int,
nmcidade CHAR(20),
nmbairro CHAR(20),
sgestado CHAR(2),
telefone CHAR(20),
email CHAR(80),
primary key(cdvendedor)
);


create table estado
(
sgestado CHAR(2),
nmestado CHAR(20),
primary key(sgestado)
);


create table Cidade
(
cdcidade int,
nmcidade CHAR(20),
sgestado CHAR(2),
primary key(cdcidade),
foreign key(sgestado) references estado(sgestado)
);


insert into estado
values 
(1, 'SC'),
(2, 'RJ'),
(3, 'SP');

select * from vendedor;

insert into cidade
values
(1, 'Floripa', 1),
(2, 'Rio de Janeiro', 2),
(3, 'São paulo', 3);

insert into Bairro
values
(1, 'Centro', 1, 1),
(2, 'Glória', 2, 2),
(3, 'Bom Retiro', 3, 3);

insert into vendedor
values
(1, 'Carlinhos', 'Rua Mauro Ramos', 13413534569, '3-São paulo', 'Bom Retiro', 'SP', 69334351347, 'carlinhos@gmail.com'),
(2, 'Leonardo', 'Rua Araci Bernatete Hermes', 13915945927, 'centro', 'Floripa', 'SC', 48991250306, 'Leonardo.f.damasio@gmail.com'),
(3, 'aran', 'Avenida Brasilia', 13945425437, 'Gloria', 'Rio de Janeiro', 'RJ', 48991254869, 'aran@gmail.com');

insert into comprador
values
(1, 'Vinicius', 'Rua Antonio Basil Scherer', 13959822547, 'centro', 'Floripa', 'SC', 48557126983, 'Vinicius@gmail.com'),
(2, 'Marcus', 'Rua Mauro Ramos', 15946829557, 'Gloria', 'Rio de Janeiro', 'RJ', 48991574862, 'Marcus@gmail.com'),
(3, 'Jean', 'Rua das Rosas', 12945926367, 'São paulo', 'Bom Retiro', 'SP', 48991657894, ');
