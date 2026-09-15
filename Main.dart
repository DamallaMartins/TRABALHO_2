import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';

void main(){
  Veiculos veiculo = Veiculos(placa: "ABC123", marca: "Golzinho", modelo: "Bonitinho", ano: 1967, disponivel: true);

  veiculo.exibirDados();
  veiculo.calcularDiaria();

  Cliente cliente = Cliente(nome: "Gary Smith", cpf: 123456789, telefone: 40028922, cnh: 123456, bloqueado: true);
  cliente.exibirDados();

  Carro carro = Carro(placa: "DEF123", marca: "do mal", modelo: "secreto", ano: 1987, disponivel: true, numeroPortas: 2, tipoCombustivel: "ALTERADO");
  carro.exibirDados();
}