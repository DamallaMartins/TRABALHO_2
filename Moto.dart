import 'Veiculos.dart';

class Moto extends Veiculos{
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
    double valor = 90.0;
    print("O valor da diaria da moto é: $valor");

  }

  @override
  void exibirDados(){
    if(disponivel == true){
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Moto\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nCilindradas: $_cilindradas\nTipo: $_tipo");

      print("Esse veículo está disponivel!");
    }else{
      print("======================\nDADOS DO VEÍCULO:\n======================");
      print("Veiculo: Moto\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nCilindradas: $_cilindradas\nTipo: $_tipo");
      print("Esse veículo NÃO se encontra disponivel!");
    }
  }

}