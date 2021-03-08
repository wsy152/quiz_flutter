import 'package:flutter/material.dart';
import 'package:quiz_flutter/questoes.dart';
import 'package:quiz_flutter/resposta.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _response() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
  }

  @override
  Widget build(context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua altura',
        'resposta': ['1.8', '1.9', '2.0', '2.2'],
      },
      {
        'texto': 'Qual o dia do seu aniversário',
        'resposta': ['20', '21', '30', '2'],
      },
      {
        'texto': 'Qual sua sobremesa preferida',
        'resposta': ['bolo', 'torta', 'bala', 'cocada'],
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp in perguntas[perguntaSelecionada]['resposta']) {
      respostas.add(Resposta(texto: textoResp, onClickBotao: _response));
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peguntas'),
        ),
        body: Column(
          children: [
            Questao(texto: perguntas[perguntaSelecionada]['texto']),
            ...respostas
          ],
        ),
      ),
    );
  }
}
