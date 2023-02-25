library splash_stream;

import 'dart:async';

enum RouteStatus { initial, logged }

class RoutesRepository {
  final _controller = StreamController<RouteStatus>();
  Stream<RouteStatus> get status async* {
    await Future.delayed(const Duration(seconds: 60));
    yield RouteStatus.logged;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}
