import 'package:ender/home.dart';
import 'package:ender/pages/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gateman extends StatefulWidget {
  const Gateman({super.key});

  @override
  State<Gateman> createState() => _GatemanState();
}

class _GatemanState extends State<Gateman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return Home(); // Good to go
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong!'));
            } else {
              return const SignIn(); // Not unshabby pal
            }
          })),
    );
    // return Home();
  }
}
