import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/widgets/widgets.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(50, 50)),
              color: Color(0xFF007A78),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 90,
                  left: 0,
                  child: Container(
                    height: 80,
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
                    top: 101, left: 15, child: titulo("MI CARTA VIRTUAL", 45)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
