main() {
  // conjunto - Set
  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4, 4, 4};
  print(conjunto is Set);
  print(conjunto.length); // Set não considera repetidos

  // Chave, Valor = Map
  Map<String, double> notasDosAlunos = {
    'Ana': 5.7,
    'Rute': 9.8,
    'Léo': 3.5,
    'Mario': 7.8
  };

  for (var chave in notasDosAlunos.keys) {
    print('Chave = $chave');
  }

  for (var valor in notasDosAlunos.values) {
    print('Valor = $valor');
  }

  print('\nchave / valor');
  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }
}
