main() {
  // lista de maps {key, value}
  var alunos = [
    {'nome': 'Alvaro', 'nota': 10.0},
    {'nome': 'Bia', 'nota': 9.2},
    {'nome': 'Carla', 'nota': 8.4},
    {'nome': 'Denise', 'nota': 7.6},
    {'nome': 'Elias', 'nota': 6.8},
    {'nome': 'Frederico', 'nota': 9.9},
    {'nome': 'Julia', 'nota': 5.0},
    {'nome': 'Letivia', 'nota': 3.2},
  ];

  // função recebe o tipo Map e retorna String
  String Function(Map) obterNomes = (elemento) => elemento['nome'];

  // função recebe o tipo String e retorna int (length)
  int Function(String) quantLetras = (elemento) => elemento.length;

  // função recebe o tipo Map e retorna double
  double Function(Map) obterNotas = (elemento) => elemento['nota'];

  // map é usado para transformar tipos:

  // função .map percorre (mapeia) a lista alunos
  var nomes = alunos.map(obterNomes);
  var letras = nomes.map(quantLetras);
  var notas = alunos.map(obterNotas);

  print('Nomes: $nomes');
  print('Quantidade de letras: $letras');
  print('Total de ${notas.length} notas: $notas!');
}
