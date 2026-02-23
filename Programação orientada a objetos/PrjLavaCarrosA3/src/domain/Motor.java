package domain;

public class Motor
{

    private int potencia;
    private ETipoCombustivel.eTipoCombustivel tipoCombustivel;

    public int getPotencia()
    {
        return potencia;
    }

    public void setPotencia(int potencia)
    {
        this.potencia = potencia;
    }

    public ETipoCombustivel.eTipoCombustivel getTipoCombustivel()
    {
        return tipoCombustivel;
    }

    public void setTipoCombustivel(ETipoCombustivel.eTipoCombustivel tipoCombustivel)
    {
        this.tipoCombustivel = tipoCombustivel;
    }
}
