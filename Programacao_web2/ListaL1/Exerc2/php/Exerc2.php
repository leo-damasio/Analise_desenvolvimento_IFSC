<!doctype html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <title>Primeiro exercicio pratico</title>
    <link href="../css/formata-pagina.css" rel="stylesheet">
</head>
<body>

<h1>Atividade Pratica de POO em php</h1>

<?php

require "Exerc2.inc.php";

$objVeiculo1 = new Veiculo();

$objVeiculo1->classCar();
$objVeiculo1->showInfo();



?>

</body>
</html>