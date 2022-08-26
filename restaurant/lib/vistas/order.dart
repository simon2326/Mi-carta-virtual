import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant/widgets/widgets.dart';

class Order extends StatelessWidget {
  Order({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: screenH * 0.9,
          width: screenW * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFEEF0D3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              titulo("Tu pedido", 30),
              Image(
                image: AssetImage("assets/order.png"),
                width: 165,
              ),
              Spacer(flex: 1),
              subtitulo(
                  "Estos son los productos\n que has seleccionado anteriormente",
                  15),
              Spacer(flex: 1),
              titulo("Producto 1", 15),
              SizedBox(
                width: screenW * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Producto 1",
                  ),
                ),
              ),
              titulo("Producto 2", 15),
              SizedBox(
                width: screenW * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Producto 2",
                  ),
                ),
              ),
              //titulo(".\n.\n.", 15),
              titulo("Producto n", 15),
              SizedBox(
                width: screenW * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Producto n",
                  ),
                ),
              ),
              Spacer(flex: 1),

              Button(() {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: titulo("Pedido pagado con éxito", 20)));
              }, Colors.transparent, "Confirmar pedido y pagar", screenW * 0.6,
                  30),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
