class Cliente{
  String _nome = '';
  int _cpf = 0;
  int _telefone = 0;
  int _cnh = 0;
  bool _bloqueado = false;
 
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get cpf => this._cpf;

 set cpf( value) => this._cpf = value;

  get telefone => this._telefone;

 set telefone( value) => this._telefone = value;

  get cnh => this._cnh;

 set cnh( value) => this._cnh = value;

  get bloqueado => this._bloqueado;

 set bloqueado( value) => this._bloqueado = value;
 
 
 


 Cliente({required this._nome, required this._cpf, required this._telefone, required this._cnh, required this._bloqueado});

  void exibirDados(){
  if(_bloqueado == false){
      print("======================\nDADOS DO CLIENTE:\n======================");
      print("Cliente: $_nome\nCPF: $_cpf\nTelefone: $_telefone\nCNH: $_cnh.");
      print("No momento você não se encontra bloqueado.");
    }else{
      print("======================\nDADOS DO CLIENTE:\n======================");
      print("Cliente: $_nome\nCPF: $_cpf\nTelefone: $_telefone\nCNH: $_cnh.");
      print("Você se encontra BLOQUEADO!");
    }
 }

 void liberar(){
  if(_bloqueado == true){
    _bloqueado = false;
  }else{
    print("O cliente não se encontra bloqueado!");
  }
 }

 void bloquear(){
  if(_bloqueado == false){
    _bloqueado = true;
  }else{
    print("O cliente já se encontra bloqueado!");
  }
 }


}