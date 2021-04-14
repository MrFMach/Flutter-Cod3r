// função como tipo de variável
//

main() {
  // variável 'soma1' do tipo 'int Function(int, int)'
  // recebe o retorno da função existente 'somaF'
  //
  int Function(int, int) soma1 = somaF;
  print(soma1(2, 3));

  // variável 'soma2' do tipo 'int Function(int, int)'
  // recebe o retorno da função anônima, declarada e já executada
  //
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(8, 10));

  // similar ao exemplo anterior, porém agora a
  // variável 'soma3' recebe o tipo 'dynamic Function' por inferência (var)
  var soma3 = (x, y) {
    return x + y;
  };
  print(soma3(20, 30));
}

int somaF(int a, int b) {
  return a + b;
}
