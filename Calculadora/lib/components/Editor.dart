import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final _controlador;
  final _rotulo;

  Editor(this._controlador, this._rotulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
      child: TextField(
        controller: _controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          labelText: _rotulo,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}