import java.util.Scanner;

public class Jogadores_de_basquete 
{
	
	public static void main(String[] args)
	{
		int n;
		float altura, media = 0, catc = 0, catb = 0, cata = 0;
		String nome;
		Scanner scan = new Scanner(System.in);

		System.out.print("Informe o número de jogadores do time: ");
		n = scan.nextInt();
		scan.nextLine();

		for(int i=1; i <= n; i++)
		{

			System.out.println("Informe o nome do jogador: ");
			nome = scan.nextLine();
			System.out.println("Informe a altura do jogador: ");
			altura = scan.nextFloat();
			scan.nextLine();

			if(altura <= 1.90)
			{
			System.out.println(nome + " é da categoria C");
			catc++;
			}
			else
			if(altura <= 2.10)
			{
			System.out.println(nome + " é da categoria B");
			catb++;
			}
			else
			{
			System.out.println(nome + " é da categoria A");
			cata++;
			}
			media = media + altura;
		}
		
		media = media / n;
		catc = (catc * 100) / n;
		catb = (catb * 100) / n;
		cata = (cata * 100) / n;
		
		System.out.println("Essa é a media dos jogadores: " + media);
		System.out.println("\nEssa é a porcentagem de jogadores na categoria A: " + cata + "%");
		System.out.println("\nEssa é a porcentagem de jogadores na categoria B: " + catb + "%");
		System.out.println("\nEssa é a porcentagem de jogadores na categoria C: " + catc + "%");
		scan.close();
	}
	
}
