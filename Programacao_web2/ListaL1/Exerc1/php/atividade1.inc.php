<?php

class Livro
{

    private $title, $creator, $isbn, $price, $percDesc;

    public function __construct()
    {

        $formTitle = $_POST["title"];
        $formCreator = $_POST["creator"];
        $formIsbn = $_POST["isbn"];
        $formPrice = $_POST["price"];
        $formPercDesc = $_POST["desc"];

        $this->title = $formTitle;
        $this->creator = $formCreator;
        $this->isbn = $formIsbn;
        $this->price = $formPrice;
        $this->percDesc = $formPercDesc;

    }

    function showInfo()
    {
        echo "<div><p> Dados Atualizados do livro cadastrado apos o desconto: <br> Título: $this->title <br> Autor: $this->creator <br> ISBN: $this->isbn <br> Preço: $this->price</p></div>";
    }

    public function descCalc()
    {
        $desc = $this->price * ($this->percDesc / 100);
        $this->price = $this->price - $desc;
    }

}
