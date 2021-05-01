class Produto {
  int codigo = 0;
  String nome = '';
  double preco = 0;
  double desconto = 0;

  Produto({this.codigo = 0, this.nome = '', this.preco = 0, this.desconto = 0});

  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}
