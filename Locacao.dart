import 'Cliente.dart';
import 'Veiculos.dart';

class Locacao{
  Cliente cliente;
  Veiculos veiculo;
  int _dias = 0;
  double _valorTotal = 0.0;
  bool _ativa = true;
 
 Cliente get getCliente => this.cliente;

 set setCliente(Cliente cliente) => this.cliente = cliente;

  get getVeiculo => this.veiculo;

 set setVeiculo( veiculo) => this.veiculo = veiculo;

  get getDias => this._dias;

 set setDias( dias) => this._dias = dias;

  get getValorTotal => this._valorTotal;

 set setValorTotal( valorTotal) => this._valorTotal = valorTotal;

  get getAtiva => this._ativa;

 set setAtiva( ativa) => this._ativa = ativa;

  Locacao({required this.cliente, required this.veiculo, required this._dias, required this._valorTotal, required this._ativa});

  void calcularValor(){
    _valorTotal = _dias * 100.0;
  }

  void finalizar(){
    _ativa = false;
  }

  void exibirResumo(){
    print("======================\nResumo da locação:\n======================");
    print("Cliente: ${cliente.nome}");
    print("Veículo: ${veiculo.placa}");
    print("Dias de locação: $_dias");
    print("Valor total: $_valorTotal");
    print("Locação ativa: $_ativa");
  }

}