<?php

class InfoProd
{

    private $nome, $class, $price, $desconto;

    public function __construct()
    {

        $formNome = $_POST["nome"];
        $formClass = $_POST['class'];
        $formPrice = $_POST["price"];

        $this->nome = $formNome;
        $this->class = $formClass;
        $this->price = $formPrice;

    }

    public function desc()
    {

        if($this->class == "Hardware")
        {
            $this->desconto = $this->price * 0.5;
        }
        else
        {
            $this->desconto = $this->price * 0.7;
        }
        $this->price = $this->price - $this->desconto;


    }

    function showInfo()
    {

            echo "<div><p> Dados Cadastrados do produto: <br> Nome do produto: $this->nome <br> Classifição do produto: $this->class <br> Preço: $this->price</p></div>";

    }



}
