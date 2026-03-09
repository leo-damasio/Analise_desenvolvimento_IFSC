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

require "atividade1.inc.php";

$objLivro1 = new Livro();

//aplicar o desconto
$objLivro1->descCalc();
//mostrar as informações do livro
$objLivro1->showInfo();


?>

</body>
</html>