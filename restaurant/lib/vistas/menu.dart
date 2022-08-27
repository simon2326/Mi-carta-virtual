import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/vistas/order.dart';
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
            height: 120,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(50, 50)),
              color: Color(0xFF007A78),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: 320,
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
                    top: 20, left: 10, child: titulo("MI CARTA VIRTUAL", 45)),
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
                          left: 210,
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
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Hamburguesa añadida al carrito",
                                              20)));
                                }, Color(0xFF007A78), "Añadir")
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
                                  image: AssetImage("perro.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 215,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Perro Caliente", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Perro caliente con doble queso \namericano, ensalada gourmet de campo\n y otras verduras,\n salsas al gusto.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$13.250", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Perro caliente añadid0 al carrito",
                                              20)));
                                }, Color(0xFF007A78), "Añadir")
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
                                  image: AssetImage("salchipapas.jpg"),
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
                                titulo("Salchipapas", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Salchipapas de 250 gr, extra grande\n salchicha de res, tocineta, queso \ncheddar, cebolla, salsa de\n tomate y mostaza.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$15.750", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Slachipapas añadidas al carrito",
                                              20)));
                                }, Color(0xFF007A78), "Añadir")
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
                                  image: AssetImage("chuzo.jpg"),
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
                                titulo("Chuzo", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Chuzo de res gourmet \n  de 550 gr, tocineta, queso \ncheddar, arepa grande, salsa\n bbq y ensalada.",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$23.350", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Chuzo añadido al carrito", 20)));
                                }, Color(0xFF007A78), "Añadir")
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
                Spacer(flex: 1),
                Column(
                  children: [
                    titulo("Productos", 15),
                    subtitulo("producto 1", 10),
                    subtitulo("producto 3", 10),
                    subtitulo("producto 3", 10),
                  ],
                ),
                Spacer(flex: 2),
                Column(
                  children: [titulo("Costo", 20), subtitulo(r"280.000$", 15)],
                ),
                Spacer(flex: 2),
                Column(
                  children: [
                    Spacer(flex: 1),
                    Button(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Order();
                        },
                      ));
                    }, Colors.greenAccent, "Ver\n pedido", 100, 50),
                    Spacer(flex: 1),
                  ],
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: titulo("CARTA VIRTUAL", 20),
          backgroundColor: Color(0xFFF007A78),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            onPressed: () => Navigator.pop(context, true),
          ),
        ),
      ),
    );
  }
}
