class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // apara utilizar os mesmos nomes dos atributos nos parâmetros,
  // utilizamos a palavvra reservada this
  // ex: this.dia é o atributo da classe, dia é o parâmetro do construtor
  Data(int dia, String mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }

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
