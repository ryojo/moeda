import 'package:flutter/material.dart';
import 'package:moeda/Principal.dart';

class Moeda extends StatefulWidget {
Moeda(this.valor);

String valor;


 
 
  @override
  _MoedaState createState() => _MoedaState();
}

class _MoedaState extends State<Moeda> {





void _Voltar(){
Navigator.pop(context,
 MaterialPageRoute(builder:(context)=> Principal()
 )
 );

}

  @override
  Widget build(BuildContext context) {
  
var caminhoImagem;

if(widget.valor == "cara"){

      caminhoImagem = "imagens/moeda_cara.png";
  
}else{
 caminhoImagem = "imagens/moeda_coroa.png";
}
   
   
    return Scaffold(
          backgroundColor: Color.fromRGBO(83, 198, 140, 10 ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              
           ), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
             Image.asset(caminhoImagem, width: 400,),
           Padding(padding: EdgeInsets.only(top:50),
           child:GestureDetector(
                child: Image.asset("imagens/botao_voltar.png"),
                onTap: _Voltar, 
            ),
           ),
            
              
            ],
          ),
          ),
    );
  }
}