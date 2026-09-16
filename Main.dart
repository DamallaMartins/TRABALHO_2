import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';
import 'Moto.dart';
import 'Caminhao.dart';
import 'Locacao.dart';
import 'dart:io';

void main(){
  Veiculos veiculo = Veiculos(placa: "ABC123", marca: "Golzinho", modelo: "Bonitinho", ano: 1967, disponivel: false);

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
  locacao.exibirResumo();


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
  switch(opcao){
    case "1":
      print("\nCadastrar carro"); 
      break;
    case "2":
      print("\nCadastrar moto");
      break;
    case "3":
      print("\nCadastrar caminhão");
      break;
    case "4":
      print("\nCadastrar cliente");
      break;
    case "5":
      print("\nListar veículos");
      break;
    case "6":
      print("\nListar clientes");
      break;
    case "7":
      print("\nRealizar locação");
      break;
    case "8":
      print("\nFinalizar locação");
      break;
    case "9":
      print("\nConsultar locações");
      break;
    case "0":
      print("\nSair");
      break;
    default:
      print("\nOpção inválida!");
  }
}