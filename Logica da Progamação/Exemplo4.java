import java.util.Scanner;
public class Exemplo4 {
    
    public static void main (String[] args)
    {
    Scanner leia = new Scanner (System. in);

    String nome;
    char resposta;
        do
        {
            System.out.print("Digite o nome: ");
            nome = leia.nextLine();

            System.out.println("O nome digitado foi " + nome);
            do{
            System.out.print("Deseja continuar (S/N)? ");
            resposta = leia.nextLine().charAt(0);
            Character.toUpperCase(resposta);
            System.out.print(resposta);
                if(resposta != 'S' && resposta !='N')
                {
                    System.out.println("Resposta invalida invalida!");
                }
            }while(resposta != 'S' && resposta !='N');
        }while (resposta=='S');   
        leia.close();
    }
 
}
