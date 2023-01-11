import 'package:calculadora/screens/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraMain());
}

class CalculadoraMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Calculadora(), //Column
    );
  }
}
