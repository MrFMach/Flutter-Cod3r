class Carro {
  final int velocidadeMax;
  int velocidadeAtual = 0;

  Carro.construtorUm({this.velocidadeMax = 100});

  int acelerar() {
    while (estaNoLimite() == true) {
      print('acelerando.. $velocidadeAtual km/h');
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }

  int frear() {
    while (velocidadeAtual > 0) {
      print('freando.. $velocidadeAtual km/h');
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }

  bool estaNoLimite() {
    return velocidadeAtual < velocidadeMax;
  }
}
