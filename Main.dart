import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';
import 'Moto.dart';
import 'Caminhao.dart';
import 'Locacao.dart';
import 'dart:io';

void main(){
  /*Veiculos veiculo = Veiculos(placa: "ABC123", marca: "Golzinho", modelo: "Bonitinho", ano: 1967, disponivel: false);

  veiculo.exibirDados();
  veiculo.calcularDiaria();

  Cliente cliente = Cliente(nome: "Gary Smith", cpf: 123456789, telefone: 40028922, cnh: 123456, bloqueado: true);
  cliente.exibirDados();

  Carro carro = Carro(placa: "123aa", marca: "marca", modelo: "modelo", ano: 1233, disponivel: false, numeroPortas: 4, tipoCombustivel: "tipoCombustivel");
  carro.exibirDados();

  Moto moto = Moto(placa: "789cc", marca: "marca", modelo: "modelo", ano: 2020, disponivel: false, cilindradas: 150, tipo: "esportiva");
  moto.exibirDados();

  Caminhao caminhao = Caminhao(placa: "456bb", marca: "marca", modelo: "modelo", ano: 2020, disponivel: false, capacidadeCarga: 1000.0, numeroEixos: 4);
  caminhao.exibirDados();
  caminhao.calcularDiaria();

  Locacao locacao = Locacao(cliente: cliente, veiculo: veiculo, dias: 5, valorTotal: 100.0, ativa: false);
  locacao.calcularValor();
  locacao.finalizar();
  locacao.exibirResumo();*/

  List<Veiculos> listaVeiculos = [];
  List<Cliente> listaClientes = [];


  print("========================= \n LOCADORA DE VEÍCULOS: \n=========================");
  print("1 - Cadastrar carro");
  print("2 - Cadastrar moto");
  print("3 - Cadastrar caminhão");
  print("4 - Cadastrar cliente");
  print("5 - Listar veículos");
  print("6 - Listar clientes");
  print("7 - Realizar locação");
  print("8 - Finalizar locação");
  print("9 - Consultar locações");
  print("0 - Sair");

  stdout.write("Escolha uma opção: ");
  String opcao = stdin.readLineSync()!;
  while(opcao != "0"){
    switch(opcao){
      case "1":
        print("\nCadastrar carro\n-----");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Disponível s/n: ");
        bool disponivel;
        if(stdin.readLineSync()! == "s"){
          print("O carro será cadastrado como disponível.");
          disponivel = true;
        }else{
          disponivel = false;
          print("O carro será cadastrado como indisponível.");
        }
        stdout.write("Número de portas: ");
        int numeroPortas = int.parse(stdin.readLineSync()!);
        stdout.write("Tipo de combustível: ");
        String tipoCombustivel = stdin.readLineSync()!;
        listaVeiculos.add(Carro(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel, numeroPortas: numeroPortas, tipoCombustivel: tipoCombustivel));
        print("Carro cadastrado com sucesso!");
        break;
      case "2":
        print("\nCadastrar moto\n-----");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Disponível s/n: ");
        bool disponivel;
        if(stdin.readLineSync()! == "s"){
          disponivel = true;
          print("A moto será cadastrada como disponível.");
        } else{
          disponivel = false;
          print("A moto será cadastrada como indisponivel.");
        }
        stdout.write("Cilindradas: ");
        int cilindradas = int.parse(stdin.readLineSync()!);
        stdout.write("Tipo: ");
        String tipo = stdin.readLineSync()!;
        listaVeiculos.add(Moto(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel, cilindradas: cilindradas, tipo: tipo));
        print("Moto cadastrada com sucesso!");
        break;
      case "3":
        print("\nCadastrar caminhão\n-----");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Disponível s/n: ");
        bool disponivel;
        if(stdin.readLineSync()! == "s"){
          disponivel = true;
          print("O caminhão será cadastrado como disponível.");
        } else{
          disponivel = false;
          print("O caminhão será cadastrado como indisponível.");
        }
        stdout.write("Capacidade de carga: ");
        double capacidadeCarga = double.parse(stdin.readLineSync()!);
        stdout.write("Número de eixos: ");
        int numeroEixos = int.parse(stdin.readLineSync()!);
        listaVeiculos.add(Caminhao(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel, capacidadeCarga: capacidadeCarga, numeroEixos: numeroEixos));
        print("Caminhão cadastrado com sucesso!");
        break;
      case "4":
        print("\nCadastrar cliente\n-----");
        stdout.write("Nome: ");
        String nome = stdin.readLineSync()!;
        stdout.write("CPF: ");
        int cpf = int.parse(stdin.readLineSync()!);
        stdout.write("Telefone: ");
        int telefone = int.parse(stdin.readLineSync()!);
        stdout.write("CNH: ");
        int cnh = int.parse(stdin.readLineSync()!);
        bool bloqueado = false;
        stdout.write("Disponível s/n: ");
        if(stdin.readLineSync()! == "s"){
          bloqueado = false;
          print("O cliente será cadastrado como disponível.");
        } else{
          bloqueado = true;
          print("O cliente será cadastrado como bloqueado.");
        }
        listaClientes.add(Cliente(nome: nome, cpf: cpf, telefone: telefone, cnh: cnh, bloqueado: bloqueado));
        print("Cliente cadastrado com sucesso!");
        break;
      case "5":
        print("\nListar veículos\n-----");
        for (var veiculo in listaVeiculos) {
          veiculo.exibirDados();
          veiculo.calcularDiaria();
        }
        break;
      case "6":
        print("\nListar clientes\n-----");
        for (var cliente in listaClientes) {
          cliente.exibirDados();
        }
        break;
      case "7":
        print("\nRealizar locação\n-----");
        break;
      case "8":
        print("\nFinalizar locação\n-----");
        break;
      case "9":
        print("\nConsultar locações\n-----");
        break;
      case "0":
        print("\nSair");
        break;
      default:
        print("\nOpção inválida!");
    }

    print("========================= \n LOCADORA DE VEÍCULOS: \n=========================");
    print("1 - Cadastrar carro");
    print("2 - Cadastrar moto");
    print("3 - Cadastrar caminhão");
    print("4 - Cadastrar cliente");
    print("5 - Listar veículos");
    print("6 - Listar clientes");
    print("7 - Realizar locação");
    print("8 - Finalizar locação");
    print("9 - Consultar locações");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");
    opcao = stdin.readLineSync()!;
  }
}