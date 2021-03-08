import 'package:flutter/material.dart';

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
    final perguntas = [
      'Qual é a sua altura',
      'Qual o dia do seu aniversário',
      'Qual o dia do sua musica preferida',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(perguntas.elementAt(perguntaSelecionada)),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(perguntaSelecionada)),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _response,
              child: Text('Resposta 1'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _response,
              child: Text('Resposta 2'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _response,
              child: Text(perguntas.elementAt(perguntaSelecionada)),
            ),
          ],
        ),
      ),
    );
  }
}
