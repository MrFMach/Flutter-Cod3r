main() {
  // chama a função, passando os parâmetros
  // externo (a) e interno (b)
  print(somaParcial(2)(10));
}

// função que retorna outra função
int Function(int) somaParcial(int a) {
  return (int b) {
    return a + b;
  };
}
