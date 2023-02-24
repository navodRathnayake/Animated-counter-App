import 'dart:async';

import 'package:animated_counter_app/Splash/Repository/splash_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'routes_event.dart';
part 'routes_state.dart';

class RoutesBloc extends Bloc<RoutesEvent, RouteState> {
  final RoutesRepository repository;
  late final StreamSubscription<RouteStatus> _routeSubscription;
  RoutesBloc({
    required this.repository,
  }) : super(const RouteState.initial()) {
    on<_RoutesChanged>(_onRoutesChanged);
    _routeSubscription = repository.status.listen((event) {
      add(_RoutesChanged(status: event));
    });
  }
  Future<void> _onRoutesChanged(
    _RoutesChanged event,
    Emitter<RouteState> state,
  ) async {
    switch (event.status) {
      case RouteStatus.initial:
        return emit(const RouteState.initial());
      case RouteStatus.logged:
        return emit(const RouteState.logged());
    }
  }

  void dispose() => _routeSubscription.cancel();
}
