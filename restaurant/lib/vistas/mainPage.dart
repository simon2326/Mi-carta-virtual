import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/vistas/loginPage.dart';
import 'package:restaurant/vistas/menu.dart';
import 'package:restaurant/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF008280),
      body: Center(
        child: Container(
          width: screenW * 0.9,
          height: screenH * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            titulo("Nuestros servicios", 30),
            subtitulo("Our services", 25),
            texto("IFOOD"),
            ImgButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Menu();
                  },
                ),
              );
            }, "assets/menu.png", 150),
            titulo("Carta virtual", 25),
            Spacer(flex: 1),
            ImgButton(() {}, "assets/reserva.png", 140),
            titulo("Reservar", 25),
            Spacer(flex: 1),
            ImgButton(() {}, "assets/sedes.png", 180),
            titulo("Nuestras sedes", 25),
          ]),
        ),
      ),
    );
  }
}
