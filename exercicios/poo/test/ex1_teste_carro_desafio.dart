import '../model/ex1_carro_desafio.dart';

main() {
  Carro tesla = Carro.construtorUm(velocidadeMax: 210);
  print('Fim... velocidade atual retornada: ${tesla.acelerar()} km/h');
  print('Fim... velocidade atual retornada: ${tesla.frear()} km/h');

  // Imprime atributos de uma classe, mostrando
  // que esses atributos não são privados
  print(tesla.velocidadeAtual);
  print(tesla.velocidadeMax);
}
