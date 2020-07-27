import 'package:flutter/material.dart';

class DetalheMeuNegocio2 extends StatefulWidget {
  DetalheMeuNegocio2({Key key}) : super(key: key);
  @override
  _DetalheMeuNegocio2State createState() => new _DetalheMeuNegocio2State();
}

class _DetalheMeuNegocio2State extends State<DetalheMeuNegocio2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detalhes do Cliente Tomador 2"),
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
              Icon(Icons.star),
            ],
          ),
          Divider(),
          Text('Valor do empréstimo: 100,00'),
          Divider(),
          Text('Prazo (meses): 4'),
          Divider(),
          Text('Valor das prestações: 28,00'),
          Divider(),
          Text('Taxa de juros (a.m.): 4,69%'),
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
