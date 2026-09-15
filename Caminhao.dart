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

  }

  void exibirDados(){

  }

}