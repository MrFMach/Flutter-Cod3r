import 'parametro_retorno.dart';

main() {
  List<double> notas = [2.4, 4.5, 6.7, 8.9, 9.9, 10.0, 1.7, 3.7, 7.9, 5.5];

  // reduce recebe uma função que retorna a soma de a + b e executa um 'a+=b'
  // armazena o valor acumulado em 'a' e cada elemento percorrido da lista em 'b'
  double soma = notas.reduce((a, b) => a + b);
  print(soma);

  List<String> nomes = ['Liz', 'Jonas', 'Leticia', 'Mara', 'Helena'];
  String juntar = nomes.reduce((a, b) => '$a$b');

  print(juntar);
}
