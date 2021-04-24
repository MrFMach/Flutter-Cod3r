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
    {'nome': 'Ruan', 'nota': 8.9},
    {'nome': 'Zora', 'nota': 9.7},
  ];

  // função recebe o tipo Map e retorna double
  double Function(Map) obterNotas = (elemento) => elemento['nota'];

  // map é usado para transformar tipos:
  // função .map percorre (mapeia) a lista alunos
  var notas = alunos.map(obterNotas);

  // reduce recebe uma função que retorna a soma de a + b e executa um 'a+=b'
  // armazena o valor acumulado em 'a' e cada elemento percorrido da lista em 'b'
  var media = (notas.reduce((a, b) => a + b)) / notas.length;

  print('Total de ${notas.length} notas: $notas. Média = $media!');
}
