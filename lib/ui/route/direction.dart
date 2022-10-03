import 'package:flutter/material.dart';
import 'package:testapp/ui/route/dir.dart';
import 'package:testapp/ui/view/list/list_screen.dart';

import '../view/home/home_screen.dart';

class Direction {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Dir.list:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ListScreen());

      case Dir.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
