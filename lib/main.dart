// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatelessWidget {

  final perguntaSelecionada = 0;

  void responder(){
    //perguntaSelecionada++;
    print('Pergunta Respondida');
  }
  
  
  @override
  Widget build(BuildContext context){
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          
        ),
        body: Column(
          children: [
            Text(perguntas[1]),
            RaisedButton(
              child: Text('Preto'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Azul'),
              onPressed: responder,
            ),
  
            RaisedButton(
              child: Text('Rosa'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Verde'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}