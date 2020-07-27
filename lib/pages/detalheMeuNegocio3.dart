import 'package:flutter/material.dart';

class DetalheMeuNegocio3 extends StatefulWidget {
  DetalheMeuNegocio3({Key key}) : super(key: key);
  @override
  _DetalheMeuNegocio3State createState() => new _DetalheMeuNegocio3State();
}

class _DetalheMeuNegocio3State extends State<DetalheMeuNegocio3> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detalhes do Cliente Investidor 3"),
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
          Text('Valor do empréstimo: 2.500,00'),
          Divider(),
          Text('Prazo (meses): 18'),
          Divider(),
          Text('Valor das prestações: 285,53'),
          Divider(),
          Text('Taxa de juros (a.m.): 9,00%'),
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
