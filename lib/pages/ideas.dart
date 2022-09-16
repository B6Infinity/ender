import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ideas extends StatefulWidget {
  const Ideas({super.key});

  @override
  State<Ideas> createState() => _IdeasState();
}

class _IdeasState extends State<Ideas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [Text("IDEAS LOL Abg Ff")]),
      // https://youtu.be/uHiTO1dfjUI?t=837
    );
  }
}
