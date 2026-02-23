package domain;

public class Modelo
{

    private int id;
    private String descricao;
    private Marca marca;
    private Motor motor;
    private ECategoria.eCategoria categoria;

    public Modelo()
    {

    motor = new Motor();

    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getDescricao()
    {
        return descricao;
    }

    public void setDescricao(String descricao)
    {
        this.descricao = descricao;
    }

    public Marca getMarca()
    {
        return marca;
    }

    public void setMarca(Marca marca)
    {
        this.marca = marca;
    }

    public Motor getMotor()
    {
        return motor;
    }

    public ECategoria.eCategoria getCategoria()
    {
        return categoria;
    }

    public void setCategoria(ECategoria.eCategoria categoria)
    {
        this.categoria = categoria;
    }
}
