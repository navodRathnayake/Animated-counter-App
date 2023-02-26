import 'package:animated_counter_app/Logic/Counter/View/counter_view.dart';
import 'package:animated_counter_app/Logic/Route/routes_bloc.dart';
import 'package:animated_counter_app/Logic/Theme%20Mode/theme_mode_cubit.dart';
import 'package:animated_counter_app/Routes/routes.dart';
import 'package:animated_counter_app/Splash/Repository/splash_stream.dart';
import 'package:animated_counter_app/Splash/View/splash.dart';
import 'package:animated_counter_app/Theme/Dark%20Theme/dark_theme.dart';
import 'package:animated_counter_app/Theme/Light%20Theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final RoutesRepository repository;
  const App({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: repository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RoutesBloc>(
              create: (_) => RoutesBloc(repository: repository)),
          BlocProvider<ThemeModeCubit>(create: (_) => ThemeModeCubit())
        ],
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});

  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (context, state) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: LightTheme.value,
          themeMode: state.isLightMode ? ThemeMode.light : ThemeMode.dark,
          darkTheme: DarkTheme.value,
          builder: (context, child) {
            return BlocListener<RoutesBloc, RouteState>(
              listener: (context, state) {
                if (state.status == RouteStatus.logged) {
                  _navigator.pushAndRemoveUntil<void>(
                      CounterView.route(), (route) => false);
                }
                if (state.status == RouteStatus.initial) {
                  _navigator.pushAndRemoveUntil(
                      Splash.route(), (route) => false);
                }
              },
              child: child,
            );
          },
          onGenerateRoute: Routes.onGeneratedRoutes,
          home: const CounterView(),
        );
      },
    );
  }
}
