import 'package:e_shop/widgets/appBar.dart';
import 'package:e_shop/widgets/profileAppBar.dart';
import 'package:e_shop/widgets/submit.dart';
import 'package:e_shop/widgets/textField.dart';
import 'package:flutter/material.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar:
      body: ListView(
        children: [
          appBarProfile(title: 'Add Card'),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card No',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 7.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '95862048',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    // suffixIcon: ImageIcon(AssetImage('assets/credit-card (1).png'),
                    //     color:  Color(0xFFfc6601),
                    //    size: .5,
                    // ),
                    suffixIcon: Icon(
                      Icons.credit_card_sharp,
                      color: Color(0xFFfc6601),
                    ),
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
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 2 ,
                  child: textField(
                      labelText: 'Expire Date', hinttext: '2/10/2025')),
              Container(
                  width: MediaQuery.of(context).size.width / 2 ,
                  child: textField(
                      labelText: 'Expire Date', hinttext: '2/10/2025')),
            ],
          ),
          SizedBox(height: 30),
          submit(context, text: 'Add to Card'),
        ],
      ),
    );
  }
}
