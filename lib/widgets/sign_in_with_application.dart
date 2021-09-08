import 'dart:ui';

import 'package:flutter/material.dart';

Widget signin(BuildContext context) {
  return Row(
    children: [
      Container(
        width: MediaQuery.of(context).size.width / 2 -20,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 10, ),
       padding: EdgeInsets.symmetric(horizontal: 50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(2.5),
        ),
        child: Row(

          children: [
            ImageIcon(
              AssetImage(
                'assets/google.png',
              ),
              color: Colors.white,
              size: 15,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Goolge',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 2 -20,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(2.5),
        ),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(
                'assets/facebook.png',
              ),
              color: Colors.white,
              size: 15,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Facebook',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),

    ],
  );
}
