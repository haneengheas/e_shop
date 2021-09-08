import 'package:flutter/material.dart';

Widget logo(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Color(0xFFfc6601),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                //   offset: Offset(1, 1),
                blurRadius: 5,
                color: Color(0xFFfc6601),
              ),
            ]),
        child: Center(
          child: ImageIcon(
            AssetImage('assets/shopping-cart.png'),
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'E-',
                style: TextStyle(
                    color: Color(0xFFfc6601),
                    // fontWeight: FontWeight.bold,
                    fontSize: 25,
                    shadows: [
                      BoxShadow(color: Color(0xFFfc6601), blurRadius: 1.5)
                    ])),
            TextSpan(
                text: 'Shop',
                style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ]))
    ],
  );
}