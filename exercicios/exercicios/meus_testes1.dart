main() {
  var mapa = {
    'Kevin': 39,
    'May': 38,
    'Chris': 17,
    'Lia': 11,
  };
  var mapa2 = {
    'Ruan': 13,
    'Vincent': 67,
  };

  tamanho(mapa);
  mapa.remove('Lia');
  mapa.addAll(mapa2);
  print(mapa);
}

tamanho(var printMapa) {
  print(printMapa);
}
