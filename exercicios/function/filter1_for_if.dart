main() {
  var listaNotas = [8.2, 7.1, 6.5, 5.4, 3.2, 1.9, 9.8, 8.7, 5.1];
  var notasBoas = [];
  var notasRuins = [];

  // percorre nos índices da lista
  for (var nota in listaNotas) {
    // pupula as listas notasBoas e notasRuins a cada valor verificado
    if (nota >= 7) {
      notasBoas.add(nota);
    } else {
      notasRuins.add(nota);
    }
  }
  print('Lista geral: $listaNotas');
  print('Notas boas: $notasBoas');
  print('Notas ruins: $notasRuins');
}
