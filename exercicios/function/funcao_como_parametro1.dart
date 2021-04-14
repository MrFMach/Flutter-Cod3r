import 'dart:math';

main() {
  // funções anônimas para imprimir, atribuídas às variáveis do tipo Function
  var imprimeSePar = () => print('O número é par');
  var imprimeSeImpar = () => print('O número é ímpar');

  // as variáveis do tipo Function são passadas como parâmetros
  verificar(imprimeSePar, imprimeSeImpar);
}

// os parâmetros (funções) recebidos são atribuídos a fPar e fImpar
void verificar(Function fPar, Function fImpar) {
  int sorteado = Random().nextInt(10);
  print('número sorteado: $sorteado');

  // executa fPar ou fImpar conforme o resultado da condicional ternária
  sorteado % 2 == 0 ? fPar() : fImpar();
}
