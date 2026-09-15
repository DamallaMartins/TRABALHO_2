import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';

void main(){
  Veiculos veiculo = Veiculos(placa: "ABC123", marca: "Golzinho", modelo: "Bonitinho", ano: 1967, disponivel: false);

  veiculo.exibirDados();
  veiculo.calcularDiaria();

  Cliente cliente = Cliente(nome: "Gary Smith", cpf: 123456789, telefone: 40028922, cnh: 123456, bloqueado: true);
  cliente.exibirDados();

  Carro carro = Carro(placa: "123aa", marca: "marca", modelo: "modelo", ano: 1233, disponivel: false, numeroPortas: 4, tipoCombustivel: "tipoCombustivel");
  carro.exibirDados();
}