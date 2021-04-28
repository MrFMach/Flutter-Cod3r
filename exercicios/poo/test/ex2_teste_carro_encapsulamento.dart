import '../model/ex2_carro_encapsulamento.dart';

main() {
  Carro tesla = Carro();

  // acessa o valor de um atributo privado através de chamadas
  // dos métodos get e set da classe

  // obtem o valor do atributo
  print('--> velocidade: ${tesla.getVelocidade} km/h');

  // altera o valor do atributo, se passar na validação
  // do set (a validação é uma vantagem de usar o set)
  tesla.setCor = 'rosa';
}
