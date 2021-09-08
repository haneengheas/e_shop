import 'package:e_shop/screens/favorite.dart';
import 'package:e_shop/screens/home.dart';
import 'package:e_shop/screens/profile.dart';
import 'package:e_shop/screens/scanner.dart';
import 'package:e_shop/screens/search.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex = 0;
  List <Widget> pages=[
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 5,
        child: BottomNavigationBar(
          currentIndex: pageindex,
          onTap: ( value){
            setState(() {
              pageindex=value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(
                AssetImage('assets/home.png'),
                color: pageindex == 0 ? Color(0xFFfc6601) : Colors.black,
                ), label: ''),
            BottomNavigationBarItem(icon:  ImageIcon(
              AssetImage('assets/search.png'),
              color: pageindex == 1 ? Color(0xFFfc6601) : Colors.black,
              ), label: ''),
            BottomNavigationBarItem(icon:ImageIcon(
                AssetImage('assets/heart.png'),
                color: pageindex == 2 ? Color(0xFFfc6601) : Colors.black,
                ), label: ''),
            BottomNavigationBarItem(icon:  ImageIcon(
                AssetImage('assets/user.png'),
                color: pageindex == 3 ? Color(0xFFfc6601) : Colors.black,
                ), label: ''),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFfc6601),
        elevation: 5,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScannerScreen()));
        },
        child: ImageIcon(
          AssetImage('assets/scanner.png'),
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
