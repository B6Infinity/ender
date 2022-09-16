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
      child: const Text("IDEAS LOL"),
    );
  }
}
