import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool checkvalue=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: checkvalue, onChanged: (newValue){
          setState((){
            checkvalue= newValue!;
          });
        }),
        Text('Terms and conditions',style: TextStyle(
          fontWeight: FontWeight.w600
        ),)
      ],
    );
  }
}
