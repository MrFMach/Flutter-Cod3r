class Data {
  int dia = 0;
  int mes = 0;
  int ano = 0;
}

main() {
  // instanciando dataAniversário como um objeto do tipo Data
  // recebe por inferência o tipo Data, 'new' é opcional
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 12;
  dataAniversario.ano = 1981;
  print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');

  Data dataCompra = Data();
  dataCompra.dia = 13;
  dataCompra.mes = 10;
  dataCompra.ano = 2020;
  print('${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');
}
