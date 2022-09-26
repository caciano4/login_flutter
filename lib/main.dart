import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                child:
                Column(children:
                <Widget>[
                  Container(
                      height: 360,
                      decoration:
                      BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/background.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Stack(
                        children: [
                          //light- 1
                          Positioned(
                              left: 30,
                              width: 80,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/light-1.png')
                                    )),)),
                          //ligh-2
                          Positioned(
                              top: -30,
                              left: 170,
                              width: 80,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/light-2.png')
                                    )),)),
                          //clock
                          Positioned(
                              top: -20,
                              right: 35,
                              width: 80,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/clock.png')
                                    )),)
                              ),
                          Positioned(child: Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(child: Text("Login", style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoMono'
                            ),
                            )),
                          ))
                        ],
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      blurRadius: 20.0,
                                      offset: Offset(11, 5)

                                  )

                                ]
                            ),
                            child: Column(children: <Widget>[
                              Container(padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  246, 230, 229, 229)))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email ou Numer de telefone",
                                        hintStyle: TextStyle(
                                            color: Colors.grey[400])
                                    ),
                                  )
                              ),
                            ]),

                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      blurRadius: 20.0,
                                      offset: Offset(8, 15)

                                  )

                                ]
                            ),
                            child: Column(children: <Widget>[
                              Container(padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  246, 230, 229, 229)))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Senha",
                                        hintStyle: TextStyle(
                                            color: Colors.grey[400])
                                    ),
                                  )
                              ),
                            ]),

                          ),
                          SizedBox(height: 30),
                          Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(143, 166, 70, 255),
                                    Color.fromARGB(143, 219, 174, 255)
                                  ])
                              ),
                              child: Center(
                                child: Text("Login", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),)
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Center(child: Text(
                              "Esqueceu sua senha?", style: TextStyle(
                                color: Color.fromARGB(255, 94, 1, 110),
                                decoration: TextDecoration.underline),)),
                          )
                        ],
                      )

                  )
                ])
            )
        ));
  }
}
