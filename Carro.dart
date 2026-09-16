import 'Veiculos.dart';

class Carro extends Veiculos{
  int _numeroPortas = 0;
  String _tipoCombustivel = '';
 
 int get numeroPortas => this._numeroPortas;

 set numeroPortas(int value) => this._numeroPortas = value;

  get tipoCombustivel => this._tipoCombustivel;

 set tipoCombustivel( value) => this._tipoCombustivel = value;
 


  Carro({required placa, required marca, required modelo, required ano, required disponivel, required this._numeroPortas, required this._tipoCombustivel})
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  
  
  @override
  double calcularDiaria(){
    return 120.0;
  }

  @override
  void exibirDados(){
    if(disponivel == true){
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Carro\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nNúmero de Portas: $_numeroPortas\nTipo de Combustível: $_tipoCombustivel");
      print("Esse veículo está disponivel!");
    }else{
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Carro\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nNúmero de Portas: $_numeroPortas\nTipo de Combustível: $_tipoCombustivel");
      print("Esse veículo NÃO se encontra disponivel!");
    }
  }

}