// classe: uma forma de objetos
class Data {
  int dia = 0;
  String mes = '';
  int ano = 0;

  // método: uma função dentro da classe
  // podemos utilizar os atributos como parâmetros
  String formatarData() {
    return '$dia de $mes de $ano';
  }
}

main() {
  // instanciando dataAniversário como um objeto do tipo Data
  // recebe por inferência o tipo Data, 'new' é opcional
  //
  // Data() é o construtor padrão, que tem o mesmo nome da classe
  // e que não recebe parâmetros na criação do novo objeto
  // essa função existe de forma implícita
  //
  var dataNascimento = new Data();
  dataNascimento.dia = 3;
  dataNascimento.mes = 'dezembro';
  dataNascimento.ano = 1981;
  print('A data de nascimento é ${dataNascimento.formatarData()}');

  Data dataCompra = Data();
  dataCompra.dia = 13;
  dataCompra.mes = 'março';
  dataCompra.ano = 2020;
  print('A data da compra foi ${dataCompra.formatarData()}');
}
