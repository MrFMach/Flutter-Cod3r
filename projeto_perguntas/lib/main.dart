import 'package:flutter/material.dart';

// rodaremos aqui o runApp, que é a porta de entrada do aplicativo
// e passamos como parâmetro uma instância do widget PerguntaApp
main() => runApp(PerguntaApp());

// classe State que vai gerenciar o estado de PerguntaApp

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  // método
  void responder() {
    // setState define o que mudará com a mudança de estado
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  // nessa classe implementamos o método build que recebe um
  // BuildContext e retorna um widget chamado MaterialApp
  //
  @override // responsabiliza o Flutter de sobrescrever todo o contexto (?)
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // método que cria um estado
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
