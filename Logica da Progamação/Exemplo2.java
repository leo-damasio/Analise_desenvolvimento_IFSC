import java.util.Scanner;

public class Exemplo2 
{

    public static void main(String[] args)
    {
        int n = 0;
       
        Scanner numalu_scan = new Scanner(System.in);
        Scanner nome_scan = new Scanner(System.in);
        Scanner nota_scan = new Scanner(System.in);
        
        System.out.print("Informe a quantidade de alunos: ");
            n = numalu_scan.nextInt();
        System.out.println("----------------------------------------");
        String[] nome = new String[n];
        String[] resultado = new String[n];
        float[] nota1 = new float[n];
        float[] nota2 = new float[n];
        float[] media = new float[n];

        for(int i=0 ;i<n; i++)
        {

            System.out.print("Informe o nome do " + (i+1) + "º aluno: ");
                nome[i] = nome_scan.nextLine();

           
            System.out.print("Informe a nota do 1º aluno: ");
                nota1[i] = nota_scan.nextFloat();
            
            System.out.print("Informe a nota do 2º aluno: ");
                nota2[i] = nota_scan.nextFloat();

            System.out.println("----------------------------------------");
            
        }
        for(int i=0;i<n;i++)
        {
            media[i] = (nota1[i] + nota2[i]) / 2;
            
            if(media[i] > 6)
            resultado[i] = "Aprovado";
            else
            resultado[i] = "Reprovado";

        }
        System.out.println("Aluno | Nota 1 | Nota 2 | Media | Situação");
        for(int i=0;i<n;i++)
        {
            System.out.println(nome[i] + " | " + nota1[i] + " | " + nota2[i] + " | " + media[i] + " | " + resultado[i]);  
        }
        numalu_scan.close();
        nome_scan.close();
        nota_scan.close();
          

    }



    

}
