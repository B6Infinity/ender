import 'dart:ffi';

import 'package:ender/home.dart';
import 'package:ender/providers/theme_provider.dart';
import 'package:ender/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

// GLOBAL CONSTANTS
String useTheme = 'Device Theme'; // 'Device Theme' 'Light Mode' 'Dark Mode'
//
//

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

//
//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      builder: ((context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: lightTheme,
          darkTheme: darkTheme,
          // ignore: prefer_const_constructors
          home: Home(),
        );
      }),
    );
  }
}
