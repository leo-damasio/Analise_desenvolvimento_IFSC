<?php

class ContaBancaria
{

    private $saldo;

    function __construct($inicializaSaldo)
    {

        $this->saldo = $inicializaSaldo;

    }

    public function getSaldo()
    {
        return $this->saldo;
    }

    public function depositar($cash)
    {
        $this->saldo = $this->saldo + $cash;
    }

    public function sacar($cash)
    {
        $this->saldo = $this->saldo - $cash;
    }




}
?>
