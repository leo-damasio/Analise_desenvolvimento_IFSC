import java.util.Scanner;

public class Lista_6_Atv1 {

    public static void main(String[] args)
    {
        /*
         * Um time de basquete possui 12 jogadores. Deseja-se um programa que, dado o nome e a altura
         * dos jogadores, determine:
         * - o nome e a altura do jogador mais alto;
         * - a média de altura do time;
         * - a quantidade de jogadores com altura superior a média, listando o nome e a altura de cada um.
         */

        
        String mnome="";
        float malt=0;
        String[] nome = new String[11];
        float[] alt = new float[11];
        Scanner nome_scan = new Scanner(System.in);
        Scanner alt_scan = new Scanner(System.in);
        
        for(int i=0 ; i >= 10 ; i++)
        {

            System.out.print("Informe o nome do " + (i+1) + "º Jogador: ");
            nome[i] = nome_scan.nextLine();

           
            System.out.print("Informe a altura do " + (i+1) + "º Jogador: ");
            alt[i] = alt_scan.nextFloat();
            
            
            if(malt < alt[i])
            {

                malt = alt[i];
                mnome = nome[i];

            }
            
        }
        System.out.print("O maior jogador foi " + mnome + " com a altura de " + malt);
        nome_scan.close();
        alt_scan.close();

    }
}