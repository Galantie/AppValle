import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'inicio.dart';
//import 'package:http/http.dart' as http;
//import 'package:async/async.dart';
//import 'dart:convert';

Future main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MaterialApp(
    title: 'Valle',
    home: Login(),
  ));
}


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    final altura = MediaQuery.of(context).size.height;

    if (altura < 600) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'images/valle3.png',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.fromLTRB(ScreenUtil.instance.setWidth(200.0), ScreenUtil.instance.setWidth(200.0),ScreenUtil.instance.setWidth(200.0),ScreenUtil.instance.setWidth(20.0)),
                    //padding: EdgeInsets.all(ScreenUtil.instance.setWidth(50.0)),
                    color: Colors.black.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil.instance.setWidth(70.0),
                              ScreenUtil.instance.setWidth(50.0),
                              ScreenUtil.instance.setWidth(480.0),
                              ScreenUtil.instance.setWidth(0.0)),
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 7.0, color: Colors.green),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 50.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil.instance.setWidth(200.0),
                              ScreenUtil.instance.setWidth(0.0),
                              ScreenUtil.instance.setWidth(200.0),
                              ScreenUtil.instance.setWidth(20.0)),
                          padding: EdgeInsets.all(
                              ScreenUtil.instance.setWidth(50.0)),
                          child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 27.0,
                                      ),
                                      labelText: 'Usuario',
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 23.0),
                                    ),
                                    style: TextStyle(color: Colors.white),
                                    controller: login,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Insira seu login por favor";
                                      } else if (value.length > 10) {
                                        return "Este campo suporta até 10 digitos";
                                      }
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23.0,
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.white),
                                    obscureText: true,
                                    controller: senha,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        String aviso =
                                            "Insira sua senha por favor";
                                        return aviso;
                                      } else if (value.length > 10) {
                                        return "Este campo suporta até 10 digitos";
                                      }
                                    },
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 10.0),
                                      child: SizedBox(
                                          width: 320.0,
                                          height: 30.0,
                                          child: RaisedButton(
                                            onPressed: () {
                                              if (_formKey.currentState
                                                  .validate()) {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return inicio();
                                                }));
                                              } else
                                                return "deu erro";
                                            },
                                            child: Text(
                                              'Entrar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25.0),
                                            ),
                                            color: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.white)),
                                          )))
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else
      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'images/valle3.png',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.fromLTRB(ScreenUtil.instance.setWidth(200.0), ScreenUtil.instance.setWidth(200.0),ScreenUtil.instance.setWidth(200.0),ScreenUtil.instance.setWidth(20.0)),
                    //padding: EdgeInsets.all(ScreenUtil.instance.setWidth(50.0)),
                    color: Colors.black.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil.instance.setWidth(0.0),
                              ScreenUtil.instance.setWidth(200.0),
                              ScreenUtil.instance.setWidth(480.0),
                              ScreenUtil.instance.setWidth(0.0)),
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 7.0, color: Colors.green),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 50.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil.instance.setWidth(200.0),
                              ScreenUtil.instance.setWidth(0.0),
                              ScreenUtil.instance.setWidth(220.0),
                              ScreenUtil.instance.setWidth(20.0)),
                          padding: EdgeInsets.all(
                              ScreenUtil.instance.setWidth(50.0)),
                          child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 27.0,
                                      ),
                                      labelText: 'Usuario',
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 23.0),
                                    ),
                                    style: TextStyle(color: Colors.white),
                                    controller: login,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Insira seu login por favor";
                                      } else if (value.length > 10) {
                                        return "Este campo permite apenas 10 digitos";
                                      }
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23.0,
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.white),
                                    obscureText: true,
                                    controller: senha,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        String aviso =
                                            "Insira sua senha por favor";
                                        return aviso;
                                      } else if (value.length > 10) {
                                        return "Este campo permite apenas 10 digitos";
                                      }
                                    },
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: SizedBox(
                                        width: 600.0,
                                        height: 30.0,
                                        child: RaisedButton(
                                          onPressed: () {
                                            if (_formKey.currentState
                                                .validate()) {
                                              if (_formKey.currentState
                                                  .validate()) {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return inicio();
                                                }));
                                              } else
                                                return "deu erro";
                                            }
                                          },
                                          child: Text(
                                            'Entrar',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25.0),
                                          ),
                                          color: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.white)),
                                        )),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
  }
}

