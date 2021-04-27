class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // parâmetros opcionais [ ] com valores padrão
  Data([this.dia = 1, this.mes = 'janeiro', this.ano = 2001]);

  String formatarData() {
    return '$dia de $mes de $ano';
  }
}

main() {
  // agora a criação de um objeto obriga o preenchimento dos parâmetros
  // exigidos pelo construtor
  var dataNascimento = Data();
  print('A data de nascimento é ${dataNascimento.formatarData()}');

  Data dataCompra = Data(12, 'maio');
  print('A data da compra foi ${dataCompra.formatarData()}');
}
