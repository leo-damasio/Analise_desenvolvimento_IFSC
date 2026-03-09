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

require "Exerc3.inc.php";

$objInfoProd1 = new InfoProd();
$objInfoProd1->desc();
$objInfoProd1->showInfo();



?>

</body>
</html>