import 'package:flutter/material.dart';
import 'package:zoop/pages/ajuda.dart';
import 'package:zoop/pages/meuNegocio.dart';
import 'package:zoop/pages/operacao.dart';
import 'package:zoop/pages/oportunidade.dart';
import 'package:zoop/pages/perfil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Zoop"),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('Anderson Monteiro'),
                accountEmail: new Text('apm.com@gmail.com'),
                currentAccountPicture: new GestureDetector(
                  onTap: () => print("Foto do perfil"),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        "https://lh3.googleusercontent.com/-NFM5WmX0u_E/Xskzg0KCJSI/AAAAAAAAAGI/f-Hm5PvLdqMCkvda6VKQCjNe_1NSOVS9ACEwYBhgLKtQDAL1OcqwrDV0s3gz00eXQPcCkfDG0NLJo8MloG3zJtBE4RyRfX7BqN1Qyexa7hGQL4vQXt7b-xHwR14XUnh0kj1v7c0_vzL9EybYJ5LOAhhFZSg7wfmKNMez6vSP36ARwxG3pN2ZaULIESDqR4JUfjuPONCpIm3Q10bcrVUWiCYf09D1baCkEh28U-wU9fq96-lTxAbQAG1VWzLoZyxrz9s7ig0KiKc6SMOc8nJIyhmmaryUsUQHQGd78v1vTg-TODp08yXgObRUEsaDJnwcdxJyhguLmRcMSBAh2TJLEx0ugJ0MbAbh4HFccBfRF5B_V-UN5WJcXVbXQ1_bmkyOmWyuFfVZBvCFYPaMxOAbqMKI52Eb3LwaZwO1Dcfcya9-355mNpfYOAyqjs67-haYlah9j8KwdJRaTCCtCx5VyZKb42tgv45NXwEqOtdVuDNFOhcCEz3NwQcD7UmHHL-bTulm5zdJBcFwUWAnO7wn1rfIWZExukGApKAbGWm2znKLLq1qmEQNR7iU5YxD7qZ-KDFiUo3h2nGQmFesg8IJ3brhiETuBFfG63rnvDOCZWiJdt2x5JGzMETY5DE7ctLukpiftg2AWjbrRstbtQ9Rkpuunmxo_MOvr8_gF/w140-h140-p/imagem_perfil_003.png"),
                  ),
                ),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://static6.depositphotos.com/1003229/609/v/450/depositphotos_6096843-stock-illustration-circuit-board-vector-background.jpg")))),
            new ListTile(
                title: new Text("Perfil"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Perfil(),
                    ),
                  );
                }),
            new ListTile(
                title: new Text("Operações"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Operacao(),
                    ),
                  );
                }),
            new ListTile(
                title: new Text("Oportunidades"),
                trailing: new Icon(Icons.arrow_drop_down),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Oportunidade(),
                    ),
                  );
                }),
            new ListTile(
                title: new Text("Meus negócios"),
                trailing: new Icon(Icons.arrow_drop_down),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new MeuNegocio(),
                    ),
                  );
                }),
            new ListTile(
                title: new Text("Ajuda"),
                trailing: new Icon(Icons.help_outline),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Ajuda(),
                    ),
                  );
                }),
            new Divider(),
            new ListTile(
              title: new Text("Fechar"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Hexcolor("#6e48bb")),
        child: Column(
          children: [
            Image.network(
                'https://raw.githubusercontent.com/hideusnofear/zoop/master/assets/img/zoop.png')
          ],
        ),
      ),
    );
  }
}
