import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/widgets/widgets.dart';
import 'package:flutter/src/painting/box_shadow.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(50, 50)),
              color: Color(0xFF007A78),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 55,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 64, left: 15, child: titulo("MI CARTA VIRTUAL", 45)),
              ],
            ),
          ),
          SizedBox(
            height: screenH * 0.02,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/hamburguesa.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 206,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Hamburguesa", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Hamburguesa con dos carnes de\n res de 50gr, tocineta, queso \ncheddar, cebolla, salsa de\n tomate y mostaza.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$16.000", 16),
                                Spacer(flex: 1),
                                Button2(() {}, Color(0xFF007A78), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/hamburguesa.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 206,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Hamburguesa", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Hamburguesa con dos carnes de\n res de 50gr, tocineta, queso \ncheddar, cebolla, salsa de\n tomate y mostaza.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$16.000", 16),
                                Spacer(flex: 1),
                                Button2(() {}, Color(0xFF007A78), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/hamburguesa.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 206,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Hamburguesa", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Hamburguesa con dos carnes de\n res de 50gr, tocineta, queso \ncheddar, cebolla, salsa de\n tomate y mostaza.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$16.000", 16),
                                Spacer(flex: 1),
                                Button2(() {}, Color(0xFF007A78), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenH * 0.1,
            child: Row(
              children: [
                Column(
                  children: [
                    titulo("Productos", 10),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
