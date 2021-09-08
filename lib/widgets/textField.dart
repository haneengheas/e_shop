import 'package:flutter/material.dart';
Widget textField({required String labelText, required String hinttext}){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
        ),),
        SizedBox(
          height: 7.5,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hinttext,
            fillColor: Colors.grey.shade100,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade200,
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );

}