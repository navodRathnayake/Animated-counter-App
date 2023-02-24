library counter_view;

import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const CounterView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
