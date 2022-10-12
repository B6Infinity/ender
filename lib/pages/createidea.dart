import 'package:ender/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateIdea extends StatefulWidget {
  const CreateIdea({super.key});

  @override
  State<CreateIdea> createState() => _CreateIdeaState();
}

class _CreateIdeaState extends State<CreateIdea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create an Idea'),
        ),
        body: Column(children: []),
      ),
    );
  }
}
