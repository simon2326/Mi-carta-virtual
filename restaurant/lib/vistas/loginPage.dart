import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/vistas/mainPage.dart';
import 'package:restaurant/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: screenW * 0.95,
        height: screenH * 0.95,
        decoration: BoxDecoration(
          color: Color(0xFFEEF0D3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Spacer(flex: 1),
          titulo("IFOOD", 50),
          const Image(image: AssetImage("assets/login.png"), width: 180),
          Spacer(flex: 1),
          subtitulo("¡INICIA SESIÓN!", 30),
          texto("Sign in!"),
          SizedBox(
            width: screenW * 0.6,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Usuario",
              ),
            ),
          ),
          SizedBox(
            width: screenW * 0.6,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Contraseña",
              ),
            ),
          ),
          Spacer(flex: 1),
          Button(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainPage();
                },
              ),
            );
          }, Color(0xFFE3E0D2), "Ir al restaurante", screenW * 0.6, 50),
          Spacer(flex: 2),
          texto("¿No tienes una cuenta?"),
          Button2(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainPage(); //Crear vista para registrarse
                },
              ),
            );
          }, Color(0xFFE3E0D2), "Registrate aquí")
        ]),
      ),
    );
  }
}
