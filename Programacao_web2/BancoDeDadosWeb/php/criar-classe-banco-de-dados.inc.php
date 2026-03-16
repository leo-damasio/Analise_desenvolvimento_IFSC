 <?php

class BancoDeDados
{

    public $nomeDoBanco;
    public $nomeDaTabela;
    public $servidor;
    public $usuario;
    public $senha;

    public function __construct($servidor, $usuarioBanco, $senhaBanco, $nomeDoBanco, $nomeDaTabela)
    {
        $this->servidor     = $servidor;
        $this->usuario      = $usuarioBanco;
        $this->senha        = $senhaBanco;
        $this->nomeDoBanco  = $nomeDoBanco;
        $this->nomeDaTabela = $nomeDaTabela;
    }

    function criarConexao()
    {

        $conexao = new mysqli($this->servidor, $this->usuario, $this->senha);

        if ($conexao->connect_error) {
            die("Conexão falhou: " . $conexao->connect_error);
        }

        return $conexao;

    }

}