main() {
  // passando um 'int', uma 'Function', uma 'String'
  // a função 'print' é a do sistema e não tem retorno
  executar(2, print, 'hello-dart');
  executar(3, print, 'hello-flutter');
  executar(5, print, 'dart é vida');
}

void executar(int quantidade, Function(String) funcao, String texto) {
  for (int i = 0; i < quantidade; i++) {
    funcao(texto);
  }
}
