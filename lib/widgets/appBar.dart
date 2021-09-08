import 'package:flutter/material.dart';
Widget appBar(BuildContext context, { required String title}) {
  return AppBar(
    title: Text(title,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      color: Colors.black
    ),),
    leading: IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon:Icon(Icons.arrow_back,size: 25,color: Colors.black,)),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,

  );
}
