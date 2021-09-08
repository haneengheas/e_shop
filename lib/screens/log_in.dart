import 'package:e_shop/screens/sign_up.dart';
import 'package:e_shop/widgets/appBar.dart';
import 'package:e_shop/widgets/logo.dart';
import 'package:e_shop/widgets/sign_in_with_application.dart';
import 'package:e_shop/widgets/submit.dart';
import 'package:e_shop/widgets/textField.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          appBar(context, title: 'Log in'),
          SizedBox(
            height: 25,
          ),
          logo(),
          SizedBox(
            height: 25,
          ),
          signin(context),
          textField(labelText: 'Email', hinttext: 'example@gmail.com'),
          textField(labelText: 'Password', hinttext: 'Password'),
          SizedBox(
            height: 15,
          ),
          submit(context, text: 'Log in'),
          Center(
              child: Text(
            'Forget Password',
            style: TextStyle(fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(children: [
              Text('Do you have any Account? ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15)),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text('Sign up',
                    style: TextStyle(
                        color: Color(0xFFfc6601),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        shadows: [BoxShadow(blurRadius: 1)])),
              )
            ]),
          )
        ],
      ),
    );
  }
}
