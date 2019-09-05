import 'package:flutter/material.dart';

class Lancamento extends StatefulWidget {
  @override
  _LancamentoState createState() => _LancamentoState();
}

class _LancamentoState extends State<Lancamento> {

var dropDown =["Ótima","Média","Ruim"];
var currentItemSelected = "Ótima";

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
          height: 50.0,
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
            Row(
              children: <Widget>[
// Código de fornecedor
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 3.70,
                          padding: EdgeInsets.all(8.0),
                          color: Colors.white,
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: 
                              Text(
                                "Código de Fornecedor",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )
                              ,),
                              Container(
                                height: 40.0,
                                child: Stack(
                                    alignment: const Alignment(1.0, 1.0),
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: "Insira o código",
                                            hintStyle:
                                                TextStyle(fontSize: 20.0),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            )),
                                      ),
                                      RaisedButton(
                                        onPressed: () {},
                                        child: Icon(Icons.search),
                                      )
                                    ]),
                              )
                            ],
                          ))),

//Nome do fornecedor
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.80,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                "Nome do Fornecedor",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),),
                              Container(
                                height: 40.0,
                                child: Stack(
                                    alignment: const Alignment(1.0, 1.0),
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: "Nome do fornecedor",
                                            hintStyle:
                                                TextStyle(fontSize: 20.0),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            )),
                                      ),
                                    ]),
                              )
                            ],
                          )

// código de rastreio
                          ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.7,
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                              "Código de rastreio",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            ),
                            Container(
                              height: 40.0,
                              child: Stack(
                                  alignment: const Alignment(1.0, 1.0),
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                          hintText: "Insira o código",
                                          hintStyle: TextStyle(fontSize: 20.0),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          )),
                                    ),
                                    RaisedButton(
                                      onPressed: () {},
                                      child: Icon(Icons.local_shipping),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

// Segunda linha
            Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
// Caixa verde central
                  child: Container(
                    color: Colors.green[100],
                    padding: EdgeInsets.all(8.0),
                    child:
                    Row(children: <Widget>[
//codigo de produto
                        Container(
                          width: 500.0,
                          margin: EdgeInsets.all(5.0),
                          child: Column(
                      children: <Widget>[

                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                          "Código de Produto",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ),
                        Container(
                          height: 40.0,
                          width: 500.0,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                          child: Stack(
                              alignment: const Alignment(1.0, 1.0),
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Inserir código",
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(fontSize: 20.0),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      )),
                                ),
                              ]),
                        ),
//Quantidade

                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                          "Quantidade",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),),
                        Container(
                          height: 40.0,
                          width: 500.0,
                          child: Stack(
                              alignment: const Alignment(1.0, 1.0),
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Quantidade",
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(fontSize: 20.0),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      )),
                                ),
                              ]),
                        ),
                      ],
                    ),),
//Nome do produto
                    Container(
                      width: 700.0,
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                          "Nome do produto",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        )
                      ,
                        Container(
                          height: 40.0,
                          width: 700.0,
                          child: Stack(
                              alignment: const Alignment(1.0, 1.0),
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Couve Mineira",
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(fontSize: 20.0),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      )),
                                ),
                              ]),
                        ),
                        Row(children: <Widget>[
                          Container(
                            width: 300.0,
                            child: Column(
                              children: <Widget>[
                            
                            Align(
                              alignment: Alignment.topLeft,
                                child: Text(
                          "Qualidade",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),                              
                              )
                      ,
                        Container(
                          height: 40.0,
                          width: 300.0,
                          margin: EdgeInsets.all(1.0),
                          child: Stack(
                              alignment: const Alignment(1.0, 1.0),
                              children: <Widget>[
                               Container(
                                 width: 300.0,
                                 height: 35.0,
                                 
                                 decoration: BoxDecoration(

                                   color: Colors.white,
                                   border: Border.all(color: Colors.black),
                                 ),
                                 
                                 child:  DropdownButton(
                                  items: dropDown.map((String dropDownItem){
                                    return DropdownMenuItem(
                                      value: dropDownItem,
                                      child: Text(dropDownItem),
                                    );
                                  }).toList(),
                                  onChanged: (String valueSelected){
                                    setState(() {
                                     this.currentItemSelected = valueSelected;
                                    });
                                  },
                                  value: currentItemSelected,
                                  
                                ),)
                                // TextField(
                                //   decoration: InputDecoration(
                                //       hintText: "Ótima",
                                //       filled: true,
                                //       fillColor: Colors.white,
                                //       hintStyle: TextStyle(fontSize: 20.0),
                                //       border: OutlineInputBorder(
                                //         borderSide:
                                //             BorderSide(color: Colors.black),
                                //       )),
                                // ),
                              ]),
                        ),
                          ],),
                          ),
                          Column(children: <Widget>[
                            
                             
                            
                             Container(
                          width: 300.0,

                          margin: EdgeInsets.fromLTRB(25.0,23.0,0.0,0.0 ),
                          child:
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.green,
                            child: Text("Adicionar"),
                          )
                           ,)

                          ],)
                         


                        ],)
                    ],

                    ),
                    )

                    ],)

                  ),
                ),

              ],
            ),

// Terceira linha linha
            Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.71,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  color: Colors.white,
                  child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: rederizateTable('codProduto'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: rederizateTable('nomeProduto'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: rederizateTable('qualidade'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: rederizateTable('codForn'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
