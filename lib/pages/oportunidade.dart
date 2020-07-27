import 'package:flutter/material.dart';
import 'package:zoop/pages/detalheOportunidade1.dart';
import 'package:zoop/pages/detalheOportunidade2.dart';
import 'package:zoop/pages/detalheOportunidade3.dart';

class Oportunidade extends StatefulWidget {
  Oportunidade({Key key}) : super(key: key);
  @override
  _OportunidadeState createState() => new _OportunidadeState();
}

class _OportunidadeState extends State<Oportunidade> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Oportunidades"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new DetalheOportunidade1(),
                  ),
                );
              },
              title: Text(
                'Cliente Tomador 1',
                textAlign: TextAlign.center,
              ),
              subtitle: Column(
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
                  Text('Valor do empréstimo: 1.000,00'),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new DetalheOportunidade2(),
                  ),
                );
              },
              title: Text(
                'Cliente Tomador 2',
                textAlign: TextAlign.center,
              ),
              subtitle: Column(
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
                  Text('Valor do empréstimo: 100,00'),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new DetalheOportunidade3(),
                  ),
                );
              },
              title: Text(
                'Cliente Tomador 3',
                textAlign: TextAlign.center,
              ),
              subtitle: Column(
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
                  Text('Valor do empréstimo: 2.500,00'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
