import 'dart:math';

main() {
  int a = numeroAleatorio(500);
  print(a);
  int b = numeroAleatorio();
  print(b);
}

// função com parâmetro opcional []
// se não passar parâmetro, assume um valor padrão 5
int numeroAleatorio([int maximo = 5]) {
  return Random().nextInt(maximo);
}
