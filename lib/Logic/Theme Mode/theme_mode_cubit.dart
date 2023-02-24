import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(ThemeModeState.lightMode());

  void toggleSwitchChanged(bool isOn) {
    switch (isOn) {
      case true:
        emit(ThemeModeState.lightMode());
        debugPrint('Light mode has activated');
        break;
      case false:
        emit(ThemeModeState.darkMode());
        debugPrint('dark mode has activated');
    }
  }
}
