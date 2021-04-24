// Criação de uma função para vários tipos de filtro

List<GEN> filtrar<GEN>(List<GEN> lista, bool Function(GEN) fn) {
  List<GEN> listaFiltrada = [];
  for (GEN elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [10.0, 1.2, 2.3, 6.4, 8.9, 9.0, 7.5, 4.7];
  var notasBoasFn = (double nota) => nota >= 8;
  var somenteNotasBoas = filtrar(notas, notasBoasFn);
  print(somenteNotasBoas);

  var nomes = ['Ruy', 'Rebeca', 'Bia', 'Léo', 'Maria', 'Dionísio'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtrar(nomes, nomesGrandesFn));
}
