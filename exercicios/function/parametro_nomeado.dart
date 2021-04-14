// parâmetros nomeados
// não importa a posição dos parâmetros

main() {
  saudarPessoa(nome: "Manu", idade: 33);
  saudarPessoa(idade: 89, nome: "Neusa");
}

saudarPessoa({required String nome, required int idade}) {
  print("Puxa $nome, nem parece que você tem $idade anos!");
}
