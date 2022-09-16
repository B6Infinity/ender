// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ender/pages/ideas.dart';
import 'package:ender/pages/messages.dart';
import 'package:ender/pages/profile.dart';
import 'package:ender/pages/search.dart';
import 'package:ender/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pages = [
  Profile(),
  Search(),
  Ideas(),
  Messages(),
  Settings(),
];
int activepage = 2;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: pages[activepage],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.person),
          Icon(Icons.search),
          Icon(Icons.lightbulb),
          Icon(Icons.message),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          //Handle button tap
          //
          // print(index);
          setState(() {
            activepage = index;
          });
        },
        // THEME STUFF
        buttonBackgroundColor: Theme.of(context).primaryColorLight,
        color: Theme.of(context).primaryColor,
        animationDuration: Duration(milliseconds: 200),
        height: 55,
        index: 2,
      ),
    );
  }
}
