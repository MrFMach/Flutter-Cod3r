main() {
  // função 'Arrow (=>)' usa apenas uma linha, quando há apenas uma operação.
  // A variável 'adicao' tipada por inferência (var) como
  // 'int Function', recebe o retorno (a + b) da função anônima
  var adicao = (int a, int b) => a + b;
  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;

  print(adicao(20, 4));
  print(subtracao(20, 4));
  print(multiplicacao(20, 4));
  print(divisao(20, 4));
}
