<?php

class Veiculo
{

    private $fabri, $model, $price, $classyCar;

    public function __construct()
    {

        $formfabri = $_POST["fabri"];
        $formModel = $_POST["model"];
        $formPrice = $_POST["price"];

        $this->fabri = $formfabri;
        $this->model = $formModel;
        $this->price = $formPrice;

    }

    public function classCar()
    {

        if($this->price < 100000)
        {

            $this->classyCar = "Carro popular";

        }
        elseif($this->price >= 300000)
        {

            $this->classyCar = "Carro de alta performance";

        }
        else
        {

            $this->classyCar = "Carro de performance intermediaria";

        }

    }




    function showInfo()
    {

        if($this->classyCar == "Carro popular")
        {
            echo "<div><p>Classe do carro: $this->classyCar</p></div>";
            echo "<div><p> Dados Cadastrados do veículo: <br> Fabricante: $this->fabri <br> Modelo: $this->model <br> Preço: $this->price</p></div>";
        }
        else
        {
            echo "<div><p>Classe do carro: $this->classyCar</p></div>";
            echo "<div class='error'><p class='error'><strong>Tentativa de cadastro de carro fora da categoria permitida <br> erro de cadastro</strong></p></div>";
        }

    }



}
