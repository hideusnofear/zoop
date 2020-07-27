import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ajuda'),
      ),
      body: new Column(
        children: <Widget>[
          // Perfil
          new Column(
            children: [
              new Text(''),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.arrow_right,
                  color: const Color(0xFF000000), size: 20.0),
              new Text(
                "Perfil",
                style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  //fontWeight: FontWeight.w200,
                  //fontFamily: "Roboto"
                ),
              )
            ],
          ),
          new Text(
            'Aqui você consulta e altera informações sobre o seu perfil, definindo se atuará como um Tomador e/ou um Investidor, passando a exibir os Clientes interessados em solicitar empréstimos e também os que desejam investir.',
            textAlign: TextAlign.justify,
          ),
          // Operações
          new Column(
            children: [
              new Text(''),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.arrow_right,
                  color: const Color(0xFF000000), size: 20.0),
              new Text(
                "Operações",
                style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  //fontWeight: FontWeight.w200,
                  //fontFamily: "Roboto"
                ),
              )
            ],
          ),
          new Column(
            children: [
              new Text(
                  'Aqui você consulta e cadastra novas operações de empréstimo e/ou investimento. que servirão de base para que os outros Clientes possam fechar negócio, emprestando ou investindo dinheiro.'),
            ],
          ),
          new Text(
            ' ',
            textAlign: TextAlign.justify,
          ),

          // Oportunidades
          new Column(
            children: [
              new Text(' '),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.arrow_right,
                  color: const Color(0xFF000000), size: 20.0),
              new Text(
                "Oportunidades",
                style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  //fontWeight: FontWeight.w200,
                  //fontFamily: "Roboto"
                ),
              )
            ],
          ),
          new Column(
            children: [
              new Text(
                  'Aqui você consulta as oportunidades de negócios, através de uma lista de Clientes interessados em emprestar dinheiro ou pedir emprestado. Basta clicar no Cliente para consultar maiores informações sobre a operação cadastrada. Caso as informações sejam atrativas, basta manifestar o interesse dando um Like.'),
            ],
          ),
          new Text(
            '',
            textAlign: TextAlign.justify,
          ),

          // Meus negócios
          new Column(
            children: [
              new Text(''),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.arrow_right,
                  color: const Color(0xFF000000), size: 20.0),
              new Text(
                "Meus negócios",
                style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  //fontWeight: FontWeight.w200,
                  //fontFamily: "Roboto"
                ),
              )
            ],
          ),
          new Column(
            children: [
              new Text(
                  'Aqui você contrata e consulta as informações sobre os seus negócios. O negócio ocorre quando os dois Clientes, o que precisa do dinheiro e o que possui sobrando para emprestar, se encontram. Ou seja, os dois manifestam interesse na oferta de negócio do outro. A partir desse momento os dois são avisados e o negócio fica disponível para a contratação por ambas as partes.'),
            ],
          ),
        ],
      ),
    );
  }
}
