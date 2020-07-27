import 'package:flutter/material.dart';

class DetalheOportunidade1 extends StatefulWidget {
  DetalheOportunidade1({Key key}) : super(key: key);
  @override
  _DetalheOportunidade1State createState() => new _DetalheOportunidade1State();
}

class _DetalheOportunidade1State extends State<DetalheOportunidade1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detalhes do Cliente Tomador 1"),
      ),
      body: new Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_half),
              Icon(Icons.star_border),
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
                    label: Text('Não gostei'),
                    icon: Icon(Icons.thumb_down),
                    onPressed: () {
                      print('dislike');
                    },
                  ),
                  FlatButton.icon(
                    label: Text('Gostei'),
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {
                      print('like');
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
