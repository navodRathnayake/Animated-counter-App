library counter_view;

import 'package:animated_counter_app/Logic/Theme%20Mode/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: Column(
            children: [
              BlocBuilder<ThemeModeCubit, ThemeModeState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      state.isLightMode
                          ? const Icon(Icons.light_mode_outlined)
                          : const Icon(Icons.dark_mode_outlined),
                      Switch(
                          value:
                              context.read<ThemeModeCubit>().state.isLightMode,
                          onChanged: BlocProvider.of<ThemeModeCubit>(context,
                                  listen: false)
                              .toggleSwitchChanged)
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
