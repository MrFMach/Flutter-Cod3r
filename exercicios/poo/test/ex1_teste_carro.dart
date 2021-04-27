import '../model/ex1_carro.dart';

main() {
  Carro tesla = Carro.construtorUm(velocidadeMax: 210);
  print('Fim... velocidade atual retornada: ${tesla.acelerar()} km/h');
  print('Fim... velocidade atual retornada: ${tesla.frear()} km/h');
}
