import 'package:e_shop/screens/navigation.dart';
import 'package:flutter/material.dart';
Widget submit(BuildContext context,{required String text}){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationScreen() ));
    },
    child: Container(
      width: MediaQuery.of(context).size.width-50,
      height: 50,
      margin: EdgeInsets.only(left: 12.5,right: 12.5,bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        color:  Color(0xFFfc6601),
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16.8
        ),),
      ),
    ),
  );
}