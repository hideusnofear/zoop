import 'package:flutter/material.dart';

class DetalheOportunidade2 extends StatefulWidget {
  DetalheOportunidade2({Key key}) : super(key: key);
  @override
  _DetalheOportunidade2State createState() => new _DetalheOportunidade2State();
}

class _DetalheOportunidade2State extends State<DetalheOportunidade2> {
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
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
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
