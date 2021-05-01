import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

// rodaremos aqui o runApp, que é a porta de entrada do aplicativo
// e passamos como parâmetro uma instância do widget PerguntaApp
main() => runApp(PerguntaApp());

// classe State que vai gerenciar o estado de PerguntaApp

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  // método
  void _responder() {
    // setState define o que mudará com a mudança de estado
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  // nessa classe implementamos o método build que recebe um
  // BuildContext e retorna um widget chamado MaterialApp
  //
  @override // responsabiliza o Flutter de sobrescrever todo o contexto (?)
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual o seu animal favorito?',
      'Como vai você?',
      'Qual é o seu nome?'
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
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // método que cria um estado
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
