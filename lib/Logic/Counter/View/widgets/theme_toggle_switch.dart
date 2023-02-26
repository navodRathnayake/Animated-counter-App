library theme_toggle_switch;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Theme Mode/theme_mode_cubit.dart';

class ThemeToggleSwitch extends StatelessWidget {
  const ThemeToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            state.isLightMode
                ? const Icon(Icons.light_mode_outlined)
                : const Icon(Icons.dark_mode_outlined),
            Switch(
                value: context.read<ThemeModeCubit>().state.isLightMode,
                onChanged:
                    BlocProvider.of<ThemeModeCubit>(context, listen: false)
                        .toggleSwitchChanged)
          ],
        );
      },
    );
  }
}
