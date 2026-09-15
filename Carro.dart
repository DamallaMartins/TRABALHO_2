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
  void calcularDiaria(){
    if(disponivel == true){
      print("O veiculo tem a placa: $placa, pertence a marca: $marca, é do modelo: $modelo, é do ano: $ano, tipo de combustivel $_tipoCombustivel.");
      print("Esse veículo está disponivel!");
    }else{
      print("O veiculo tem a placa: $placa, pertence a marca: $marca, é do modelo: $modelo, é do ano: $ano, tipo de combustivel $_tipoCombustivel.");
      print("Esse veículo NÃO se encontra disponivel!");
    }
  }

  void exibirDados(){

  }

}