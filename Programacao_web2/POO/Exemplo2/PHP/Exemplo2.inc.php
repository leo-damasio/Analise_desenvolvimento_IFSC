<?php
//declarando a classe item
class curso
{
    //definindo os atributos ou variaveis de instancia
    public $nome, $duracao;


    //Criando um construtor do objeto
    function __construct($inicializaNome, $inicializaDuracao)
    {

        $this->nome = $inicializaNome;
        $this->duracao = $inicializaDuracao;

    }

    //metodo para clasificar a duraçao do curso
    function classificarCurso()
    {
        if($this->duracao <= 1)
        {
            $mensagem = "curso de curta duração";
        }
        elseif($this->duracao < 4)
        {
            $mensagem = "curso de media duração";
        }
        else
        {
            $mensagem = "curso de longa duração";
        }
        return $mensagem;
    }



}
