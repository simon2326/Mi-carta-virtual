import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reserva extends StatelessWidget {
  Reserva({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;
  List<String> iitems = [
    'Poblado',
    'Llano Grande',
    'Laureles',
    'San Cristobal'
  ];
  String? selectedItem = 'Poblado';

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
          child: Column(children: []),
        ),
      ),
    );
  }
}
