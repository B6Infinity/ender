import 'package:ender/home.dart';
import 'package:ender/theme/theme_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading1('Sign In'),
            TextField(
              decoration: generateInputDecoration('E-Mail'),
              controller: emailController,
              cursorColor: primaryColorLight,
            ),
            const Padding(
              padding: EdgeInsets.all(5),
            ),
            TextField(
              decoration: generateInputDecoration('Password'),
              controller: passwordController,
              obscureText: true,
              cursorColor: primaryColorLight,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signInUser,
              child: const Text('Sign In'),
            ),
          ],
        )),
      ),
    );
  }

  Future signInUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e); //https://youtu.be/4vKiJZNPhss?t=380
    }
  }
}
