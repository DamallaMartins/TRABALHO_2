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
      print("Cliente $_nome, seu cpf é $_cpf, telefone $_telefone, cnh $_cnh.");
      print("No momento você não se encontra bloqueado.");
    }else{
      print("Cliente $_nome, seu cpf é $_cpf, telefone $_telefone, cnh $_cnh.");
      print("Você se encontra BLOQUEADO!");
    }
 }


}