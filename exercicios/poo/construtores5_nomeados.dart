class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // construtor nomeado é o construtor com o mesmo nome da classe com .nome
  // para inserir os parâmetros nomeados, eles devem estar entre chaves
  Data.construtorUm({this.mes = 'janeiro', this.ano = 2001, this.dia = 1});

  // construtor nomeado com um corpo
  Data.construtorDois(this.mes) {
    dia = 20;
    ano = 1888;
  }

  String formatarData() {
    return '$dia de $mes de $ano';
  }
}

main() {
  // agora a criação de um objeto obriga os parâmetros são atribuídos
  // aos nomes, não mais às posições
  var dataNascimento = Data.construtorUm(dia: 3);
  print('A data de nascimento é ${dataNascimento.formatarData()}');

  Data dataCompra = Data.construtorUm(ano: 1900, mes: 'agosto');
  print('A data da compra foi ${dataCompra.formatarData()}');

  var dataFinal = Data.construtorDois('dezembro');
  print('A data final é ${dataFinal.formatarData()}');
}
