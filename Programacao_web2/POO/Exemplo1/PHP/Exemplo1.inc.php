<?php
//declarando a classe item
class Item
{
    //definindo os atributos ou variaveis de instancia
    public $nome, $preco, $categoria;



    //Metodo que retorna o valor de uma variavel
    function getCategoria()
    {
        return $this->categoria;
        //dentro de um metodo o chamnado de uma variavel nunca é acompanhada com o sifrão
    }

    //metodo que modifica o valor de uma variavel
    function setPreco($novoPreco)
    {
        $this->preco = $novoPreco;
    }

    //metodo que retorna o valor de uma varivel
    function getPreco()
    {
        return $this->preco;
    }

}
