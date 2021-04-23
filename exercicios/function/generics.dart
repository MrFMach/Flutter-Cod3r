main() {
  var lista = [3, 6, 8, 32, 467, 50, 1];

  print(segundoElementoV1(lista));

// nova versão do Dart
// ? nullable - indica que poderá receber "null"
  int? segundoElemento = segundoElementoV2(lista);
  print(segundoElemento);
}

Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

// Criação de um tipo generics chamado de 'FM' - inventado
// a função tipo FM espera receber uma List do tipo FM e
// retorna um valor do tipo FM. Como essa função receberá
// tipo int, tudo será int

// ? nullable
FM? segundoElementoV2<FM>(List<FM> lista) {
  return lista.length >= 2 ? lista[1] : null;
}
