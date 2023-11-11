import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerador Aleatório',
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerador Aleatório')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Titulo(), SizedBox(height: 30), NumeroAleatorio()],
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Gerador de números',
      style: TextStyle(fontSize: 28),
    );
  }
}

class NumeroAleatorio extends StatefulWidget {
  @override
  NumeroAleatorioState createState() => NumeroAleatorioState();
}

class NumeroAleatorioState extends State<NumeroAleatorio> {
  int _numeroAleatorio = 0;

  void _gerarNumeroAleatorio() {
    final rand = Random();
    setState(() {
      _numeroAleatorio = rand.nextInt(100); // Gera um número entre 0 e 99
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_numeroAleatorio',
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          child: Text('Gerar número'),
          onPressed: _gerarNumeroAleatorio,
        ),
      ],
    );
  }
}
