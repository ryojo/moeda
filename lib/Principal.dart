

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moeda/Moeda.dart';

class Principal extends StatefulWidget {
 


 
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  var _logo = AssetImage("imagens/logo.png");
   
 void _Moedas(){



var itens = ["cara", "coroa"];
var numero =  Random().nextInt(itens.length);
var resultado = itens[numero];
  Navigator.push(context,
 MaterialPageRoute(builder: (context) => Moeda(resultado) 
 )
  );

 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xff53c68c),
       backgroundColor: Color.fromRGBO(83, 198, 140, 10),
       body: Container(
         width: double.infinity,
        padding: EdgeInsets.all(32),        
       decoration: BoxDecoration(
        
       ),
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
          Image(image:_logo ,),
          Padding(padding: EdgeInsets.only(top:50),
          child: GestureDetector(
              child: Image.asset("imagens/botao_jogar.png"),
              onTap: _Moedas,
          ) 
        
        
          ),
         ],
       )
       ),
        );
    
  }
}