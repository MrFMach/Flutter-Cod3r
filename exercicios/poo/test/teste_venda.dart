import '../model/cliente.dart';
import '../model/produto.dart';
import '../model/venda.dart';
import '../model/venda_item.dart';

main() {
  var venda = Venda(
      cliente: Cliente(nome: 'Rodrigo Mattos', cpf: '098.765.432.12'),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 5,
            produto: Produto(
                codigo: 12345,
                nome: 'mouse sem fio',
                preco: 55.50,
                desconto: 0.5)),
        VendaItem(
            quantidade: 10,
            produto: Produto(
                codigo: 15678,
                nome: 'monitor 15"',
                preco: 453.00,
                desconto: 0.5)),
        VendaItem(
            quantidade: 100,
            produto: Produto(
                codigo: 19876, nome: 'cabo usb-c', preco: 5.10, desconto: 0.25))
      ]);

  print('Valor total da venda: ${venda.valorTotal}');
  print('Nome do segundo produto: ${venda.itens[1].produto.nome}');
  print('CPF do cliente: ${venda.cliente.cpf} ');
}
