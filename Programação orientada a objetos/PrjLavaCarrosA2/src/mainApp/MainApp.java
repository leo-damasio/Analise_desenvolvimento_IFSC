package mainApp;

import domain.*;

import java.util.Scanner;

public class MainApp
{
    public static void main(String[] args)
    {
        String marca, descricao, placa;
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

        System.out.print("Informe a placa do carro: ");
        placa = leia.next();
        veiculo1.setPlaca(placa);

        print(veiculo1);

    }

    public static void print(Veiculo veiculo)
    {

        System.out.println("Placa.: " + veiculo.getPlaca());
        System.out.println("Modelo: " + veiculo.getModelo().getDescricao());
        System.out.println("Marca.: " + veiculo.getModelo().getMarca().getNome());

    }

}
