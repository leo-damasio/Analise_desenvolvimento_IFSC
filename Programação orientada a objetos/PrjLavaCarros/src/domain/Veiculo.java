package domain;

public class Veiculo
{

    private int id;
    private String placa;
    private Modelo modelo;

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getPlaca()
    {
        return placa;
    }

    public void setPlaca(String placa)
    {
        this.placa = placa;
    }

    public Modelo getModelo()
    {
        return modelo;
    }

    public void setModelo(Modelo modelo)
    {
        this.modelo = modelo;
    }
}
