library counter_view;

import 'package:animated_counter_app/Logic/Counter/View/widgets/app_slider.dart';
import 'package:animated_counter_app/Logic/Theme%20Mode/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/simple_animations.dart';

import 'widgets/buble_animation.dart';
import 'widgets/flare_animation.dart';
import 'widgets/theme_toggle_switch.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const CounterView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: const [
              BubleAnimation(),
              FlareAnimation(),
              ThemeToggleSwitch(),
              AppSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
