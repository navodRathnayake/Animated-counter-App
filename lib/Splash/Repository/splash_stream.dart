library splash_stream;

import 'dart:async';

enum RouteStatus { initial, logged }

class RoutesRepository {
  final _controller = StreamController<RouteStatus>();
  Stream<RouteStatus> get status async* {
    yield RouteStatus.initial;
    await Future.delayed(const Duration(seconds: 10));
    yield RouteStatus.logged;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}
