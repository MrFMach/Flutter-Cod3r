// classe: uma forma de objetos

class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // Criação do contrutor que exige parâmentos
  Data(int diaInicial, String mesInicial, int anoInicial) {
    // atribuindo aos atributos da classe
    dia = diaInicial;
    mes = mesInicial;
    ano = anoInicial;
  }

  String formatarData() {
    return '$dia de $mes de $ano';
  }
}

main() {
  // agora a criação de um objeto obriga o preenchimento dos parâmetros
  // exigidos pelo construtor
  var dataNascimento = new Data(15, 'Novembro', 1800);
  print('A data de nascimento é ${dataNascimento.formatarData()}');

  Data dataCompra = Data(1, 'janeiro', 2021);
  print('A data da compra foi ${dataCompra.formatarData()}');
}
