import 'package:flutter/material.dart';

class Resultado extends StatefulWidget{

  String? valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado>{
  @override
  Widget build(BuildContext context){

    String? caminho;

    if(widget.valor == "cara"){
      caminho = "images/moeda_cara.png";
    } else{
      caminho = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor:  Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminho),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}