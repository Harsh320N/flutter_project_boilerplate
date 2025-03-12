import 'package:flutter_project_boilerplate/res/routes/route_name.dart';
import 'package:flutter_project_boilerplate/res/widgets/text_styles.dart';
import 'package:flutter_project_boilerplate/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: labels(
                text: "Route Not found",
              ),
            ),
          ),
        );
    }
  }
}
