import 'Veiculos.dart';

class Caminhao extends Veiculos{
  double _capacidadeCarga = 0;
  int _numeroEixos = 0;
 
 double get capacidadeCarga => this._capacidadeCarga;

 set capacidadeCarga(double value) => this._capacidadeCarga = value;

  get numeroEixos => this._numeroEixos;

 set numeroEixos( value) => this._numeroEixos = value;
 


  Caminhao({required placa, required marca, required modelo, required ano, required disponivel, required this._capacidadeCarga, required this._numeroEixos})
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  
  
  @override
  void calcularDiaria(){
    double valor = _capacidadeCarga * 0.5;
    print("O valor da diaria do caminhão é: $valor");
  }

  @override
  void exibirDados(){
    if(disponivel == true){
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Caminhão\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nCapacidade de Carga: $_capacidadeCarga\nNúmero de Eixos: $_numeroEixos");
      print("Esse veículo está disponivel!");
    }else{
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Caminhão\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nCapacidade de Carga: $_capacidadeCarga\nNúmero de Eixos: $_numeroEixos");
      print("Esse veículo NÃO se encontra disponivel!");
    }
  }

}