import 'package:flutter/material.dart';

void main() => runApp(PaginaInicial());

class PaginaInicial extends StatefulWidget {
  @override
  PaginaInicialState createState() => PaginaInicialState();
}

// classe State que vai gerenciar o estado de PaginaInicial
class PaginaInicialState extends State<PaginaInicial> {
  int contador = 0;
  var titulo = '';

  void incrementar() {
    setState(() {
      contador++;
      print(contador);
      contador % 2 == 0 ? titulo = 'NUMERO PAR' : titulo = 'NUMERO IMPAR';
    });
  }

  void zerar() {
    setState(() {
      contador = 0;
      print(contador);
      titulo = 'ZERADO!!!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: Column(
          children: [
            Text(
              '$contador',
              style: TextStyle(fontSize: 200),
            ),
            ElevatedButton(onPressed: incrementar, child: Text('INCREMENTAR')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: zerar,
          child: Icon(Icons.clear),
          backgroundColor: Colors.red,
          foregroundColor: Colors.yellow,
          splashColor: Colors.cyan,
          tooltip: 'Zerar',
        ),
      ),
    );
  }
}
