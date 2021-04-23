main() {
  var listaNotas = [8.2, 7.1, 6.5, 5.4, 3.2, 1.9, 9.8, 8.7, 5.1];

  // função notasBoasFn que espera como parâmetro um valor double
  // e retona um valor bool, se a notas é ou não >= 7
  //
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  bool Function(double) notasMuitoBoasFn = (double nota) => nota >= 8.5;
  bool Function(double) notasRuinsFn = (double nota) => nota < 7;
  bool Function(double) notasMuitoRuinsFn = (double nota) => nota < 3;

  // filtrar
  // função where - internamente já tem for e if para filtrar
  // popula as listas, onde a confição da função chamada é verdadeira
  var notasBoas = listaNotas.where(notasBoasFn);
  print('Notas boas: $notasBoas');
  var notasMuitoBoas = listaNotas.where(notasMuitoBoasFn);
  print('Notas muito boas: $notasMuitoBoas');

  var notasRuins = listaNotas.where(notasRuinsFn);
  print('Notas ruins: $notasRuins');
  var notasMuitoRuins = listaNotas.where(notasMuitoRuinsFn);
  print('Notas muito ruins: $notasMuitoRuins');
}
