class Veiculos{
  String _placa = '';
  String _marca = '';
  String _modelo = '';
  int _ano = 0;
  bool _disponivel = true;

  Veiculos({required this._placa, required this._marca, required this._modelo, required this._ano, required this._disponivel});

  String get placa => this._placa;

 set placa(String value) => this._placa = value;

  get marca => this._marca;

 set marca( value) => this._marca = value;

  get modelo => this._modelo;

 set modelo( value) => this._modelo = value;

  get ano => this._ano;

 set ano( value) => this._ano = value;

  get disponivel => this._disponivel;

 set disponivel( value) => this._disponivel = value;


 void exibirDados(){
  if(_disponivel == true){
      print("O veiculo tem a placa: $_placa, pertence a marca: $_marca, é do modelo: $_modelo e é do ano: $_ano.");
      print("Esse veículo está disponivel!");
    }else{
      print("O veiculo tem a placa: $_placa, pertence a marca: $_marca, é do modelo: $_modelo e é do ano: $_ano.");
      print("Esse veículo NÃO se encontra disponivel!");
    }
 }

 void calcularDiaria(){
  print("O veiculo não foi definido para o calculo da diaria ser realizado.");
 }
 void alterarDisponibilidade(){
  if(_disponivel == true){
    _disponivel = false;
  }else{
    _disponivel = true;
  }

 }

}