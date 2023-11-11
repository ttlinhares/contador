import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    
    return MaterialApp(
      
      home: PaginaInicial()
    
    );
    
  }
}

class PaginaInicial extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerador Aleatório")
      
      ),
      body: Center(
        child: Column(
          Titulo(),
          SizedBox(height:30),
          NumeroAleatorio()
        )
       )
    
    );
  }
}

class Titulo extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    
    return Container(
      child: Text("Gerador de números",
                  style: TextStyle(fontSize: 28)
                 )
   
    );
  }
}


class NumeroAleatorio extends StatefulWidget{
  
  @override
  NumeroAleatorioState createState()=> NumeroAleatorioState();
  
}


class NumeroAleatorioState extends State<NumeroAleatorio>{
  
  @override
  Widget build(BuildContext context){
    
    return Container(
      child Column(
        childreen: [
          Text("0", TextStyle(fontSize:28)),
          SizedBox(height:30),
          RaisedButton(child:Text("Gerar número"))
          
          
        ]
      )
    
    );
  
  }

}

