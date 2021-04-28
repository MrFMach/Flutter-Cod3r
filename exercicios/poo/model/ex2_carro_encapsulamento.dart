// Encapsulamento de atributos da classe
// utilizando Getters e Setters

class Carro {
  // _atributosPrivados
  // só podem ser acessados de dentro da classe
  int _velocidade = 100;
  String _cor = 'verde';

  // a classe disponibiliza o valor de um atributo privado
  // através do método get

  int get getVelocidade {
    return _velocidade;
  }

  void set setCor(String cor) {
    print('cor antes de setCor: $_cor');

    // validação para aceitar apenas cores verde ou rosa
    if (cor == 'verde' || cor == 'rosa') {
      this._cor = cor;
    } else {
      print('cor não válida!');
    }
    print('cor após setCor: $_cor');
  }
}
