class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // forma reduzida para o construtor
  // recebe os parâmetros e já atribui aos atributos
  Data(this.dia, this.mes, this.ano);

  String formatarData() {
    return '$dia de $mes de $ano';
  }
}

main() {
  // agora a criação de um objeto obriga o preenchimento dos parâmetros
  // exigidos pelo construtor
  var dataNascimento = Data(15, 'Novembro', 1800);
  print('A data de nascimento é ${dataNascimento.formatarData()}');

  Data dataCompra = Data(1, 'janeiro', 2021);
  print('A data da compra foi ${dataCompra.formatarData()}');
}
