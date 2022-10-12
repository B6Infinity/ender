import 'package:ender/home.dart';
import 'package:ender/pages/createidea.dart';
import 'package:ender/theme/theme_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // heading1('Ideas', padding: const EdgeInsets.all(8)),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    child: const Text('My Ideas'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: IconButton(
                  color: Colors.transparent,
                  iconSize: 60,
                  icon: const Icon(
                    Icons.add,
                    color: primaryColor,
                    size: 30,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return CreateIdea();
                        }),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [],
            ),
          ),
        ],
      ),
      // https://youtu.be/uHiTO1dfjUI?t=837
    );
  }
}
