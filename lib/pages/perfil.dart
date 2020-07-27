import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  Perfil({Key key}) : super(key: key);
  @override
  _PerfilState createState() => new _PerfilState();
}

class _PerfilState extends State<Perfil> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Perfil"),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            value: _value,
            title: Text('Investidor'),
            subtitle: Text('Preciso investir meu dinheiro'),
            secondary: Icon(Icons.attach_money),
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          CheckboxListTile(
            value: _value,
            title: Text('Tomador'),
            subtitle: Text('Preciso de dinheiro'),
            secondary: Icon(Icons.money_off),
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
