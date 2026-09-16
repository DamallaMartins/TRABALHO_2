import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';
import 'Moto.dart';
import 'Caminhao.dart';
import 'Locacao.dart';

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
}