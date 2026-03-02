<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title> Introdução a poo com php </title>
    <link rel="stylesheet" href="../CSS/Exemplo2.css">

</head>
<body>

<h1> Fundamentos do PHP com POO - exemplo 2</h1>
<div>
<?php

require "Exemplo2.inc.php";
$objCurso1 = new Curso("ADS", 3);
$objCurso2 = new Curso("Gestão de TI", 6);

$nomeCurso1 = $objCurso1->getNome();
$nomeCurso2 = $objCurso2->getNome();
$duraCurso1 = $objCurso2->classificarCurso();
$duraCurso2 = $objCurso2->classificarCurso();

echo "<p>O nome do Primeiro curso é: $nomeCurso1 e a duração é: $duraCurso1 </p><br>";
echo "<p>O nome do Segundo curso é: $nomeCurso2 e a duração é: $duraCurso2 </p>";

?>
</div>


</body>
</html>