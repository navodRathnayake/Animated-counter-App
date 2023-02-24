library splash_stream;

import 'dart:async';

enum RouteStatus { initial, logged }

class RoutesRepository {
  final _controller = StreamController<RouteStatus>();
  Stream<RouteStatus> get status async* {
    await Future.delayed(const Duration(seconds: 3));
    yield RouteStatus.logged;
    yield* _controller.stream;
  }

  Future<void> logIn() async {
    await Future.delayed(const Duration(seconds: 3), () {
      _controller.add(RouteStatus.logged);
    });
  }

  void dispose() => _controller.close();
}
