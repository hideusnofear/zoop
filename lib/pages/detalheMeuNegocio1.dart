import 'package:flutter/material.dart';

class DetalheMeuNegocio1 extends StatefulWidget {
  DetalheMeuNegocio1({Key key}) : super(key: key);
  @override
  _DetalheMeuNegocio1State createState() => new _DetalheMeuNegocio1State();
}

class _DetalheMeuNegocio1State extends State<DetalheMeuNegocio1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detalhes do Cliente Investidor 1"),
      ),
      body: new Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_half),
            ],
          ),
          Divider(),
          Text('Valor do empréstimo: 1.000,00'),
          Divider(),
          Text('Prazo (meses): 12'),
          Divider(),
          Text('Valor das prestações: 100,00'),
          Divider(),
          Text('Taxa de juros (a.m.): 11,00%'),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton.icon(
                    label: Text('Contratar'),
                    icon: Icon(Icons.save),
                    onPressed: () {
                      print('contratar');
                    },
                  ),
                  FlatButton.icon(
                    label: Text('Desistir'),
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      print('desistir');
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
