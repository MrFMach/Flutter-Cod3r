main() {
  // chama a função, passando o parâmetro externo (a)
  // e armazena em somaCom100
  var somaCom100 = somaParcial(100);

  // chama a função somaParcial através de somaCom100
  // passando o parâmetro interno (b)
  print(somaCom100(31));
  print(somaCom100(1));
  print(somaCom100(150));
  print(somaCom100(2000));
}

// função que retorna outra função
int Function(int) somaParcial(int a) {
  return (int b) {
    return a + b;
  };
}
