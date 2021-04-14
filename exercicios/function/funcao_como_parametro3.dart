main() {
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  // passando um 'int', uma 'Function com  retorno tipo String', uma 'String'
  int tamanho = executar(7, meuPrint, 'hello-dart');
  print('O tamanho total das Strings é $tamanho');
}

int executar(int quantidade, String Function(String) funcao, String texto) {
  String textoCompleto = '';
  for (int i = 0; i < quantidade; i++) {
    textoCompleto += funcao(texto);
  }
  return textoCompleto.length;
}
