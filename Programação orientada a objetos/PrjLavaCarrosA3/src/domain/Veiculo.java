package domain;

public class Veiculo
{

    private int id;
    private String placa;
    private String observacaes;
    private Modelo modelo;
    private Cor cor;

    public Veiculo()
    {

    }

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

    public String getObservacaes()
    {
        return observacaes;
    }

    public void setObservacaes(String observacaes)
    {
        this.observacaes = observacaes;
    }

    public Modelo getModelo()
    {
        return modelo;
    }

    public void setModelo(Modelo modelo)
    {
        this.modelo = modelo;
    }

    public Cor getCor()
    {
        return cor;
    }

    public void setCor(Cor cor)
    {
        this.cor = cor;
    }

}
