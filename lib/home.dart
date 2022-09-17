// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ender/pages/ideas.dart';
import 'package:ender/pages/messages.dart';
import 'package:ender/pages/profile.dart';
import 'package:ender/pages/search.dart';
import 'package:ender/pages/settings.dart';
import 'package:ender/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.lightbulb,
            color: Colors.white,
          ),
          Icon(
            Icons.message,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
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

// ListTile Se
Widget heading1(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0, bottom: 24, left: 10),
    child: Text(
      text,
      style: GoogleFonts.firaSans(
        color: primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget heading2(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0, bottom: 24, left: 10),
    child: Text(
      text,
      style: GoogleFonts.firaSans(
        color: primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
