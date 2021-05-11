import 'package:flutter/material.dart';
import 'package:projeto_perguntas/pergunta.dart';
import 'package:projeto_perguntas/resposta.dart';

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
  }

  // nessa classe implementamos o método build que recebe um
  // BuildContext e retorna um widget chamado MaterialApp
  //
  @override // responsabiliza o Flutter de sobrescrever todo o contexto (?)
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'pergunta': 'Em qual região você vive?',
        'resposta': ['Norte', 'Nordesde', 'Centro-Oeste', 'Sudeste', 'Sul']
      },
      {
        'pergunta': 'Qual é a sua área de atuação?',
        'resposta': [
          'Análise de Dados',
          'Redes',
          'Sistemas Embarcados',
          'Front-End',
          'Back-End'
        ]
      },
      {
        'pergunta': 'Em que tipo de empresa você trabalha?',
        'resposta': [
          'Tecnologia',
          'Eletroeletrônicos',
          'Serviços',
          'Start-Up',
          'Serviços'
        ]
      },
      {
        'pergunta': 'Qual é o seu nível atual?',
        'resposta': ['Estagiário', 'Treinee', 'Pleno', 'Sênior', 'Especialista']
      },
    ];

    List<Widget> respostas = [];

    for (var textoResposta in perguntas[_perguntaSelecionada]['resposta']) {
      respostas.add(Resposta(textoResposta, _responder));
    }

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
            Pergunta(perguntas[_perguntaSelecionada]['pergunta']),
            ...respostas,
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
