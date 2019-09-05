import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'TelaConsulta.dart';
import 'TelaLancamento.dart';

class inicio extends StatefulWidget {
  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/valle3.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Column(children: <Widget>[
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Consulta();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.fromLTRB(70.0, 200.0, 50.0, 0.0),
                  height: ScreenUtil.instance.setWidth(350.0),
                  width: ScreenUtil.instance.setWidth(350.0),
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Image.asset(
                    "images/newspaper-folded.png",
                  ),
                ),
              ),
              Text("Relatório do dia",
              style: TextStyle(color: Colors.green[100], fontSize: 45.0),
              )
              ],
              ),
              Column(children: <Widget>[
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Lancamento();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 0.0),
                  height: ScreenUtil.instance.setWidth(350.0),
                  width: ScreenUtil.instance.setWidth(350.0),
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Image.asset("images/clipboard.png"),
                ),
              ),
              Text("Nova entrada",
              style: TextStyle(color: Colors.green[100], fontSize: 45.0),
              )
              ],)
            ],
          )
        ],
      ),
    );
  }
}