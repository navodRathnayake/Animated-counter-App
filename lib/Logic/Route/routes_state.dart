part of 'routes_bloc.dart';

class RouteState extends Equatable {
  final RouteStatus status;

  const RouteState._({
    this.status = RouteStatus.initial,
  });

  const RouteState.initial() : this._();
  const RouteState.logged() : this._(status: RouteStatus.logged);

  @override
  List<Object?> get props => [status];
}
