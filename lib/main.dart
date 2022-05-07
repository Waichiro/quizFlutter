// ignore_for_file: deprecated_member_use, prefer_const_constructors
import './questao.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Preto'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Azul'),
              onPressed: _responder,
            ),
  
            RaisedButton(
              child: Text('Rosa'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Verde'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}


class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
  
  
