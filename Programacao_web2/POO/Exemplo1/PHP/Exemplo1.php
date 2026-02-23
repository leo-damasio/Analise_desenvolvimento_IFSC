<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title> Introdução a poo com php </title>
    <link rel="stylesheet" href="../CSS/Exemplo1.css">

</head>
<body>

<h1> Fundamentos do PHP com POO - exemplo 1</h1>

<?php

require "Exemplo1.inc.php";

//Criar um objeto em php
$objItem1 = new Item();

//Atribuido valores para as variaveis do objeto
$objItem1->nome = "Impresora";
$objItem1->categoria = "Hardware periferico";
$objItem1->preco = 450.29;

//Mostrando valor de uma variavel de dentro do objeto
$categoriaAtual = $objItem1->getCategoria();
echo "<p> Categoria do objeto criado = $categoriaAtual </p>";
//Mostrando valor de uma variavel de dentro do objeto
$precoAtual = $objItem1->getPreco();
echo "<p> Preço do objeto criado = $precoAtual </p>";
//Alterando valor da variavel do objeto
$objItem1->setPreco(500.78);
//Mostrando o novo preço depois da alteração
$precoAtual = $objItem1->getPreco();
echo "<p> Novo preço do objeto criado = $precoAtual </p>";

?>



</body>
</html>