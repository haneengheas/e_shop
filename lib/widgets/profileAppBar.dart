import 'package:flutter/material.dart';
Widget appBarProfile({ required String title}){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          radius: 20,
          child: Image(
            image: AssetImage('assets/h.jpeg'),
          ),
        ),
      ),
    ],
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back),
      color: Colors.black,
    ),
  );
}