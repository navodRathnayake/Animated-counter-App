library splash;

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const Splash(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
