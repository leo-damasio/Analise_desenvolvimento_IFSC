
import java.util.Scanner;

public class ATV_13 
{
    
    

    public static void main(String[] args) 
    {
        int n;
        int r;
        char resposta;
        Scanner scan = new Scanner(System.in);

        do 
        {
            System.out.print("Digite um número: ");
            n = scan.nextInt();

            for(int i = 1; i <= 10; i++ )
            {
                r = n * i;
                System.err.println(n + " x " + i + " = " + r);
            }
            System.out.println("Deseja fazer outra tabuada(S/N)? ");
            resposta = scan.next().charAt(0);
        } 
        while (resposta == 's' || resposta == 'S');
        scan.close();
    }
    
}