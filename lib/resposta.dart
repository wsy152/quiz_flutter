import 'dart:ui';

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function onClickBotao;
  Resposta({this.texto, this.onClickBotao});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
        onPressed: onClickBotao,
        child: Text(texto),
      ),
    );
  }
}
