main() {
  // dart é fortemente tipado
  //
  int a = 3;
  double b = 3.2;

  // var assume o tipo por inferência, nesse caso assume String
  var c = 'dart é legal';
  print(c is String); // true

  bool estaChovendo = true; // 1
  bool estaFrio = false; // 0
  print(estaChovendo || estaFrio); // OU  // print true

  // modo fracamente tipado - tipo dinâmico
  dynamic x = 'Teste';
  x = 123;
  x = true;
  x = 2.78;
  print(x);

  // constantes - const e final
  const y = 12;
  // y = 10; // Error: Can't assign to the const variable 'y'

  final z = 1;
  // z = 2; // Error: Can't assign to the final variable 'z'
}
