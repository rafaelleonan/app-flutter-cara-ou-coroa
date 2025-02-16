import 'package:app_cara_ou_coroa/views/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void _exibirResultado(){
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length );
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("assets/images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
