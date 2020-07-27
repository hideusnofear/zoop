import 'package:flutter/material.dart';

class DetalheOportunidade3 extends StatefulWidget {
  DetalheOportunidade3({Key key}) : super(key: key);
  @override
  _DetalheOportunidade3State createState() => new _DetalheOportunidade3State();
}

class _DetalheOportunidade3State extends State<DetalheOportunidade3> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detalhes do Cliente Tomador 3"),
      ),
      body: new Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_half),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
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
