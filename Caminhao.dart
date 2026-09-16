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
      print("O veiculo tem a placa: $placa, pertence a marca: $marca, é do modelo: $modelo, é do ano: $ano, capacidade de carga $_capacidadeCarga e tem $_numeroEixos eixos.");
      print("Esse veículo está disponivel!");
    }else{
      print("O veiculo tem a placa: $placa, pertence a marca: $marca, é do modelo: $modelo, é do ano: $ano, capacidade de carga $_capacidadeCarga e tem $_numeroEixos eixos.");
      print("Esse veículo NÃO se encontra disponivel!");
    }
  }

}