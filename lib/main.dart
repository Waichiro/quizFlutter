// ignore_for_file: deprecated_member_use, prefer_const_constructors
import './questionario.dart';
import './resultado.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
      {
        'texto':'Qual é a sua cor favorita?',
        'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco']

      },
      {
        'texto':'Qual é o seu animal favorito?',
        'resposta': ['Coelho', 'Gato', 'Cachorro', 'Elefante']

      },
      {
        'texto':'Qual é o seu nome favorito?',
        'resposta': ['Leo', 'Gabriel', 'Maria', 'João']

      },
    ];

  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }



  @override
  Widget build(BuildContext context){
    
   
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          
        ),
        body: temPerguntaSelecionada ? Questionario(perguntas: _perguntas, perguntaSelecionada: _perguntaSelecionada, quandoResponderesponder: _responder)  : Resultado()
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
  
  
