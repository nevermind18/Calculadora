import 'package:flutter/material.dart';

import '../components/Editor.dart';

class Calculadora extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculadoraState();
  }
}

class CalculadoraState extends State<Calculadora> {
  double _resultado = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controladorNumero1 = TextEditingController();
    final TextEditingController _controladorNumero2 = TextEditingController();
    final TextEditingController _controladorNumero3 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(_controladorNumero1, "Digite o primeiro numero"),
            Editor(_controladorNumero2, "Digite o segundo numero"),
            Editor(_controladorNumero3, "Digite o terceiro numero"),
            Text(
              "$_resultado",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () =>
                    somaNumeros(_controladorNumero1, _controladorNumero2),
                child: Text("Soma dois numeros")),
            ElevatedButton(
                onPressed: () =>
                    subtraiNumeros(_controladorNumero1, _controladorNumero2),
                child: Text("subtrai dois numeros")),
            ElevatedButton(
                onPressed: () =>
                    multiplicaNumeros(_controladorNumero1, _controladorNumero2),
                child: Text("Multiplica dois numeros")),
            ElevatedButton(
                onPressed: () =>
                    divideNumeros(_controladorNumero1, _controladorNumero2),
                child: Text("divide dois numeros")),
            ElevatedButton(
                onPressed: () => mediaTresNumeros(_controladorNumero1,
                    _controladorNumero2, _controladorNumero3),
                child: Text("media de tres numeros")),
            ElevatedButton(
                onPressed: () => maiorTresNumeros(_controladorNumero1,
                    _controladorNumero2, _controladorNumero3),
                child: Text("maior entre os Tres")),
            ElevatedButton(
                onPressed: () => menorTresNumeros(_controladorNumero1,
                    _controladorNumero2, _controladorNumero3),
                child: Text("menor entre os Tres")),
          ],
        ),
      ),
    );
  }

  void somaNumeros(controladorNumero1, controladorNumero2) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;

    setState(() {
      _resultado = _numero1 + _numero2;
    });
  }

  void subtraiNumeros(controladorNumero1, controladorNumero2) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;

    setState(() {
      _resultado = _numero1 - _numero2;
    });
  }

  void multiplicaNumeros(controladorNumero1, controladorNumero2) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;
    setState(() {
      _resultado = _numero1 * _numero2;
    });
  }

  void divideNumeros(controladorNumero1, controladorNumero2) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;
    setState(() {
      if (_numero2 != 0) _resultado = _numero1 / _numero2;
    });
  }

  void mediaTresNumeros(
      controladorNumero1, controladorNumero2, controladorNumero3) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;
    final double _numero3 = double.tryParse(controladorNumero3) != null
        ? double.parse(controladorNumero3)
        : 0;

    setState(() {
      _resultado = (_numero1 + _numero2 + _numero3) / 3;
    });
  }

  void maiorTresNumeros(
      controladorNumero1, controladorNumero2, controladorNumero3) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;
    final double _numero3 = double.tryParse(controladorNumero3) != null
        ? double.parse(controladorNumero3)
        : 0;

    double _resultadoFinal = 0;

    if (_numero1 > _numero2 && _numero1 > _numero3) {
      _resultadoFinal = _numero1;
    } else if (_numero2 > _numero3 && _numero2 > _numero1) {
      _resultadoFinal = _numero2;
    } else {
      _resultadoFinal = _numero3;
    }

    setState(() {
      _resultado = _resultadoFinal;
    });
  }

  void menorTresNumeros(
      controladorNumero1, controladorNumero2, controladorNumero3) {
    final double _numero1 = double.tryParse(controladorNumero1) != null
        ? double.parse(controladorNumero1)
        : 0;
    final double _numero2 = double.tryParse(controladorNumero2) != null
        ? double.parse(controladorNumero2)
        : 0;
    final double _numero3 = double.tryParse(controladorNumero3) != null
        ? double.parse(controladorNumero3)
        : 0;

    double _resultadoFinal = 0;

    if (_numero1 < _numero2 && _numero1 < _numero3) {
      _resultadoFinal = _numero1;
    } else if (_numero2 < _numero3 && _numero2 < _numero1) {
      _resultadoFinal = _numero2;
    } else {
      _resultadoFinal = _numero3;
    }

    setState(() {
      _resultado = _resultadoFinal;
    });
  }
}
