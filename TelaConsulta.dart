import 'package:flutter/material.dart';

class Consulta extends StatefulWidget {
  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  Widget rederizateTable(String dado) {
    var dados = {
      'consulta': [
        {
          "codProduto": '1246',
          "nomeProduto": "couve",
          "qualidade": "1",
          "codForn": "123",
          "nomeForn": "sitio doido"
        },
        {
          "codProduto": '234',
          "nomeProduto": "repolho",
          "qualidade": "2",
          "codForn": "66435",
          "nomeForn": "sitio maluco"
        },
        {
          "codProduto": '1243',
          "nomeProduto": "feijoada",
          "qualidade": "3",
          "codForn": "234",
          "nomeForn": "sitio pirado"
        },
        {
          "codProduto": '1243',
          "nomeProduto": "feijoada",
          "qualidade": "3",
          "codForn": "234",
          "nomeForn": "sitio pirado"
        }
      ]
    };
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemCount: dados['consulta'].length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: (index % 2 == 0 ? Colors.green[100] : Colors.white),
              border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ))),
          child: ListTile(
              title: index != 0
                  ? Text(
                      dados['consulta'][index][dado].toString(),
                      style: TextStyle(fontSize: 20.0),
                    )
                  : Text('prima')),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: rederizateTable('codProduto'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: rederizateTable('nomeProduto'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: rederizateTable('qualidade'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: rederizateTable('codForn'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: rederizateTable('nomeForn'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}