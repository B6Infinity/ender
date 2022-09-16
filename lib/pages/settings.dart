import 'package:ender/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(child: heading1('Settings')),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            // heading1('Settings'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
