import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/res/widgets/widget_export.dart';
import 'package:flutter_project_boilerplate/utils/screen_utils.dart';

class SplashScreen extends StatefulWidget {
  static const String splashScreen = "/";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {});
  }

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: labels(
              text: "Splash Screen",
              color: Theme.of(context).iconTheme.color!,
              size: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
