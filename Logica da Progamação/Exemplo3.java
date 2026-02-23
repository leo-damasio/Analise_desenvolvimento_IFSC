import java.util.Scanner;

public class Exemplo3 {
    

    public static void main(String[] args) 
    {
            
        int n;
        Scanner quant_scan = new Scanner(System.in);
        Scanner scan = new Scanner(System.in);
        System.out.print("Informe a quantidade de numeros que você que verificar: ");
        n = quant_scan.nextInt();
        float[] num = new float[n];

        for (int i=0;i<=n;i++)
        {
            System.out.print("Informe um número: ");
            num[i] = scan.nextFloat();
            System.out.println("--------------------------------------------------------------");
            System.out.println("Número informado " + num[i]);
            if (num[i] % 2 == 0) 
            {
                System.out.println("Par");
            }
            else
            {
                System.out.println("impar");
            }
            System.out.println("--------------------------------------------------------------");
            if (num[i] > 0) 
            {
                System.out.println("Positivo");
            }
            else if (num[i] < 0) 
            {
                System.out.println("Negativo");
            }
            else
            {
                System.out.println("Nulo");
            }

        }

    }
}
