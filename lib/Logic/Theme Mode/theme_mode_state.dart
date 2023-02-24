part of 'theme_mode_cubit.dart';

class ThemeModeState extends Equatable {
  bool isLightMode;

  ThemeModeState._({
    this.isLightMode = true,
  });
  ThemeModeState.lightMode() : this._();
  ThemeModeState.darkMode() : this._(isLightMode: false);
  @override
  List<Object?> get props => [isLightMode];
}
