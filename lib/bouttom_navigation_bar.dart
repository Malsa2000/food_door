import 'package:flutter/material.dart';
import 'package:food_door/catograes/all_catorgries.dart';
import 'package:food_door/catograes/favorit.dart';
import 'package:food_door/controller_helper.dart';
import 'package:food_door/setting.dart';

import 'Screen/home.dart';
import 'Screen/setting.dart';
import 'catograes/cart.dart';
import 'catograes/catograes.dart';

class NavigatorButtom extends StatefulWidget {
  const NavigatorButtom({Key? key}) : super(key: key);

  @override
  State<NavigatorButtom> createState() => _NavigatorButtomState();
}

class _NavigatorButtomState extends State<NavigatorButtom> {
  List<BnScreen> _screen = <BnScreen>[
    BnScreen(title: "home", widget: Home()),
     BnScreen(title: "Categories Screen", widget: Categories()),
     BnScreen(title: "Favorit", widget: Favorit()),
     BnScreen(title: "Setting", widget: Setting()),

  ];

  int _currentPaeg = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_screen[_currentPaeg].title),
      actions: [
        IconButton(icon :Icon( Icons.notification_add_sharp ),onPressed: (){
          Navigator.pushNamed(context, '/notfcation');
        },)
      ],),
       // extendBodyBehindAppBar: true,
        body: _screen[_currentPaeg].widget,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int cuttentPage) {
              setState(() => _currentPaeg = cuttentPage);
            },
            currentIndex: _currentPaeg,
            selectedIconTheme: IconThemeData(color: Color( context.greenColor) ),
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
            selectedItemColor: Color(context.greenColor),
            unselectedIconTheme: IconThemeData(color: Color( context.greenColor)),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w100, color: Colors.black45, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(Icons.home_outlined),
                  label: "Home",
                  backgroundColor: Color(context.wihteColor)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded),
                  activeIcon: Icon(Icons.shopping_cart_outlined),
                  label: "Cart",
                  backgroundColor: Color(context.wihteColor)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  activeIcon: Icon(Icons.favorite_border),
                  label: "Favorirt",
                  backgroundColor: Color(context.wihteColor)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  activeIcon: Icon(Icons.settings),
                  label: "Setting",
                  backgroundColor: Color(context.wihteColor)),
            ]),
    );
  }
}

class BnScreen {
  String title;
  Widget widget;

  BnScreen({required this.title,required this.widget});
}
