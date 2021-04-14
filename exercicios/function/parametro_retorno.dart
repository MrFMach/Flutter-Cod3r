import 'dart:math';

main() {
  somaRandom();
  print('retorno da função: ${somaRandomInt()}');
  soma(2, 3);
  print('retorno da função: ${somaDouble(2.7, 4)}');
}

// função sem parâmetros de entrada e sem retorno (void)
void somaRandom() {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int c = Random().nextInt(10);
  print('A soma $a + $b + $c é = ${a + b + c}');
}

// função sem parâmetros de entrada e com retorno (int)
int somaRandomInt() {
  int e = Random().nextInt(10);
  int f = Random().nextInt(10);
  int g = Random().nextInt(10);
  return e + f + g;
}

// função com parâmetros de entrada e sem retorno (void)
void soma(int x, int y) {
  print(x + y);
}

// função com parâmetros de entrada e com retorno (int)
double somaDouble(double x, int y) {
  return x + y;
}
