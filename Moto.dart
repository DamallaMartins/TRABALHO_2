import 'Veiculos.dart';

class Moto{
  int _cilindradas = 0;
  String _tipo = '';
 
 int get cilindradas => this._cilindradas;

 set cilindradas(int value) => this._cilindradas = value;

  get tipo => this._tipo;

 set tipo( value) => this._tipo = value;

  Moto({required placa, required marca, required modelo, required ano, required disponivel, required this._cilindradas, required this._tipo})
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  
  
  @override
  void calcularDiaria(){

  }

  void exibirDados(){

  }

}