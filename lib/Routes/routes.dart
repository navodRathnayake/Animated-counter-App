library routes;

import 'package:animated_counter_app/Counter%20Logic/Presentation/counter_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = '/';

  static Route onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const CounterView());
      default:
        throw Exception();
    }
  }
}
