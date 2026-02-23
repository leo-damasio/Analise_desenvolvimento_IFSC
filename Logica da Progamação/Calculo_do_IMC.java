import java.util.Scanner;

public class Calculo_do_IMC 
{
    
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        float alt, peso, imc;

        System.out.print("Informe sua altura: ");
            alt = scan.nextFloat();
       
        System.out.print("Informe seu peso: ");
            peso = scan.nextFloat();

        imc = peso / (alt * alt);

        if(imc < 18.5)
        {
            System.out.print("seu imc é " + imc + " Abaixo do peso");
        }
        else
        if(imc < 25)
        {    
            System.out.print("seu imc é " + imc + " Peso normal");
        }
        else
        if(imc < 30)
        {
            System.out.print("seu imc é " + imc + " Sobrepeso");
        }
        else
        if (imc < 35)
        {
            System.out.print("seu imc é " + imc + " Obesidade - Grau I");   
        }
        else
        if (imc < 40)
        {
            System.out.print("seu imc é " + imc + " Obesidade - Grau II"); 
        }
        else
        if (imc > 40)
        {
            System.out.print("seu imc é " + imc + " Obesidade - Grau III");     
        }

        scan.close();

    }

}