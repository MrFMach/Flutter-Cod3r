import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
