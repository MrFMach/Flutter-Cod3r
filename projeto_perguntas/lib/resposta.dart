import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoBotao;
  final void Function() botaoPressionado;

  Resposta(this.textoBotao, this.botaoPressionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: botaoPressionado,
        child: Text(
          textoBotao,
          style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
