import 'package:flutter/material.dart';

class Investimento extends StatefulWidget {
  Investimento({Key key}) : super(key: key);
  @override
  _InvestimentoState createState() => new _InvestimentoState();
}

class _InvestimentoState extends State<Investimento> {
  var valorInvestimento = 0.0;
  var valorPrestacao = 0.0;
  var prazo = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Investimentos"),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(
            title: new Text(
              "Valor a disponibilizar",
              textAlign: TextAlign.left,
            ),
            subtitle: Column(
              children: <Widget>[
                new Slider(
                  value: valorInvestimento,
                  onChanged: (novoValorInvestimento) {
                    setState(() => valorInvestimento = novoValorInvestimento);
                  },
                  min: 0.0,
                  max: 15000.0,
                  divisions: 15000,
                  // label: "$valorInvestimento",
                ),
                Text(
                  "$valorInvestimento",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            isThreeLine: true,
          ),
          new ListTile(
            title: new Text(
              "Prazo máximo permitido",
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
              "Valor da prestação maxima permitida",
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
