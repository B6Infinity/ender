import 'dart:ffi';
import 'package:ender/Gateman.dart';
import 'package:firebase_core/firebase_core.dart';
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

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
          // Home if signed in, or SIgn In page
          home: Gateman(),
        );
      }),
    );
  }
}
