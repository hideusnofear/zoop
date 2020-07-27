import 'package:flutter/material.dart';

class Operacao extends StatefulWidget {
  Operacao({Key key}) : super(key: key);
  @override
  _OperacaoState createState() => new _OperacaoState();
}

class _OperacaoState extends State<Operacao> {
  var valorEmprestimo = 0.0;
  var valorPrestacao = 0.0;
  var prazo = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Operações"),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(
            title: new Text(
              "Valor do empréstimo",
              textAlign: TextAlign.left,
            ),
            subtitle: Column(
              children: <Widget>[
                new Slider(
                  value: valorEmprestimo,
                  onChanged: (novoValorEmprestimo) {
                    setState(() => valorEmprestimo = novoValorEmprestimo);
                  },
                  min: 0.0,
                  max: 15000.0,
                  divisions: 15000,
                  // label: "$valorEmprestimo",
                ),
                Text(
                  "$valorEmprestimo",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            isThreeLine: true,
          ),
          new ListTile(
            title: new Text(
              "Prazo",
              textAlign: TextAlign.left,
            ),
            subtitle: Column(
              children: <Widget>[
                new Slider(
                  value: prazo,
                  onChanged: (novoPrazo) {
                    setState(() => prazo = novoPrazo);
                  },
                  min: 0.0,
                  max: 36.0,
                  divisions: 36,
                  // label: "$prazo",
                ),
                Text(
                  "$prazo",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            isThreeLine: true,
          ),
          new ListTile(
            title: new Text(
              "Valor da prestação",
              textAlign: TextAlign.left,
            ),
            subtitle: Column(
              children: <Widget>[
                new Slider(
                  value: valorPrestacao,
                  onChanged: (novovalorPrestacao) {
                    setState(() => valorPrestacao = novovalorPrestacao);
                  },
                  min: 0.0,
                  max: 15000.0,
                  divisions: 15000,
                  // label: "$valorPrestacao",
                ),
                Text(
                  "$valorPrestacao",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            isThreeLine: true,
          ),
          new ListTile(
            trailing: new Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
