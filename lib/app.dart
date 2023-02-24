import 'package:animated_counter_app/Counter%20Logic/Presentation/counter_view.dart';
import 'package:animated_counter_app/Logic/Route/routes_bloc.dart';
import 'package:animated_counter_app/Routes/routes.dart';
import 'package:animated_counter_app/Splash/Repository/splash_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final RoutesRepository repository;
  const App({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: repository,
      child: BlocProvider(
        create: (_) => RoutesBloc(repository: repository),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return BlocListener<RoutesBloc, RouteState>(
          listener: (context, state) {
            if (state.status == RouteStatus.logged) {
              _navigator.pushAndRemoveUntil<void>(
                  CounterView.route(), (route) => false);
            }
          },
          child: child,
        );
      },
      onGenerateRoute: Routes.onGeneratedRoutes,
    );
  }
}
