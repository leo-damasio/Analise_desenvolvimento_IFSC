<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title> Introdução a poo com php </title>
    <link rel="stylesheet" href="../CSS/Exemplo3.css">

</head>
<body>

<h1> Fundamentos do PHP com POO - exemplo 3</h1>
<div>

<?php

    require "Exemplo3.inc.php";

    $conta1 = new ContaBancaria(5000);
    $conta2 = new ContaBancaria(10000);

    //Despositar
    $conta1->depositar(1000);
    $conta2->depositar(1000);

    //Sacar
    $conta1->sacar(1000);

    //Acessar saldo
    $saldo1 = $conta1->getSaldo();
    $saldo2 = $conta2->getSaldo();

    echo "<p>Após as operações de saque e depósito, seu saldo atual, para ambas as contas, é o sequinte: <br> CONTA_1 = R$$saldo1 <br> CONTA_2 = R$$saldo2</p>"
?>

</body>
</html>
