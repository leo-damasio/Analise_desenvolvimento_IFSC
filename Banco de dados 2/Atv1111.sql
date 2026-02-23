drop database if exists atv1111;
create database atv1111;
use atv1111;

drop table if exists fornecedores;
create table fornecedores
(
    id       int auto_increment,
    nome     varchar(255)  not null,
    email    varchar(1024) not null,
    telefone varchar(25)   not null,
    primary key (id)
) engine INNODB;

drop table if exists produtos;
create table produtos
(
    id        int auto_increment not null,
    nome      varchar(255)       not null,
    descricao text               not null,
    peso      float              not null,
    primary key (id)
) engine INNODB;

create table pedidos
(
    id            int   not null auto_increment,
    FK_Fornecedor int   not null,
    FK_Produto    int   not null,
    quantidade    int   null,
    valor         float not null,
    primary key (id),
    foreign key (FK_Fornecedor) references fornecedores (id),
    foreign key (FK_Produto) references produtos (id)
) engine INNODB;

create table estoque
(
    id            int auto_increment,
    FK_Fornecedor int   not null,
    FK_Produto    int   not null,
    disponiveis   int   null,
    custo         float not null,
    primary key (id),
    foreign key (FK_Fornecedor) references fornecedores (id),
    foreign key (FK_Produto) references produtos (id)
) engine INNODB;

insert into fornecedores(nome, email, telefone)
values ('Fornecedor A', 'a@gmail.com', '111-111'),
       ('Fornecedor B', 'b@gmail.com', '111-222'),
       ('Fornecedor C', 'c@gmail.com', '222-111'),
       ('Fornecedor D', 'd@gmail.com', '222-222'),
       ('Fornecedor E', 'e@gmail.com', '333-111');

insert into produtos(nome, descricao, peso)
values ('Agenda', 'Para seus compromissos', 100),
       ('Borracha', 'Apaga lápis', 150),
       ('Caneta', 'Caneta azul', 300),
       ('Diario', 'Para seus pensamentos', 500),
       ('Estojo', 'Na verdade é um penal', 100);

insert into pedidos(FK_Fornecedor, FK_Produto, quantidade, valor)
values (1, 2, 10, 10),
       (1, 3, 10, 5.5),
       (2, 1, 10, 1500),
       (2, 4, 100, 2355),
       (3, 5, 50, 532),
       (5, 1, 10, 1000);

insert into estoque(FK_Fornecedor, FK_Produto, disponiveis, custo)
select fornecedores.id,
       produtos.id,
       sum(pedidos.Quantidade),
       (sum(pedidos.valor) / sum(pedidos.quantidade))

from fornecedores
        join pedidos
            on fornecedores.id = pedidos.FK_Fornecedor
        join produtos
            on pedidos.FK_Produto = produtos.id
group by pedidos.FK_Produto, pedidos.FK_Fornecedor;



/*
    values
    (1,2,10,10/10),
    (1,3,10,5.5/10),
    (2,1,10,1500/100),
    (2,4,100,2355/100),
    (3,5,50,532/50),
    (5,1,10,1000/10);

*/

#1. Mostrar a lista de fornecedores dos produtos que aparecem em pedidos;
select * from fornecedores
    join pedidos
        on fornecedores.id = pedidos.id_fornecedor;

#1.1 Mostrar a lista de fornecedores em ordem alfabética e sem repetições

select f.nome as 'Nome do Fornecedor', f.email as 'Email'from fornecedores f
    join pedidos pe
        on f.id = pe.FK_Fornecedor
group by f.nome
order by f.nome asc;


#1.2

select f.nome as 'Nome do Fornecedor', f.email as 'Email', pe.quantidade as 'Quantidade comprada', pr.nome as 'Produto'
from fornecedores f
    join pedidos pe
        on f.id = pe.FK_Fornecedor
    join produtos pr
        on pr.id = pe.FK_Produto;

#1.3

select f.nome as 'Nome do Fornecedor', sum(p.valor) as 'Total de venda' from fornecedores f
    join pedidos p on f.id = p.FK_Fornecedor
group by nome;

#2 Mostrar a lista completa de pedidos com as dados de cada produto;

select * from pedidos pe
    join produtos pr
        on pe.FK_Produto = pr.id;


#2.1 Mostre uma tabela com Quantidade, Nome do Produto, Peso do produto e Peso Total do pedido(quantidade * peso)

select pe.quantidade, pr.nome, pr.peso, (pe.quantidade * pr.peso) as 'Peso total' from pedidos pe
    join produtos pr
        on pe.FK_Produto = pr.id;

#2.2 Inclua na tabela anterior o nome e email do fornecedor.

select pe.quantidade, pr.nome, pr.peso, (pe.quantidade * pr.peso) as "Peso total", f.email from pedidos pe
    join produtos pr
        on pe.FK_Produto = pr.id
    join fornecedores f
        on pe.FK_Fornecedor = f.id;

#3 Mostrar a lista de produtos e seus fornecedores para os produtos que não estejam disponíveis
update estoque set disponiveis = 0 where id=6;
update estoque set disponiveis = 0 where id=4;
select * from estoque;

select * from produtos p
    join estoque e
        on e.FK_Produto = p.id
    join fornecedores f
        on e.FK_Fornecedor = f.id
    where e.disponiveis = 0;

#3.1 Inclua os dados dos produtos na pesquisa anterior

select f.nome, f.email, p.nome, p.descricao, e.disponiveis from produtos p
    join estoque e
        on e.FK_Produto = p.id
    join fornecedores f
        on e.FK_Fornecedor = f.id
where e.disponiveis = 0;

#3.2 Ajuste a tabela anterior para apresentar somente dados amigáveis para humanos

select f.nome as 'Fornecedor', f.email as 'E-mail', p.nome as 'Produto', p.descricao as 'Descrição', e.disponiveis as 'Estoque' from produtos p
    join estoque e
        on e.FK_Produto = p.id
    join fornecedores f
        on e.FK_Fornecedor = f.id
where e.disponiveis = 0;

#3.3 Mostre uma tabela com o total disponível de cada produto em estoque por fornecedor

select f.nome as 'Fornecedor', p.nome as 'Produto', sum(e.disponiveis) as 'Total disponivel' from produtos p
    join estoque e
        on e.FK_Produto = p.id
    join fornecedores f
        on e.FK_Fornecedor = f.id
group by f.nome;

