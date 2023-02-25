part of 'theme_mode_cubit.dart';

class ThemeModeState extends Equatable {
  final bool isLightMode;

  const ThemeModeState({required this.isLightMode});
  const ThemeModeState._({
    this.isLightMode = true,
  });
  const ThemeModeState.lightMode() : this._();
  const ThemeModeState.darkMode() : this._(isLightMode: false);

  Map<String, dynamic> toMap() {
    return {
      'switchValue': isLightMode,
    };
  }

  factory ThemeModeState.fromMap(Map<String, dynamic> map) {
    return ThemeModeState(
      isLightMode: map['switchValue'] ?? false,
    );
  }

  @override
  List<Object?> get props => [isLightMode];
}
