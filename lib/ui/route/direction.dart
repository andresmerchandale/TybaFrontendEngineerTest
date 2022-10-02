import 'package:flutter/material.dart';
import 'package:testapp/ui/route/dir.dart';

class Direction {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /*case Dir.list:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardScreen());

      case Dir.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      */
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
