import 'package:flutter/material.dart';
import 'package:zoop/pages/detalheMeuNegocio1.dart';
import 'package:zoop/pages/detalheMeuNegocio2.dart';
import 'package:zoop/pages/detalheMeuNegocio3.dart';

class MeuNegocio extends StatefulWidget {
  MeuNegocio({Key key}) : super(key: key);
  @override
  _MeuNegocioState createState() => new _MeuNegocioState();
}

class _MeuNegocioState extends State<MeuNegocio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Meus negócios"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new DetalheMeuNegocio1(),
                  ),
                );
              },
              title: Text(
                'Cliente Investidor 1',
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
                    builder: (BuildContext context) => new DetalheMeuNegocio2(),
                  ),
                );
              },
              title: Text(
                'Cliente Investidor 2',
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
                    builder: (BuildContext context) => new DetalheMeuNegocio3(),
                  ),
                );
              },
              title: Text(
                'Cliente Investidor 3',
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
