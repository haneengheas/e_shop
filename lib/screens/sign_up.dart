import 'package:e_shop/widgets/appBar.dart';
import 'package:e_shop/widgets/checkBox.dart';
import 'package:e_shop/widgets/logo.dart';
import 'package:e_shop/widgets/sign_in_with_application.dart';
import 'package:e_shop/widgets/submit.dart';
import 'package:e_shop/widgets/textField.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          appBar(context,title: 'Sign Up'),
          SizedBox(height: 10,),
          logo(),
          SizedBox(height: 15,),
          signin(context),
          textField(labelText: 'Email', hinttext: 'example@gmail.com'),
          textField(labelText: 'User Name', hinttext: 'AhmedMohamed'),
          textField(labelText: 'Password', hinttext: 'Password'),
          Check(),
          submit(context,text: 'Sign Up'),

        ],
      ),
    );
  }
}
