package mainApp;

import domain.*;

import java.util.Scanner;

public class MainApp
{
    public static void main(String[] args)
    {
        String marca, descricao, placa, combustivel, categoria;
        int potencia;
        Scanner leia = new Scanner(System.in);
        Marca marca1 = new Marca();
        Modelo modelo1 = new Modelo();
        Veiculo veiculo1 = new Veiculo();



        System.out.print("Informe a marca do carro: ");
        marca = leia.next();
        marca1.setNome(marca);
        modelo1.setMarca(marca1);

        System.out.print("Informe o modelo do carro: ");
        descricao = leia.next();
        modelo1.setDescricao(descricao);
        veiculo1.setModelo(modelo1);

        System.out.println("Informe a categoria do carro\n1 - Pequeno\n2 - Medio\n3 - Grande\n4 - Moto\n5 - Padrao");
        categoria = leia.next();
        switch(categoria)
        {
            case "1":
                modelo1.setCategoria(ECategoria.eCategoria.Pequeno);
                break;
            case "2":
                modelo1.setCategoria(ECategoria.eCategoria.Medio);
                break;
            case "3":
                modelo1.setCategoria(ECategoria.eCategoria.Grande);
                break;
            case "4":
                modelo1.setCategoria(ECategoria.eCategoria.Moto);
                break;
            case "5":
                modelo1.setCategoria(ECategoria.eCategoria.Padrao);
                break;
            default:
                System.out.println("Opção inválida");
                break;
        }

        System.out.print("Informe a potência do motor: ");
        potencia = leia.nextInt();
        leia.nextLine();
        veiculo1.getModelo().getMotor().setPotencia(potencia);

        System.out.println("Selecione o tipo de combustivel do carro\n1 - Gasolina\n2 - Etanol\n3 - Flex\n4 - Diesel\n5 - GNV\n6 - Outro");
        combustivel = leia.next();
        switch(combustivel)
        {
            case "1":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.Gasolina);
                break;
            case "2":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.Etanol);
                break;
            case "3":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.Flex);
                break;
            case "4":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.Diesel);
                break;
            case "5":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.GNV);
                break;
            case "6":
                veiculo1.getModelo().getMotor().setTipoCombustivel(ETipoCombustivel.eTipoCombustivel.Outro);
                break;
            default:
                System.out.println("Opção inválida");
                break;
        }



        System.out.print("Informe a placa do carro: ");
        placa = leia.next();
        veiculo1.setPlaca(placa);

        print(veiculo1);

    }

    public static void print(Veiculo veiculo)
    {

        System.out.println("Placa.......: " + veiculo.getPlaca());
        System.out.println("Modelo......: " + veiculo.getModelo().getDescricao());
        System.out.println("Marca.......: " + veiculo.getModelo().getMarca().getNome());
        System.out.println("Motor.......: cv " + veiculo.getModelo().getMotor().getPotencia());
        System.out.println("Combustível.: " + veiculo.getModelo().getMotor().getTipoCombustivel());

    }

}
