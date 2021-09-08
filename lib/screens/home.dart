import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
              ],
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/edit.png'),
                  color: Colors.blue,
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Eidt',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  child: Image(image: AssetImage('assets/h.jpeg')),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Eman Ahmed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 20,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orangeAccent.shade100,
                      ),
                      child: Center(
                        child: Text(
                          'data',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/2+100,
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage('assets/home.png'),size: 20,),
                        SizedBox(width: 15,),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      height: 3,
                      thickness: 1,
                      indent: 5,
                      endIndent: 10,
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
