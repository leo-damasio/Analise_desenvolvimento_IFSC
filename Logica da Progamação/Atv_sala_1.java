import java.util.Scanner;

public class Atv_sala_1 
{
    
    public static void main(String[] args)
    {
        int n, i, isento=0, irrf2=0, irrf3=0, irrf4=0;
        double salb, sall, salt=0, msal=0, inss, irf=0, medial=0;
        String nome, mnome = "";
        Scanner funcionarios_scan = new Scanner(System.in), nome_scan = new Scanner(System.in), salario_scan = new Scanner(System.in);

        //Número de funcionarios da empresa
        System.out.println("\n!-~--------------------------------------------------------------------~-!\n");
        System.out.print("Informe o número de funcionarios da empresa: ");
        n = funcionarios_scan.nextInt();
        System.out.println("\n------------------------------------------------------------------------\n");

        for(i=1 ; i <= n ; i++)
        {
            //Informações do usuario
            System.out.print("Informe o Nome do funcionario: ");
            nome = nome_scan.nextLine();
            System.out.print("Infome o salario bruto do funcionario: R$");
            salb = salario_scan.nextFloat();
            //Calculo do INSS
            inss = salb * 0.08;
            //Calculo do irf
            if(salb < 1500)
            {
                System.out.println("Isento do INSS.")A faixa de
                irf=0;
                System.out.print("INSS: R$" + inss + "\n");
                System.out.print("IRRF: R$" + irf + "\n");
                isento++;
                isento = (isento * 100) / n;
            }
            else
            if(salb < 2500)
            {
                irf = salb * 0.10;
                System.out.print("INSS: R$" + inss + "\n");
                System.out.print("IRRF: R$" + irf + "\n");
                irrf2++;
            }
            else
            if(salb < 5000)
            {
                irf = salb * 0.15;
                System.out.print("INSS: R$" + inss + "\n");
                System.out.print("IRRF: R$" + irf + "\n");
                irrf3++;
            }
            else
            {
                irf = salb * 0.20;
                System.out.print("INSS: R$" + inss + "\n");
                System.out.print("IRRF: R$" + irf + "\n");
                irrf4++;
            }
            //Calculo do salario liquido do funcionario
            System.out.println("O salario do funcionario " + nome + " é de R$" + (sall = salb - inss - irf));
            System.out.println("\n------------------------------------------------------------------------\n");
            
            //Maior salario bruto ganho
            salt = salt + salb;
            if(salb > msal)
            {
                msal = salb;
                mnome = nome;
            }

            medial = sall + medial;

        }

        System.out.println("O salario bruto total foi R$" + salt);
        
        //Calculo da media do salario liquido
        System.out.println("A media do salario liquido total foi R$" + (medial = medial / n));
     
        System.out.println("A porcentagem de funcionarios foi " + isento + "%");

        System.out.println("O " + mnome + " teve o maior salario bruto do mês sendo R$" + msal);

        if(isento > irrf2 && isento > irrf3 && isento > irrf4)
        System.out.println("A faixa de IRRF com o maior número de funcionarios foi isento" + " e essa é a quantidade de funcionarios desse IRRF foi " + isento );
        else
        if(irrf2 > isento && irrf2 > irrf3 && irrf2 > irrf4)
        System.out.println("A faixa de IRRF com o maior número de funcionarios é 10%" + " e essa é a quantidade de funcionarios desse IRRF foi " + irrf2 );
        else
        if(irrf3 > isento && irrf3 > irrf2 && irrf3 > irrf4)
        System.out.println("A faixa de IRRF com o maior número de funcionarios é 15%" + " e essa é a quantidade de funcionarios desse IRRF foi " + irrf3 );
        else
        if(irrf4 > isento && irrf4 > irrf2 && irrf4 > irrf3)
        System.out.println("A faixa de IRRF com o maior número de funcionarios é 20%" + " e essa é a quantidade de funcionarios desse IRRF foi " + irrf4 );
        else
        System.out.println("A faixa de IRRF de todos os funcionarios foi iqual " + isento);

        System.out.print("\n!-~--------------------------------------------------------------------~-!\n");

    }
    
}