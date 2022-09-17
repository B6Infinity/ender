import 'package:ender/main.dart';
import 'package:ender/providers/theme_provider.dart';
import 'package:ender/theme/theme_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return GestureDetector(
      child: Row(
        children: [
          Text('$useTheme '),
          useTheme == 'Device Theme'
              ? const Icon(Icons.monitor)
              : (useTheme == 'Dark Mode'
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode)),
        ],
      ),
      onTap: () {
        setState(() {
          themeProvider.toggleTheme();
        });
      },
    );
  }
}
